#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <ctype.h>
#include <stdlib.h>
#include <dirent.h>
#include <unistd.h>
#include <stdarg.h>
#include <sys/stat.h>

#include <pcre.h>

#include "fmti.h"
#include "fmti_lib.h"

#if 0
#define DEBUGP printf
#else
#define DEBUGP(format, args...)
#endif

#define OVECCOUNT 30    /* should be a multiple of 3 */

static void fmti_free_all_lib(FMTI_LIB *lib);
static void fmti_free_one_lib(FMTI_LIB *lib);
static int _is_id_in_lib(FMTI_S *fmti, uint32_t id);

//static FMTI_S *g_fmti = NULL;

FMTI_S *fmti_init()
{
    //TODO:
    FMTI_S *fmti = NULL;
    
    DEBUGP("fmti_init\n");
    
    fmti = (FMTI_S *)malloc(sizeof(FMTI_S));
    if(NULL == fmti)
        return NULL;
    memset(fmti, 0, sizeof(FMTI_S));
    
    DEBUGP("fmti_init success\n");
    return fmti;
}

static int _is_id_in_lib(FMTI_S *fmti, uint32_t id)
{
    //DONE
    FMTI_LIB *fmti_lib;
    
    if(fmti == NULL)
        return 0;
    
    for(fmti_lib = fmti->lib; NULL != fmti_lib; fmti_lib = fmti_lib->next)
    {
        if(id == fmti_lib->id)
            return 1;
    }
    
    return 0;
}

int fmti_load_lib(FMTI_S *fmti, char *path)
{
    int ret = FMTI_OK;

    char tmp_path[1024];
    struct dirent *filename;
    DIR *dir;
    struct stat s;
    
    DEBUGP("fmti_load_lib: %s\n", path);
    
    FMTI_CHECK_NULL_POINTER(fmti);
    lstat(path, &s);
    
    if(!S_ISDIR(s.st_mode))
    {
        ret = fmti_load_lib2(fmti, path);
        if(FMTI_OK != ret)
            DEBUGP("fmti_load_lib2 %s fail, retcode %d\n", path, ret);
    }
    else
    {
        dir = opendir(path);
        if(dir == NULL)
        {
            DEBUGP("open dir %s error!\n", path);
            return FMTI_INVALID_LIB_PATH;
        }
        
        while((filename = readdir(dir)) != NULL)
        {
            if(!strcmp(filename->d_name, ".")||!strcmp(filename->d_name, ".."))
                continue;
        
            sprintf(tmp_path, "%s/%s", path, filename->d_name);
        
            lstat(tmp_path, &s);
        
            if(S_ISDIR(s.st_mode))
                continue;
            else
            {
                ret = fmti_load_lib2(fmti, tmp_path);
                if(FMTI_OK != ret)
                    DEBUGP("fmti_load_lib2 %s fail, retcode %d\n", tmp_path, ret);
            }
        }
        closedir(dir);
    }
    
    return ret;
}

