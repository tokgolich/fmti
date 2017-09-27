#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdarg.h>
#include <ctype.h>
#include <stdlib.h>
#include <dirent.h>
#include <assert.h>
#include <getopt.h>
#include <unistd.h>
#include <malloc.h>
#include <sys/stat.h>

#include "fmti.h"

#define MAX_PATH_LEN                512
#define FMTI_DEF_LIB_SRC          "/etc/fmti/full"

#define FMTI_TEST_HELP  \
    "Usage: %s [OPTION...] [STRING...]\n\n" \
    "    -h, --help                      display this help and exit\n"\
    "\n"\
    "    -s, --sig-path                  set the signature path (def is /etc/fmti/full)\n"\
    "    -c, --check-file                check the filetype of file or file in dir\n"\
    "\n"

uint8_t *g_matchmode_tbl[] = 
    {
        "FMTI_MATCH_MODE_NO",
        "FMTI_MATCH_MODE_EXT",
        
        "FMTI_MATCH_MODE_REG_PRIO",
        "FMTI_MATCH_MODE_REG_EXT",
        "FMTI_MATCH_MODE_REG_ID",
    };

typedef enum
{
    FMTI_TEST_CMD_NO = 0,

    FMTI_TEST_CMD_CHECK_FILE,
    
} fmti_test_cmd;

static void checkFiles(FMTI_S *fmti, char *path);
static void fmti_test_help(void);

static char *progname;     /* used throughout */
static int opt;
static struct option longopts[] = 
{
    {"help", 0, NULL, 'h'},
    {"sig-path", 1, NULL, 's'},
    {"check-file", 1, NULL, 'c'},
    {0,0,0,0}
};

int main(int argc, char **argv)
{
    int ret = FMTI_OK;
    FMTI_S *fmti = NULL;
    char *sig_path = FMTI_DEF_LIB_SRC;
    int cmd = FMTI_TEST_CMD_NO;
    int helpinfo = 1;
    char *file_path = NULL;
    
    if((progname = strrchr(argv[0], '/')) != NULL)
        progname++;
    else
        progname = argv[0];
    
    while((opt = getopt_long(argc, argv, "hs:c:", longopts, NULL)) != -1)
    {
        switch(opt)
        {
            case 's':
                sig_path = strdup(optarg);
                break;
            case 'c':
                cmd = FMTI_TEST_CMD_CHECK_FILE;
                file_path = strdup(optarg);
                helpinfo = 0;
                break;
            case 'h':
                helpinfo++;
                break;
            case '?':
                helpinfo++;
                break;
            default:
                helpinfo++;
                break;
        }
    }
    
    if(helpinfo)
    {
        fmti_test_help();
    }

    if(cmd == FMTI_TEST_CMD_CHECK_FILE)
    {
        fmti = fmti_init();
        if(NULL == fmti)
        {
            printf("fmti_init ERR\n");
            goto exit;
        }
        
        ret = fmti_load_lib(fmti, sig_path);
        if(ret != FMTI_OK)
        {
            printf("fmti_load_lib %s ERR\n", sig_path);
            goto exit;
        }
        
        printf("load %d lib OK\n", fmti->lib_num);
        
        //fmti_print_all_lib(fmti->lib);
        checkFiles(fmti, file_path);
        
    }

exit:
    fmti_free(fmti);
    return 0;
}

static void checkFiles(FMTI_S *fmti, char *path)
{
    char tmp_path[MAX_PATH_LEN];
    struct dirent *filename;
    DIR *dir;
    struct stat s;
    FMTI_MATCH_RESULT match_res;
    
    lstat(path, &s);

    if(!S_ISDIR(s.st_mode))
    {
        fmti_file(fmti, path, &match_res);
        
        printf("[file]: %s\n", path);
        printf("[file ext]: %s\n", match_res.ext);
        printf("[ext match]: %d\n", match_res.ext_match);
        printf("[matchmode]: %s\n", g_matchmode_tbl[match_res.match_mode]);
        printf("[priority]: %d\n", match_res.priority);
        printf("[id]: %d\n", match_res.id);
        
        if(match_res.match_lib)
        {
            FMTI_LIB *match_lib = match_res.match_lib;
            if(match_lib->puid)
                printf("[puid]: %s\n", match_lib->puid);
            printf("[name]: %s\n", match_lib->name);
            if(match_lib->mime)
                printf("[mime]: %s\n", match_lib->mime);
            if(match_lib->ext)
                printf("[lib_ext]: %s\n", match_lib->ext);
            //printf("[priority]: %d\n", match_lib->priority);
        }
        
        printf("\n");
    }
    else
    {
        dir = opendir(path);
        if(dir == NULL)
        {
            printf("open dir %s error!\n", path);
            exit(1);
        }
        
        while((filename = readdir(dir)) != NULL)
        {
            if(!strcmp(filename->d_name, ".")||!strcmp(filename->d_name, ".."))
                continue;
        
            sprintf(tmp_path, "%s/%s", path, filename->d_name);
        
            lstat(tmp_path, &s);
        
            if(S_ISDIR(s.st_mode))
            {
                checkFiles(fmti, tmp_path);
            }
            else
            {
                fmti_file(fmti, path, &match_res);
                
                printf("[file]: %s\n", tmp_path);
                printf("[file ext]: %s\n", match_res.ext);
                printf("[ext match]: %d\n", match_res.ext_match);
                printf("[matchmode]: %s\n", g_matchmode_tbl[match_res.match_mode]);
                printf("[priority]: %d\n", match_res.priority);
                printf("[id]: %d\n", match_res.id);
                
                if(match_res.match_lib)
                {
                    FMTI_LIB *match_lib = match_res.match_lib;
                    if(match_lib->puid)
                        printf("[puid]: %s\n", match_lib->puid);
                    printf("[name]: %s\n", match_lib->name);
                    if(match_lib->mime)
                        printf("[mime]: %s\n", match_lib->mime);
                    if(match_lib->ext)
                        printf("[lib_ext]: %s\n", match_lib->ext);
                    //printf("[priority]: %d\n", match_lib->priority);
                }
                
                printf("\n");
            }
        }
        closedir(dir);
    }
}

static void fmti_test_help(void)
{
    (void)fprintf(stderr, FMTI_TEST_HELP, progname);
    exit(1);
}

