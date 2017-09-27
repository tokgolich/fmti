[begin]
[id]: 29001
[puid]: fmt/111
[name]: OLE2 Compound Document Format
[priority]: 9
[reg]
[reg_bof]: (?s)\A\xd0\xcf\x11\xe0\xa1\xb1\x1a\xe1.{20}\xfe\xff
[end]

[begin]
[id]: 29002
[puid]: x-fmt/1
[name]: Microsoft Word for Macintosh Document
[mime]: application/msword
[extension]: mcw
[reg]
[reg_bof]: (?s)\A\xfe4\x00(?:\xc1|\x00)
[end]

[begin]
[id]: 29003
[puid]: x-fmt/64
[name]: Microsoft Word for Macintosh Document
[mime]: application/msword
[extension]: mcw
[reg]
[reg_bof]: (?s)\A\xfe7\x00\x1c
[end]

[begin]
[id]: 29004
[puid]: x-fmt/65
[name]: Microsoft Word for Macintosh Document
[mime]: application/msword
[extension]: mcw
[reg]
[reg_bof]: (?s)\A\xfe7\x00#
[end]

[begin]
[id]: 29005
[puid]: x-fmt/75
[name]: Microsoft Outlook Personal Address Book
[extension]: pab
[reg]
[reg_bof]: (?s)\A\!BDN.{4}AB
[end]

[begin]
[id]: 29006
[puid]: x-fmt/106
[name]: Microsoft Symbolic Link (SYLK) File
[extension]: slk
[reg]
[reg_bof]: (?s)\AID;P
[reg_eof]: (?s)\r\n(?:E|E\n|E\r\n)\Z
[end]

[begin]
[id]: 29007
[puid]: x-fmt/126
[name]: Microsoft Excel Chart
[extension]: xlc
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\x04\x06\x00.{2} \x00
[end]

[begin]
[id]: 29008
[puid]: x-fmt/232
[name]: Microsoft Project Export File
[mime]: application/x-project
[extension]: mpx
[reg]
[reg_bof]: (?s)\AMPX(?:,|;).{1,50}(?:,|;)1\.0
[end]

[begin]
[id]: 29009
[puid]: x-fmt/248
[name]: Microsoft Outlook Personal Folders (ANSI)
[extension]: pst
[reg]
[reg_bof]: (?s)\A\!BDN.{4}SM(?:\x0e\x00|\x0f\x00)
[end]

[begin]
[id]: 29010
[puid]: x-fmt/249
[name]: Microsoft Outlook Personal Folders (Unicode)
[extension]: pst
[reg]
[reg_bof]: (?s)\A\!BDN.{4}SM\x17\x00
[end]

[begin]
[id]: 29011
[puid]: x-fmt/342
[name]: Microsoft FoxPro Memo
[extension]: fpt frt vct pjt
[priority]: 5
[reg]
[reg_bof]: (?s)\A\x00.{3}\x00\x00\x00[^\x00].{504}\x00\x00\x00[\x00-\x02].{4}[^\x00]
[reg]
[reg_bof]: (?s)\A\x00.{3}\x00\x00\x00[^\x00].{520}\x00\x00\x00[\x00-\x02].{4}[^\x00]
[reg]
[reg_bof]: (?s)\A\x00.{3}\x00\x00\x00[^\x00].{504}\x00\x00\x00[\x00-\x02]\x00\x00\x00\x01\x00\x00\x00\x00\x01\x00\x00\x00[^\x00]
[end]

[begin]
[id]: 29012
[puid]: x-fmt/454
[name]: Microsoft Internet Shortcut
[mime]: text/plain
[extension]: url
[reg]
[reg_bof]: (?s)\A\[InternetShortcut\]
[end]

[begin]
[id]: 29013
[puid]: fmt/166
[name]: Microsoft Works Spreadsheet
[extension]: wks
[reg]
[reg_bof]: (?s)\A(?:\x00|\xff)\x00\x02\x00\x04\x04\x05T\x02
[reg_eof]: (?s)\x01\x00\x00\x00\Z
[end]

[begin]
[id]: 29014
[puid]: fmt/189
[name]: Microsoft Office Open XML
[priority]: 9
[reg]
[reg_bof]: (?s)\A.{0,0}PK\x03\x04.{26}\[Content_Types\]\.xml \xa2.*PK\x01\x02.*PK\x05\x06
[end]

[begin]
[id]: 29015
[puid]: fmt/278
[name]: Internet Message Format
[mime]: message/rfc822
[extension]: eml
[reg]
[reg_bof]: (?s)\A.{0,1024}\r\nX-MimeOLE: Produced By Microsoft MimeOLE V6\.00\..{4}\..{4}\r\n
[reg]
[reg_bof]: (?s)\A.{0,4096}\r\nX-Converted-By: Emailchemy .?\.
[end]

[begin]
[id]: 29016
[puid]: fmt/288
[name]: Microsoft Front Page Server Extension Configuration
[reg]
[reg_bof]: (?s)\A.{0,1024}vti_encoding:SR\|utf8-nl\r\n
[end]

