# fmti
File format identification

## 编译
    make clean
    make
    生成文件：
    fmti_test：测试程序
    libfmti.so：
    使用方法： -L/usr/local/lib -lfmti
    
## API
    a) 初始化：FMTI_S *fmti_init();
    输入：No
    返回：
        失败 ---> NULL
        成功 ---> 非NULL
    
    b) 加载lib库：int fmti_load_lib(FMTI_S *p, char *path);
    输入：
        p：FMTI_S结构对象
        path：signature路径，可以是文件夹或文件
    返回：
        失败 ---> 非0
        成功 ---> 0
    
    c) 识别文件：int fmti_file(FMTI_S *p, char *file_name, FMTI_MATCH_RESULT *match_res);
    输入：
        p：FMTI_S结构对象
        file_name：需要识别的文件路径
        match_res: 识别结果
    返回：
        识别出的文件类型ID
    
    d) 释放内存：void fmti_free(FMTI_S *p);

## 加载signature
    路径：/etc/fmti/full
    支持正则可以扩展
    fmti_load_lib(FMTI_S *p, char *path)
    如果输入的是文件夹，则加载文件夹下的所有sig文件
    如果输入的是文件，则只加载这个sig文件
    
## 识别返回报告
    fmti_file只返回文件类型的id
    如果想获得更详细的信息需要访问FMTI_MATCH_RESULT对象
    
    a) PDFMT_S对象结构：
    typedef struct
    {
        FMTI_LIB *lib;
        uint32_t lib_num;
    } FMTI_S;
    
    b) FMTI_MATCH_RESULT对象结构：
    typedef struct
    {
        FMTI_LIB *match_lib;                     /* 匹配到的signature，为NULL则signature里未查到 */
        fmti_match_mode match_mode;              /* 如何识别到文件类型 */
        uint32 id;                               /* 文件类型id */
        uint32 priority;                         /* signature的优先级 */
        uchar ext[FMTI_FILE_EXT_SIZE + 1];      /* 该文件的扩展名 */
        uint8 ext_match;                         /* 该文件的扩展名是否与signature中的扩展名是否匹配，1：匹配，0：不匹配 */
    } FMTI_MATCH_RESULT;
    
    c) FMTI_LIB对象结构：
    
    
## 代码示例
    FMTI_S *fmti;
    fmti = fmti_init();
    fmti_load_lib(fmti, "/etc/fmti/full");
    int filetype;
    filetype = fmti_file(fmti, "test.file");
    fmti_free(fmti);