int fmti_load_lib2(FMTI_S *fmti, char *path)
{
    //DOING:
    int ret = FMTI_OK;
    const char *error = NULL;
    int err_offset;
    FILE *fp = NULL;
        
    uint8_t buff[FMTI_LINE_MAX_LEN];
    size_t buff_len = 0;
    size_t offset = 0;

    uint8_t *str_buf = NULL;
    size_t str_len;

    FMTI_LIB *new_lib = NULL;
    
    DEBUGP("fmti_load_lib2: %s\n", path);
    
    fmti_lib_sta status = FMTI_LIB_STA_NOT_BEGIN;
    
    FMTI_CHECK_NULL_POINTER(fmti);

    fp = fopen(path, "r");

    if(NULL == fp)
    {
        return FMTI_INVALID_LIB_PATH;
    }

    while(fgets(buff, FMTI_LINE_MAX_LEN, fp))
    {
        buff_len = strlen(buff);
        offset = 0;
        
        if(buff[offset] == '\r' || buff[offset] == '\n' || buff[offset] == '#')
            continue;
        
        /* offset start of line */
        for(offset = 0; offset < buff_len; offset++)
        {
            if(buff[offset] == ' ')
                continue;
            else
                break;
        }

        if(offset >= buff_len || buff[offset] != '[')
            continue;

        /* del the ' ', '\r', '\n'  end of line */
        for( ; buff_len > 0; buff_len--)
        {
            if(buff[buff_len - 1] == '\r' || buff[buff_len - 1] == '\n')
                buff[buff_len - 1] = '\0';
            else
                break;
        }

        if(strncmp(buff + offset, FMTI_TAG_BEGIN, FMTI_TAG_BEGIN_LEN) == 0)
        {
            /* process [begin] */
            if(status == FMTI_LIB_STA_NOT_BEGIN)
            {
                new_lib = (FMTI_LIB *)malloc(sizeof(FMTI_LIB));
                if(NULL == new_lib)
                {
                    fclose(fp);
                    return FMTI_MALLOC_FAIL;
                }
                memset(new_lib, 0, sizeof(FMTI_LIB));
                
                new_lib->priority = FMTI_DEF_RULE_PRIO;
                
                status = FMTI_LIB_STA_BEGIN;            
            }
        }
        else if(strncmp(buff + offset, FMTI_TAG_ID, FMTI_TAG_ID_LEN) == 0)
        {
            /* process [id] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_ID_LEN;
            
            uint32_t id = atoi(buff + offset);
            if(id == 0 || _is_id_in_lib(fmti, id))
            {
                DEBUGP("id %d is already in lib\n", id);
                fmti_free_one_lib(new_lib);
                new_lib = NULL;
                status = FMTI_LIB_STA_NOT_BEGIN;
                continue;
            }

            new_lib->id = id;
        }
        else if(strncmp(buff + offset, FMTI_TAG_PUID, FMTI_TAG_PUID_LEN) == 0)
        {
            /* process [puid] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_PUID_LEN;
            
            str_len = strlen(buff + offset);
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);
            
            new_lib->puid = str_buf;            
        }
        else if(strncmp(buff + offset, FMTI_TAG_NAME, FMTI_TAG_NAME_LEN) == 0)
        {
            /* process [name] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_NAME_LEN;

            str_len = strlen(buff + offset);
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);

            new_lib->name = str_buf;            
        }
        else if(strncmp(buff + offset, FMTI_TAG_MIME, FMTI_TAG_MIME_LEN) == 0)
        {
            /* process [mime] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_MIME_LEN;

            str_len = strlen(buff + offset);
            //mime may be not have one, so it may be cause memleak, have fixed it, only have one mime
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);

            new_lib->mime = str_buf;
        }
        else if(strncmp(buff + offset, FMTI_TAG_EXT, FMTI_TAG_EXT_LEN) == 0)
        {
            /* process[extension]*/
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_EXT_LEN;

            str_len = strlen(buff + offset);
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);

            new_lib->ext = str_buf;
        }
        else if(strncmp(buff + offset, FMTI_TAG_PRIO, FMTI_TAG_PRIO_LEN) == 0)
        {
            /* process [priority]*/
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_PRIO_LEN;
            
            uint32_t prio = atoi(buff + offset);
            if(prio != 0)
            {
                new_lib->priority = prio;
            }
        }
        else if(strncmp(buff + offset, FMTI_TAG_REG, FMTI_TAG_REG_LEN) == 0)
        {
            /* process [reg] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            REGX *tmp_reg = (REGX *)malloc(sizeof(REGX));
            if(NULL == tmp_reg)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            memset(tmp_reg, 0, sizeof(REGX));
            tmp_reg->next = new_lib->reg;
            new_lib->reg = tmp_reg;
        }
        else if(strncmp(buff + offset, FMTI_TAG_REGBOF, FMTI_TAG_REGBOF_LEN) == 0)
        {
            /* process [reg_bof] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_REGBOF_LEN;
            
            //reg_bof may be not have one, so it may be cause memleak, have fixed it, only have one bof and eof
            new_lib->reg->reg_bof = (SUB_REGX *)malloc(sizeof(SUB_REGX));
            if(NULL == new_lib->reg->reg_bof)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            memset(new_lib->reg->reg_bof, 0, sizeof(SUB_REGX));

            str_len = strlen(buff + offset);
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);
            new_lib->reg->reg_bof->reg = str_buf;
            
            new_lib->reg->reg_bof->re = pcre_compile(
                                    str_buf,                    /* the pattern */
                                    0,                          /* default options */
                                    &error,                   /* for error message */
                                    &err_offset,             /* for error offset */
                                    NULL);                      /* use default character tables */
            if(NULL == new_lib->reg->reg_bof->re)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                DEBUGP("[reg_bof]pcre_compile failed: %s\n", str_buf);
                return FMTI_MALLOC_FAIL;
            }            
        }
        else if(strncmp(buff + offset, FMTI_TAG_REGEOF, FMTI_TAG_REGEOF_LEN) == 0)
        {
            /* process [reg_eof] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_REGEOF_LEN;

            new_lib->reg->reg_eof = (SUB_REGX *)malloc(sizeof(SUB_REGX));
            if(NULL == new_lib->reg->reg_eof)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            memset(new_lib->reg->reg_eof, 0, sizeof(SUB_REGX));

            str_len = strlen(buff + offset);
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);
            new_lib->reg->reg_eof->reg = str_buf;
            
            new_lib->reg->reg_eof->re = pcre_compile(
                                    str_buf,                    /* the pattern */
                                    0,                          /* default options */
                                    &error,                   /* for error message */
                                    &err_offset,             /* for error offset */
                                    NULL);                      /* use default character tables */
            if(NULL == new_lib->reg->reg_eof->re)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                DEBUGP("[reg_eof]pcre_compile failed: %s\n", str_buf);
                return FMTI_MALLOC_FAIL;
            }            
        }
        else if(strncmp(buff + offset, FMTI_TAG_REGVAR, FMTI_TAG_REGVAR_LEN) == 0)
        {
            /* process [reg_var] */
            if(status == FMTI_LIB_STA_NOT_BEGIN || status == FMTI_LIB_STA_END)
                continue;
            offset += FMTI_TAG_REGVAR_LEN;

            uint32_t reg_var_num = new_lib->reg->reg_var_num;
            new_lib->reg->reg_var = (SUB_REGX *)realloc(new_lib->reg->reg_var, sizeof(SUB_REGX) * (reg_var_num + 1));
            if(NULL == new_lib->reg->reg_var)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            memset(&(new_lib->reg->reg_var[reg_var_num]), 0, sizeof(SUB_REGX));
            new_lib->reg->reg_var_num++;

            str_len = strlen(buff + offset);
            str_buf = (uint8_t *)malloc(str_len + 1);
            if(NULL == str_buf)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                return FMTI_MALLOC_FAIL;
            }
            strcpy(str_buf, buff + offset);
            new_lib->reg->reg_var[reg_var_num].reg = str_buf;
            
            new_lib->reg->reg_var[reg_var_num].re = pcre_compile(
                                        str_buf,                    /* the pattern */
                                        0,                          /* default options */
                                        &error,                   /* for error message */
                                        &err_offset,             /* for error offset */
                                        NULL);                      /* use default character tables */
            if(NULL == new_lib->reg->reg_var[reg_var_num].re)
            {
                fmti_free_one_lib(new_lib);
                fclose(fp);
                DEBUGP("[reg_var]pcre_compile failed: %s\n", str_buf);
                return FMTI_MALLOC_FAIL;
            }            
        }
        else if(strncmp(buff + offset, FMTI_TAG_END, FMTI_TAG_END_LEN) == 0)
        {
            /* process [end] */
            if(status == FMTI_LIB_STA_NOT_BEGIN)
                continue;
            if(new_lib->id == 0)
            {
                fmti_free_one_lib(new_lib);
                new_lib = NULL;
                status = FMTI_LIB_STA_NOT_BEGIN;
                continue;
            }
            status = FMTI_LIB_STA_END;
        }

        if(status == FMTI_LIB_STA_END)
        {                
            new_lib->next = fmti->lib;
            fmti->lib = new_lib;
            fmti->lib_num++;
            status = FMTI_LIB_STA_NOT_BEGIN;
        }
    }

    fclose(fp);

    return ret;
}

