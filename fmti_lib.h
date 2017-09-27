#ifndef _FMTI_LIB_H_
#define _FMTI_LIB_H_

#define FMTI_DEF_LIB_PATH          "/etc/fmti/full"

#define FMTI_TAG_BEGIN             "[begin]"
#define FMTI_TAG_BEGIN_LEN             7
#define FMTI_TAG_ID                "[id]: "
#define FMTI_TAG_ID_LEN                6
#define FMTI_TAG_PUID              "[puid]: "
#define FMTI_TAG_PUID_LEN              8
#define FMTI_TAG_NAME              "[name]: "
#define FMTI_TAG_NAME_LEN              8
#define FMTI_TAG_MIME              "[mime]: "
#define FMTI_TAG_MIME_LEN              8
#define FMTI_TAG_EXT               "[extension]: "
#define FMTI_TAG_EXT_LEN               13
#define FMTI_TAG_PRIO              "[priority]: "
#define FMTI_TAG_PRIO_LEN              12
#define FMTI_TAG_REG               "[reg]"
#define FMTI_TAG_REG_LEN               5
#define FMTI_TAG_REGBOF            "[reg_bof]: "
#define FMTI_TAG_REGBOF_LEN            11
#define FMTI_TAG_REGEOF            "[reg_eof]: "
#define FMTI_TAG_REGEOF_LEN            11
#define FMTI_TAG_REGVAR            "[reg_var]: "
#define FMTI_TAG_REGVAR_LEN            11
#define FMTI_TAG_END               "[end]" 
#define FMTI_TAG_END_LEN               5

typedef enum
{

    FMTI_LIB_STA_NOT_BEGIN = 0,
    FMTI_LIB_STA_BEGIN,
    FMTI_REG_STA_NEW,
    FMTI_REG_STA_ADD,
    FMTI_LIB_STA_END,
    
} fmti_lib_sta;

#endif

