#ifndef _FMTI_H_
#define _FMTI_H_
#include <stdint.h>
#include <pcre.h>

#define FMTI_LINE_MAX_LEN          2048
#define FMTI_MAX_BUFF_SIZE         128*1024

#define FMTI_FILE_EXT_SIZE         16

#define FMTI_DEF_RULE_PRIO         10

typedef enum
{
    FMTI_TYPE_ANY = 0,
    FMTI_FILE_ERROR,
    FMTI_FILE_EMPTY,
    
    FMTI_TYPE_TEXT_ASCII,
    FMTI_TYPE_TEXT_UTF8,
    FMTI_TYPE_TEXT_UTF16LE,
    FMTI_TYPE_TEXT_UTF16BE,
    
    FMTI_TYPE_BINARY_DATA,
    
} fmti_type_t;

typedef enum
{
    FMTI_MATCH_MODE_NO = 0,
    FMTI_MATCH_MODE_EXT,
    FMTI_MATCH_MODE_REG_PRIO,
    FMTI_MATCH_MODE_REG_EXT,
    FMTI_MATCH_MODE_REG_ID,
} fmti_match_mode;

typedef enum
{
    FMTI_OK = 0,          /* No error occurred */
    FMTI_NULL_POINTER,
    FMTI_MALLOC_FAIL,
    
    FMTI_INVALID_LIB_PATH,
    
} fmti_err_sta;

#define FMTI_FREE(p) if((p)){free((p));}
#define FMTI_CHECK_RETURN_NULL(p) if(!(p)){return NULL;}
#define FMTI_CHECK_NULL_POINTER(p) if(!(p)){return FMTI_NULL_POINTER;}

typedef struct
{
    uint8_t *reg;
    pcre *re;
} SUB_REGX;

typedef struct _regx
{

    struct _regx *next;
    
    SUB_REGX *reg_bof;
    SUB_REGX *reg_eof;
    SUB_REGX *reg_var;
    uint8_t reg_var_num;
    
} REGX;

typedef struct _fmti_lib
{

    struct _fmti_lib *next;
    
    uint32_t id;

    uint8_t *puid;
    uint8_t *name;
    uint8_t *mime;
    uint8_t *container;
    uint8_t *ext;
    uint32_t priority;
    REGX *reg;
            
} FMTI_LIB;

typedef struct
{
    FMTI_LIB *match_lib;
    fmti_match_mode match_mode;
    uint32_t id;
    uint32_t priority;
    uint8_t ext[FMTI_FILE_EXT_SIZE + 1];
    uint8_t ext_match;
} FMTI_MATCH_RESULT;

typedef struct
{
    FMTI_LIB *lib;
    uint32_t lib_num;
} FMTI_S;

int lstat(const char *path, struct stat *buf);
char *strdup(char *s);

FMTI_S *fmti_init(void);
int fmti_load_lib(FMTI_S *p, char *path);
int fmti_load_lib2(FMTI_S *p, char *sig_path);
int fmti_file(FMTI_S *p, char *file_name, FMTI_MATCH_RESULT *match_res);
void fmti_print_all_lib(FMTI_LIB *p);
void fmti_free(FMTI_S *p);

#endif