static long get_file_size(const char *file)  
{  
    int64_t filesize = -1;      
    struct stat statbuff;  
    if(stat(file, &statbuff) >= 0)
    {  
        filesize = statbuff.st_size;  
    }  
    return filesize;  
}  

static uint8_t *_read_buf_from_file(char *file_name, long file_size, uint32_t *buff_size)
{
    //DOING:
    FILE *fp;
    uint8_t *buf_malloc = NULL;
    uint32_t tmp_size = 0;

    fp = fopen(file_name, "r");
    if(!fp)
    {
        return NULL;
    }

    if(file_size <= 2 * FMTI_MAX_BUFF_SIZE)
    {
        buf_malloc = (uint8_t *)malloc(file_size);
        if(NULL == buf_malloc)
        {
            fclose(fp);
            return NULL;
        }

        tmp_size = fread(buf_malloc, 1, file_size, fp);
        if (tmp_size != file_size)
        {
            fclose(fp);
            FMTI_FREE(buf_malloc);
            return NULL;
        }

        *buff_size = tmp_size;
        
        fclose(fp);
        return buf_malloc;
    }
    else
    {
        buf_malloc = (uint8_t *)malloc(2 * FMTI_MAX_BUFF_SIZE);
        if(NULL == buf_malloc)
        {
            fclose(fp);
            return NULL;
        }

        tmp_size = fread(buf_malloc, 1, FMTI_MAX_BUFF_SIZE, fp);
        if(tmp_size != FMTI_MAX_BUFF_SIZE)
        {
            fclose(fp);
            FMTI_FREE(buf_malloc);
            return NULL;
        }

        *buff_size = tmp_size;
        
        fseek(fp, -(FMTI_MAX_BUFF_SIZE), SEEK_END);
        uint8_t *tmp = buf_malloc + FMTI_MAX_BUFF_SIZE;
        tmp_size = fread(tmp, 1, FMTI_MAX_BUFF_SIZE, fp);
        if (tmp_size != FMTI_MAX_BUFF_SIZE)
        {
            fclose(fp);
            FMTI_FREE(buf_malloc);
            return NULL;
        }
        
        *buff_size += tmp_size;
        
        fclose(fp);
        return buf_malloc;
    }
   
}