[begin]
[id]: 29017
[puid]: fmt/342
[name]: Microsoft Project Export File
[mime]: application/x-project
[extension]: mpx
[reg]
[reg_bof]: (?s)\AMPX(?:,|;).{1,50}(?:,|;)4(?:,|\.)0
[end]

[begin]
[id]: 29018
[puid]: fmt/343
[name]: Microsoft Project Export File
[mime]: application/x-project
[extension]: mpx
[reg]
[reg_bof]: (?s)\AMPX(?:,|;).{1,50}(?:,|;)3\.0
[end]

[begin]
[id]: 29019
[puid]: fmt/346
[name]: Microsoft Word for Macintosh Document
[mime]: application/msword
[extension]: mcw
[reg]
[reg_bof]: (?s)\A\xfe2\x00\xc1
[end]

[begin]
[id]: 29020
[puid]: fmt/359
[name]: Microsoft Front Page Binary Tree Index
[extension]: btr
[reg]
[reg_bof]: (?s)\A\x1c\x01\x00\x00.{272}\x0c\x00\x00\x00,\x00\x00\x00.{4}\xff\xff\xff\xff\x00\x02
[end]

[begin]
[id]: 29021
[puid]: fmt/375
[name]: FoxPro Compound Index File
[extension]: cdx
[reg]
[reg_bof]: (?s)\A\x00.?\x00\x00.{8}\n\x00[^\x00].{487}(?:\x00\x00|\x00\x01).{2}\x01\x00\x00\x00\x01\x00.{512,4608}\x03.{3}\xff\xff\xff\xff\xff\xff\xff\xff.{2}\xff\xff.{2}\x0f\x0f
[end]

[begin]
[id]: 29022
[puid]: fmt/376
[name]: FoxPro Report
[extension]: frx
[reg]
[reg_bof]: (?s)\A\xf5.?[\x01-\x0c][\x01-\x1f].{1}\x00\x00\x00a\x09\x1d.{21}PLATFORM\x00\x00\x00C.{20}UNIQUEID\x00\x00\x00C.{52}OBJTYPE\x00\x00\x00\x00N
[end]

[begin]
[id]: 29023
[puid]: fmt/377
[name]: Microsoft Visual FoxPro Report
[extension]: frx
[reg]
[reg_bof]: (?s)\A0.?[\x01-\x0c][\x01-\x1f].{1}\x00\x00\x00\x88\n\xe5.{21}PLATFORM\x00\x00\x00C.{20}UNIQUEID\x00\x00\x00C.{52}OBJTYPE\x00\x00\x00\x00N
[end]

[begin]
[id]: 29024
[puid]: fmt/379
[name]: Microsoft Visual FoxPro Class Library
[extension]: vcx scx
[reg]
[reg_bof]: (?s)\A0.?[\x01-\x0c][\x01-\x1f].{28}PLATFORM\x00\x00\x00C.{20}UNIQUEID\x00\x00\x00C.{52}CLASS\x00\x00\x00\x00\x00\x00M
[end]

[begin]
[id]: 29025
[puid]: fmt/380
[name]: Microsoft Visual FoxPro Project
[extension]: pjx
[reg]
[reg_bof]: (?s)\A0.?[\x01-\x0c][\x01-\x1f].{4}\xa8\x04\x82.{21}NAME\x00\x00\x00\x00\x00\x00\x00M.{20}TYPE\x00\x00\x00\x00\x00\x00\x00C.{20}ID\x00\x00\x00\x00\x00\x00\x00\x00\x00N.{20}TIMESTAMP\x00\x00N
[end]

[begin]
[id]: 29026
[puid]: fmt/381
[name]: FoxPro Project
[extension]: pjx
[reg]
[reg_bof]: (?s)\A\xf5.?[\x01-\x0c][\x01-\x1f].{4}\x01\x04\x88.{21}NAME\x00\x00\x00\x00\x00\x00\x00M.{20}TYPE\x00\x00\x00\x00\x00\x00\x00C.{20}TIMESTAMP\x00\x00N
[end]

[begin]
[id]: 29027
[puid]: fmt/386
[name]: Microsoft Animated Cursor Format
[extension]: ani
[reg]
[reg_bof]: (?s)\ARIFF.{4}ACON.{0,}anih\$\x00\x00\x00\$\x00\x00\x00[^\x00].*LIST.{4}framicon
[end]

[begin]
[id]: 29028
[puid]: fmt/452
[name]: Acrobat Catalog Cat File, Microsoft Security Catalog
[extension]: cat
[reg]
[reg_bof]: (?s)\AA\r\n
[reg_eof]: (?s)A\r\n\Z
[reg]
[reg_bof]: (?s)\A\x30\x82.{2}\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x07\x02\xa0
[end]

[begin]
[id]: 29029
[puid]: fmt/475
[name]: Microsoft Management Console Snap-in Control file
[extension]: msc
[reg]
[reg_bof]: (?s)\A\x3c\?xml version="1\.0"\?\x3e\r\n\x3cMMC_ConsoleFile ConsoleVersion="
[end]