static void _get_ext_of_filename(uint8_t *file, uint8_t *ext)
{
    ext[0] = '#';
    
    uint8_t *tmp = (uint8_t *)(file + strlen(file) - 1);
    while((tmp >= file) && ('/' != *tmp))
    {
        if (*tmp == '.')
        {
            if(strlen(tmp) >= 2)
            {
                int k = 0;
                tmp++;
                while(*tmp && k <= FMTI_FILE_EXT_SIZE)
                {
                    if(*tmp >= 'A' && *tmp <= 'Z')
                        ext[k] = *tmp - 'A' + 'a';
                    else
                        ext[k] = *tmp;
                    tmp++;
                    k++;
                }
                ext[k] = '\0';
            }
            break;
        }
        tmp--;
    }

    
}

static int _match_reg(REGX *reg, uint8_t *buff, uint32_t buff_size)
{
    //TODO:
    int rc = PCRE_ERROR_NOMATCH;
    int ovector[OVECCOUNT];
    
    REGX *tmp_reg = reg;
    SUB_REGX *reg_bof, *reg_eof, *reg_var;
    
    for(tmp_reg = reg; tmp_reg != NULL; tmp_reg = tmp_reg->next)
    {
        reg_bof = tmp_reg->reg_bof;
        reg_eof = tmp_reg->reg_eof;
        reg_var = tmp_reg->reg_var;
        if(buff_size < 2*FMTI_MAX_BUFF_SIZE)
        {
            if(reg_bof)
            {
                rc = pcre_exec(reg_bof->re, NULL, buff, buff_size, 0, 0, ovector, OVECCOUNT);
                if(rc < 0)
                    continue;
            }
            if(reg_eof)
            {
                rc = pcre_exec(reg_eof->re, NULL, buff, buff_size, 0, 0, ovector, OVECCOUNT);
                if(rc < 0)
                    continue;
            }
            uint8_t var_num = 0;
            while(var_num < tmp_reg->reg_var_num)
            {
                rc = pcre_exec(reg_var->re, NULL, buff, buff_size, 0, 0, ovector, OVECCOUNT);
                if(rc < 0)
                    break;
                var_num++;
                reg_var++;
            }
            if(var_num == tmp_reg->reg_var_num)
                return 1;
        }
        else
        {
            if(reg_bof)
            {
                rc = pcre_exec(reg_bof->re, NULL, buff, FMTI_MAX_BUFF_SIZE, 0, 0, ovector, OVECCOUNT);
                if(rc < 0)
                    continue;
            }
            if(reg_eof)
            {
                rc = pcre_exec(reg_eof->re, NULL, buff + FMTI_MAX_BUFF_SIZE, 
                                    FMTI_MAX_BUFF_SIZE, 0, 0, ovector, OVECCOUNT);
                if(rc < 0)
                    continue;
            }
            uint8_t var_num = 0;
            while(var_num < tmp_reg->reg_var_num)
            {
                rc = pcre_exec(reg_var->re, NULL, buff, buff_size, 0, 0, ovector, OVECCOUNT);
                if(rc < 0)
                    break;
                var_num++;
                reg_var++;
            }
            if(var_num == tmp_reg->reg_var_num)
                return 1;
        }
    }

    return 0;
}

static int _match_ext(uint8_t *lib_ext, uint8_t *ext)
{    
    if(lib_ext == NULL || '#' == ext[0])
    {
        return 0;
    }
    
    uint8_t sub_ext[FMTI_FILE_EXT_SIZE + 1];

    uint8_t *tmp = lib_ext;

    while(('\0' != *tmp))
    {
        if(' ' == *tmp)
        {
            tmp++;
            continue;
        }
        
        sscanf(tmp, "%[^ ]", sub_ext);
        
        if(0 == strcmp(sub_ext, ext))
            return 1;
        else
            tmp += strlen(sub_ext);
    }
    
    return 0;
}

#define F 0   /* character never appears in text */
#define T 1   /* character appears in plain ASCII text */
#define I 2   /* character appears in ISO-8859 text */
#define X 3   /* character appears in non-ISO extended ASCII (Mac, IBM PC) */

static uint8_t text_chars[256] = {
    /*                  BEL BS HT LF    FF CR    */
    F, F, F, F, F, F, F, T, T, T, T, F, T, T, F, F,  /* 0x0X */
        /*                              ESC          */
    F, F, F, F, F, F, F, F, F, F, F, T, F, F, F, F,  /* 0x1X */
    T, T, T, T, T, T, T, T, T, T, T, T, T, T, T, T,  /* 0x2X */
    T, T, T, T, T, T, T, T, T, T, T, T, T, T, T, T,  /* 0x3X */
    T, T, T, T, T, T, T, T, T, T, T, T, T, T, T, T,  /* 0x4X */
    T, T, T, T, T, T, T, T, T, T, T, T, T, T, T, T,  /* 0x5X */
    T, T, T, T, T, T, T, T, T, T, T, T, T, T, T, T,  /* 0x6X */
    T, T, T, T, T, T, T, T, T, T, T, T, T, T, T, F,  /* 0x7X */
    /*            NEL                            */
    X, X, X, X, X, T, X, X, X, X, X, X, X, X, X, X,  /* 0x8X */
    X, X, X, X, X, X, X, X, X, X, X, X, X, X, X, X,  /* 0x9X */
    I, I, I, I, I, I, I, I, I, I, I, I, I, I, I, I,  /* 0xaX */
    I, I, I, I, I, I, I, I, I, I, I, I, I, I, I, I,  /* 0xbX */
    I, I, I, I, I, I, I, I, I, I, I, I, I, I, I, I,  /* 0xcX */
    I, I, I, I, I, I, I, I, I, I, I, I, I, I, I, I,  /* 0xdX */
    I, I, I, I, I, I, I, I, I, I, I, I, I, I, I, I,  /* 0xeX */
    I, I, I, I, I, I, I, I, I, I, I, I, I, I, I, I   /* 0xfX */
};