[begin]
[id]: 29030
[puid]: fmt/553
[name]: Microsoft Excel Chart
[mime]: application/vnd.ms-excel
[extension]: xlc
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\x00\x04\x00.{2} \x00
[end]

[begin]
[id]: 29031
[puid]: fmt/554
[name]: Microsoft Excel Chart
[mime]: application/vnd.ms-excel
[extension]: xlc
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\x02\x06\x00.{2} \x00
[end]

[begin]
[id]: 29032
[puid]: fmt/555
[name]: Microsoft Excel Macro
[mime]: application/vnd.ms-excel
[extension]: xlm
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\x00\x04\x00.{2}@\x00
[end]

[begin]
[id]: 29033
[puid]: fmt/556
[name]: Microsoft Excel Macro
[mime]: application/vnd.ms-excel
[extension]: xlm
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\x02\x06\x00.{2}@\x00
[end]

[begin]
[id]: 29034
[puid]: fmt/583
[name]: Vector Markup Language
[extension]: vml html htm
[reg]
[reg_bof]: (?s)\A.{0,128}xmlns:v="urn:schemas-microsoft-com:vml"
[end]

[begin]
[id]: 29035
[puid]: fmt/637
[name]: Microsoft OneNote
[mime]: application/msonenote
[extension]: one
[reg]
[reg_bof]: (?s)\A.{0,0}\xe4R\\\{\x8c\xd8\xa7M\xae\xb1Sx\xd0\)\x96\xd3
[end]

[begin]
[id]: 29036
[puid]: fmt/647
[name]: Microsoft Expression Media
[extension]: ivc
[reg]
[reg_bof]: (?s)\A.{4}025i
[reg_eof]: (?s)SVar.{8,54}025i.{4}\Z
[end]

[begin]
[id]: 29037
[name]: Windows Program Information
[extension]: pif
[priority]: 5
[reg]
[reg_var]: (?s)WINDOWS 386 3\.0
[reg_var]: (?s)MICROSOFT PIFEX
[end]

[begin]
[id]: 29038
[name]: Form Memo MS Visual FoxPro 7
[extension]: sct
[priority]: 6
[reg]
[reg_bof]: (?s)\A\x00.{3}\x00\x00\x00\x01\x00{507}\x01\x00\x00\x00\x10\x56\x45\x52\x53\x49\x4F\x4E\x20\x3D\x20\x20\x20\x33\x2E\x30\x30\x00\x00\x00\x01\x00\x00\x00
[end]

[begin]
[id]: 29039
[name]: Generated application MS Visual FoxPro 7
[extension]: app
[priority]: 3
[reg]
[reg_bof]: (?s)\A\xfe\xf2
[end]

[begin]
[id]: 29040
[puid]: fmt/589
[name]: Windows Media Playlist
[mime]: application/vnd.ms-wpl
[extension]: wpl
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?wpl version="1\.0"\?\x3e
[end]

[begin]
[id]: 29041
[puid]: x-fmt/4
[name]: Write for Windows Document
[extension]: wri
[reg]
[reg_bof]: (?s)\A2\xbe\x00\x00\x00\xab\x00\x00\x00\x00\x00\x00\x00\x00.{82}(?!\x00\x00)
[end]

[begin]
[id]: 29042
[puid]: x-fmt/12
[name]: Write for Windows Document
[extension]: wri
[reg]
[reg_bof]: (?s)\A1\xbe\x00\x00\x00\xab\x00\x00\x00\x00\x00\x00\x00\x00.{82}(?!\x00\x00)
[end]

[begin]
[id]: 29043
[puid]: x-fmt/262
[name]: WordStar for Windows Document
[extension]: ws wsw
[end]

[begin]
[id]: 29044
[puid]: x-fmt/393
[name]: WordPerfect for MS-DOS Document
[mime]: application/vnd.wordperfect
[extension]: wp wp5 wpd w50
[reg]
[reg_bof]: (?s)\A\xffWPC.{5}\n\x00\x00.{2}\x00\x00
[end]

[begin]
[id]: 29045
[puid]: x-fmt/394
[name]: WordPerfect for MS-DOS/Windows Document
[mime]: application/vnd.wordperfect
[extension]: wp5 wpd w51 wp
[reg]
[reg_bof]: (?s)\A\xffWPC.{5}\n\x00\x01.{2}\x00\x00
[end]

[begin]
[id]: 29046
[puid]: x-fmt/395
[name]: WordPerfect Graphics Metafile
[extension]: wpg
[reg]
[reg_bof]: (?s)\A\xffWPC\x10\x00\x00\x00\x01\x16\x01\x00.{2}\x00\x00
[end]

[begin]
[id]: 29047
[puid]: fmt/336
[name]: Graphic Workshop for Windows Thumbnail File
[extension]: thn
[reg]
[reg_bof]: (?s)\ATHNL
[end]

[begin]
[id]: 29050
[name]: MSI Microsoft Windows Installer
[priority]: 10
[extension]: msi
[reg]
[reg_bof]: (?s)\A\xd0\xcf\x11\xe0\xa1\xb1\x1a\xe1.{20}\xfe\xff
[reg_var]: (?s)Windows
[reg_var]: (?s)Installation
[end]