static int fmt_isascii(uint8_t *buf, int len)
{
    int i;

    for(i = 0; i < len; i++)
    if(text_chars[buf[i]] == F)
        return 0;

    return 1;
}

static int fmt_isutf8(uint8_t *buf, int len)
{
	int i, j, gotone = 0;


    for(i = 0; i < len; i++) 
    {
        if((buf[i] & 0x80) == 0) 
        {  
            /* 0xxxxxxx is plain ASCII 
                       * Even if the whole file is valid UTF-8 sequences,
                      * still reject it if it uses weird control characters.
                    */
            if(text_chars[buf[i]] != T)
        	return 0;
        } 
        else if((buf[i] & 0x40) == 0) 
        { 
            /* 10xxxxxx never 1st byte */
            return 0;
        } 
        else 
        {              
            /* 11xxxxxx begins UTF-8 */
        	int following;

            if((buf[i] & 0x20) == 0) 
            {      
                /* 110xxxxx */
            	/* c = buf[i] & 0x1f; */
            	following = 1;
            } 
            else if((buf[i] & 0x10) == 0) 
            {   
                /* 1110xxxx */
            	/* c = buf[i] & 0x0f; */
            	following = 2;
            } 
            else if((buf[i] & 0x08) == 0) 
            {   
                /* 11110xxx */
            	/* c = buf[i] & 0x07; */
            	following = 3;
            } 
            else if((buf[i] & 0x04) == 0) 
            {   
                /* 111110xx */
            	/* c = buf[i] & 0x03; */
            	following = 4;
            } 
            else if((buf[i] & 0x02) == 0) 
            {   
                /* 1111110x */
            	/* c = buf[i] & 0x01; */
            	following = 5;
            } 
            else 
            	return 0;

            for(j = 0; j < following; j++) 
            {
            	if(++i >= len)
            	    return gotone;

            	if((buf[i] & 0x80) == 0 || (buf[i] & 0x40))
            	    return 0;

            	/* c = (c << 6) + (buf[i] & 0x3f); */
            }

            gotone = 1;
        }
    }

    return gotone;
}

#if 0
static int fmt_isutf16(uint8_t *buf, int len)
{
	int be = 1, nobom = 0, i, c, bad = 0, high = 0;

    if(len < 2)
    	return 0;

    if(buf[0] == 0xff && buf[1] == 0xfe)
    	be = 0;
    else if(buf[0] == 0xfe && buf[1] == 0xff)
    	be = 1;
    else
    	nobom = 1;

    for(i = 2; i + 1 < len; i += 2) 
    {
    	if(be)
    	    c = buf[i + 1] + 256 * buf[i];
    	else
    	    c = buf[i] + 256 * buf[i + 1];

    	if(c == 0xfffe)
    	    return 0;

    	if(c < 128 && text_chars[c] != T) 
        {
    	    if(nobom)
        		return 0;
    	    else
        		bad++;
    	} 
        else if (c >= 128)
            high++;
    }

    //   if (nobom && high >= len / 4)
    //        return 0;

    if(!nobom && bad >= len / 2)
    	return 0;

    return 1 + be;
}
#endif

static int fmti_texttype(uint8_t *buf, int len)
{
    //int ret;

    if(fmt_isascii(buf, len)) 
        return FMTI_TYPE_TEXT_ASCII;
    else if(fmt_isutf8(buf, len)) 
        return FMTI_TYPE_TEXT_UTF8;
#if 0
    else if((ret = fmt_isutf16(buf, len))) 
        return (ret == 1) ? PDFMT_TYPE_TEXT_UTF16LE : PDFMT_TYPE_TEXT_UTF16BE;
#endif
    else 
        return FMTI_TYPE_BINARY_DATA;
}

int fmti_file(FMTI_S *fmti, char *file_name, FMTI_MATCH_RESULT *match_res)
{
    uint8_t *buff = NULL;
    uint32_t buff_size = 0;
    long file_size;
    
    DEBUGP("fmti_file: %s\n", file_name);
    
    if(NULL == fmti || file_name == NULL || match_res == NULL)
    {
        return FMTI_FILE_ERROR;
    }
    
    match_res->id = FMTI_TYPE_ANY;
    match_res->match_lib = NULL;
    match_res->match_mode = FMTI_MATCH_MODE_NO;
    match_res->priority = 0;
    match_res->ext_match = 1;
    memset(match_res->ext, 0, FMTI_FILE_EXT_SIZE + 1);
    
    //check file is or not directory
    struct stat st;
    stat(file_name, &st);
    if (S_ISDIR(st.st_mode))
    {
        //printf("%s is a directory, exit.\n", file_name);
        return FMTI_FILE_ERROR;
    }

    //check file size
    file_size = get_file_size(file_name);
    if (file_size == 0)
    {
        return FMTI_FILE_EMPTY;
    }
    else if (file_size < 0)
    {
        return FMTI_FILE_ERROR;
    }

    //get ext 
    _get_ext_of_filename(file_name, match_res->ext);

    //read buff from file
    buff = _read_buf_from_file(file_name, file_size, &buff_size);
    if(NULL == buff)
    {
        return FMTI_FILE_ERROR;
    }

    //use lib to check file type
    int reg_mr = 0;
    int ext_mr = 0;
    FMTI_LIB *tmp_lib;

    for(tmp_lib = fmti->lib; tmp_lib != NULL; tmp_lib = tmp_lib->next)
    {
        if((tmp_lib->id >= 20011) && (tmp_lib->id <= 20013))
            reg_mr = _match_reg(tmp_lib->reg, buff, 4096);
        else
            reg_mr = _match_reg(tmp_lib->reg, buff, buff_size);
        
        ext_mr = _match_ext(tmp_lib->ext, match_res->ext);

        if(reg_mr)
        {
            //mached then check priority
            if(tmp_lib->priority > match_res->priority)
            {
                match_res->id = tmp_lib->id;
                match_res->match_lib = tmp_lib;
                match_res->priority = tmp_lib->priority;
                match_res->match_mode = FMTI_MATCH_MODE_REG_PRIO;
            }
            else if(tmp_lib->priority == match_res->priority)
            {
                //same priority then check ext and id, ext have high priority
                if((match_res->match_mode < FMTI_MATCH_MODE_REG_EXT) && ext_mr)
                {
                    match_res->id = tmp_lib->id;
                    match_res->match_lib = tmp_lib;
                    match_res->priority = tmp_lib->priority;
                    match_res->match_mode = FMTI_MATCH_MODE_REG_EXT;
                }
                else if((match_res->match_mode <= FMTI_MATCH_MODE_REG_ID) && (tmp_lib->id < match_res->id))
                {
                    match_res->id = tmp_lib->id;
                    match_res->match_lib = tmp_lib;
                    match_res->priority = tmp_lib->priority;
                    match_res->match_mode = FMTI_MATCH_MODE_REG_ID;
                }
            }
        }        
    }

    if(FMTI_TYPE_ANY == match_res->id)
    {
        if(buff_size > 1024)
            match_res->id = fmti_texttype(buff, 1024);
        else
            match_res->id = fmti_texttype(buff, buff_size);
    }

    if(match_res->match_lib != NULL)
    {
        match_res->ext_match = _match_ext(match_res->match_lib->ext, match_res->ext);
    }

    FMTI_FREE(buff);
    
    return match_res->id;
}

static void _fmti_print_reg(REGX *reg)
{
    if(NULL == reg)
        return;
    else
    {
        _fmti_print_reg(reg->next);
        printf("[reg]\n");
        if(reg->reg_bof)
            printf("[reg_bof]: %s\n", reg->reg_bof->reg);
        
        int i = 0;
        while(i < reg->reg_var_num)
        {
            printf("[reg_var]: %s\n", reg->reg_var[i].reg);
            i++;
        }
        
        if(reg->reg_eof)
            printf("[reg_eof]: %s\n", reg->reg_eof->reg);
    }
}

void fmti_print_all_lib(FMTI_LIB *lib)
{
    if(NULL == lib)
        return;
    else
    {
        fmti_print_all_lib(lib->next);
        printf("[begin]\n");
        printf("[id]: %d\n", lib->id);
        printf("[puid]: %s\n", lib->puid);        
        printf("[name]: %s\n", lib->name);
        if(lib->mime)
            printf("[mime]: %s\n", lib->mime);
        if(lib->ext)
            printf("[extension]: %s\n", lib->ext);

        _fmti_print_reg(lib->reg);
        
        //printf("[priority]: %d\n", lib->priority);
        printf("[end]\n\n");
    }
}

static void fmti_free_reg(REGX *reg)
{
    //DONE
    REGX *tmp_reg;
    while(NULL != reg)
    {
        tmp_reg = reg;
        reg = reg->next;
        
        if(tmp_reg->reg_bof)
        {
            FMTI_FREE(tmp_reg->reg_bof->reg);
            pcre_free(tmp_reg->reg_bof->re);
        }
        FMTI_FREE(tmp_reg->reg_bof);

        if(tmp_reg->reg_eof)
        {
            FMTI_FREE(tmp_reg->reg_eof->reg);
            pcre_free(tmp_reg->reg_eof->re);
        }
        FMTI_FREE(tmp_reg->reg_eof);

        int i = 0;
        for(i = 0; i < tmp_reg->reg_var_num; i++)
        {
            FMTI_FREE(tmp_reg->reg_var[i].reg);
            pcre_free(tmp_reg->reg_var[i].re);
        }
        FMTI_FREE(tmp_reg->reg_var);
        
        FMTI_FREE(tmp_reg);
    }
    
}

static void fmti_free_one_lib(FMTI_LIB *lib)
{
    //DONE:
    if(NULL != lib)
    {
        FMTI_FREE(lib->puid);
        FMTI_FREE(lib->name);
        FMTI_FREE(lib->mime);
        FMTI_FREE(lib->container);
        FMTI_FREE(lib->ext);
        fmti_free_reg(lib->reg);
    }
    
    FMTI_FREE(lib);
}

static void fmti_free_all_lib(FMTI_LIB *lib)
{
    FMTI_LIB *tmp_lib;
    
    while(lib != NULL)
    {
        tmp_lib = lib;
        lib = lib->next;
        fmti_free_one_lib(tmp_lib);
    }
}

void fmti_free(FMTI_S *fmti)
{
    //DONE
    if(NULL != fmti)
    {
        fmti_free_all_lib(fmti->lib);
        FMTI_FREE(fmti);
    }
}

