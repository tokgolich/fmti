[begin]
[id]: 10001
[puid]: fmt/634
[name]: Microsoft Compiled HTML Help
[mime]: application/vnd.ms-htmlhelp
[extension]: chm chw chi
[reg]
[reg_bof]: (?s)\A.{0,0}ITSF
[end]

[begin]
[id]: 10002
[puid]: fmt/45
[name]: Rich Text Format
[mime]: application/rtf, text/rtf
[extension]: rtf
[reg]
[reg_bof]: (?s)\A\{\\rt(?:f|f1)\\(?:ansi|mac|pc|pca)
[end]

[begin]
[id]: 10003
[puid]: fmt/50
[name]: Rich Text Format
[mime]: application/rtf, text/rtf
[extension]: rtf
[reg]
[reg_bof]: (?s)\A\{\\rt(?:f|f1).{0,1}\\(?:ansi|mac|pc|pca)\\ansicpg
[end]

[begin]
[id]: 10004
[puid]: fmt/52
[name]: Rich Text Format
[mime]: application/rtf, text/rtf
[extension]: rtf
[reg]
[reg_bof]: (?s)\A\{\\rt(?:f|f1)\\(?:ansi|mac|pc|pca)\\ansicpg.{3,}\\stshfdbch.{1,4}\\stshfloch.{1,4}\\stshfhich.{1,4}\\stshfbi
[end]

[begin]
[id]: 10005
[puid]: fmt/355
[name]: Rich Text Format
[mime]: application/rtf, text/rtf
[extension]: rtf
[reg]
[reg_bof]: (?s)\A\{\\rt(?:f|f1).{0,15}(?:ansi|mac|pc|pca)\\ansicpg.{3,}\\stshfdbch.{1,5}\\stshfloch.{1,5}\\stshfhich.{1,5}\\stshfbi.{0,64000}(?:\{\\\*\\colorschememapping|\\afelev|\{\\\*\\datastore|\{\\\*\\defchp)
[end]

[begin]
[id]: 10006
[puid]: fmt/53
[name]: Rich Text Format
[mime]: application/rtf, text/rtf
[extension]: rtf
[reg]
[reg_bof]: (?s)\A\{\\rt(?:f|f1).{0,15}(?:ansi|mac|pc|pca)\\ansicpg.{3,}\\stshfdbch.{1,4}\\stshfloch.{1,4}\\stshfhich.{1,4}\\stshfbi.*\\lsdstimax
[end]

[begin]
[id]: 10007
[puid]: fmt/101
[name]: Extensible Markup Language
[mime]: application/xml, text/xml
[extension]: xml
[reg]
[reg_bof]: (?s)\A.{0,3}\x3c\?xml version=(?:"|')1\.0(?:"|')
[end]

[begin]
[id]: 10008
[puid]: fmt/471
[name]: Hypertext Markup Language
[mime]: text/html
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!(?:DOCTYPE|doctype).{0,4}(?:HTML|html)
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!(?:DOCTYPE|doctype).{0,4}(?:HTML|html).{0,4}(?:SYSTEM|system).{0,4}(?:'|")about:legacy-compat(?:'|")\x3e
[end]

[begin]
[id]: 10009
[puid]: fmt/97
[name]: Hypertext Markup Language
[mime]: text/html
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!(?:DOCTYPE|doctype) (?:HTML|html) (?:PUBLIC|public) "-//.{1,16}//(?:DTD|dtd) .{0,64}(?:HTML|html) 2\.0
[end]

[begin]
[id]: 10010
[puid]: fmt/98
[name]: Hypertext Markup Language
[mime]: text/html
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!(?:DOCTYPE|doctype) (?:HTML|html) (?:PUBLIC|public) "-//.{1,16}//(?:DTD|dtd) .{0,64}(?:HTML|html) 3\.2
[end]

[begin]
[id]: 10011
[puid]: fmt/99
[name]: Hypertext Markup Language
[mime]: text/html
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!(?:DOCTYPE|doctype) (?:HTML|html) (?:PUBLIC|public) "-//.{1,16}//(?:DTD|dtd) .{0,64}(?:HTML|html) 4\.(?:0 |0/)
[end]

[begin]
[id]: 10012
[puid]: fmt/100
[name]: Hypertext Markup Language
[mime]: text/html
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!(?:DOCTYPE|doctype) (?:HTML|html) (?:PUBLIC|public) "-//.{1,16}//(?:DTD|dtd) .{0,64}(?:HTML|html) 4\.01
[end]

[begin]
[id]: 10013
[puid]: fmt/102
[name]: Extensible Hypertext Markup Language
[mime]: application/xhtml+xml
[extension]: html htm
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1\.0
[reg_var]: (?s)\x3chtml xmlns="http://www\.w3\.org/1999/xhtml".*\x3ctitle\x3e.*\x3c/title\x3e
[end]

[begin]
[id]: 10015
[puid]: fmt/103
[name]: Extensible Hypertext Markup Language
[mime]: application/xhtml+xml
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c\!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1\.1
[reg_var]: (?s)\x3chtml xmlns="http://www\.w3\.org/1999/xhtml".*\x3ctitle\x3e.*\x3c/title\x3e
[end]

[begin]
[id]: 10016
[puid]: fmt/96
[name]: Hypertext Markup Language
[mime]: text/html
[extension]: htm html
[reg]
[reg_bof]: (?s)\A.{0,1024}\x3c(?:HTML|html)
[reg_eof]: (?s)\x3c/(?:HTML|html|BODY|body)\x3e.{0,1024}\Z
[reg]
[reg_bof]: (?s)\A.{0,2048}\x3c\x00(?:H\x00T\x00M\x00L\x00|h\x00t\x00m\x00l\x00)
[reg_eof]: (?s)\x3c\x00/\x00(?:H\x00T\x00M\x00L\x00|h\x00t\x00m\x00l\x00|B\x00O\x00D\x00Y\x00|b\x00o\x00d\x00y\x00)\x3e\x00.{0,2048}\Z
[end]

[begin]
[id]: 10017
[puid]: fmt/121
[name]: DROID Signature File Format
[mime]: text/xml
[extension]: xml
[reg]
[reg_bof]: (?s)\A.{0,50}\x3cFFSignatureFile .{0,100}Version=
[end]

[begin]
[id]: 10018
[puid]: fmt/120
[name]: DROID File Collection File Format
[mime]: text/xml
[extension]: xml
[reg]
[reg_bof]: (?s)\A.{0,50}\x3cFileCollection .{0,100}\x3cDROIDVersion\x3e.{1,10}\x3c/DROIDVersion\x3e
[end]

[begin]
[id]: 10019
[puid]: x-fmt/414
[name]: Windows Cabinet File
[extension]: cab
[reg]
[reg_bof]: (?s)\AMSCF.{20}\x03\x01
[end]

[begin]
[id]: 10020
[puid]: x-fmt/415
[name]: Java Compiled Object Code
[extension]: class
[reg]
[reg_bof]: (?s)\A\xca\xfe\xba\xbe
[end]

[begin]
[id]: 10021
[puid]: x-fmt/420
[name]: Windows Setup File
[mime]: application/inf
[extension]: inf
[reg]
[reg_bof]: (?s)\A.{0,1024}\[(?:V|v)ersion\]\r\n(?:S|s)ignature.{0,1}=.{0,2}\$(?:Chicago|CHICAGO)\$.{0,1}\r\n
[reg]
[reg_bof]: (?s)\A.{0,1024}\[(?:V|v)ersion\]\r\n(?:S|s)ignature.{0,3}=.{0,1}"\$(?:WINDOWS|Windows) NT\$"\r\n
[reg]
[reg_bof]: (?s)\A.{0,1024}\[(?:V|v)ersion\]\r\n(?:S|s)ignature.{0,3}=.{0,1}"\$(?:WINDOWS|Windows) 95\$"\r\n
[end]

[begin]
[id]: 10022
[puid]: x-fmt/428
[name]: Microsoft Windows Shortcut
[extension]: lnk
[reg]
[reg_bof]: (?s)\AL\x00\x00\x00\x01\x14\x02\x00\x00\x00\x00\x00\xc0\x00\x00\x00\x00\x00\x00F
[end]

[begin]
[id]: 10023
[puid]: x-fmt/430
[name]: Microsoft Outlook Email Message
[extension]: msg
[reg]
[reg_bof]: (?s)\A\xd0\xcf\x11\xe0\xa1\xb1\x1a\xe1.{20}\xfe\xff
[reg_var]: (?s)IPM\.Note
[reg_var]: (?s)r\x00e\x00c\x00i\x00p\x00_\x00v\x00e\x00r\x00s\x00i\x00o\x00n\x00
[end]

[begin]
[id]: 10024
[puid]: fmt/474
[name]: Windows Help File
[extension]: hlp
[reg]
[reg_bof]: (?s)\A\?_\x03\x00.{4}\xff\xff\xff\xff
[end]

[begin]
[id]: 10025
[name]: TCPDUMP's style capture
[extension]: acp pcap
[reg]
[reg_bof]: (?s)\A\xd4\xc3\xb2\xa1
[end]

[begin]
[id]: 10026
[name]: 5View capture
[extension]: 5vw
[reg]
[reg_bof]: (?s)\A\xaa\xaa\xaa\xaa
[end]

[begin]
[id]: 10027
[name]: RPM Package (generic)
[extension]: rpm
[priority]: 5
[reg]
[reg_bof]: (?s)\A\xED\xAB\xEE\xDB
[end]

[begin]
[id]: 10028
[puid]: fmt/163
[name]: Microsoft Works Word Processor 1-3 for DOS and 2 for Windows
[extension]: wps
[reg]
[reg_bof]: (?s)\A\x01\xfe.{18}\xd0\x02
[end]

[begin]
[id]: 10029
[puid]: fmt/468
[name]: ISO Disk Image File
[extension]: iso
[reg]
[reg_bof]: (?s)\A.{32769}CD001.{1,16384}\xffCD001
[end]

[begin]
[id]: 10030
[puid]: x-fmt/154
[name]: AutoDesk FLIC Animation
[extension]: fli
[reg]
[reg_bof]: (?s)\A.{4}\x11\xaf.{6}\x08.{24}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.{4}\xfa\xf1.{2}\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 10031
[puid]: x-fmt/223
[name]: Autodesk Animator CEL File Format
[extension]: cel
[reg]
[reg_bof]: (?s)\A\x19\x91(?!@\x01\xc8\x00\x00\x00\x00\x00)
[end]

[begin]
[id]: 10032
[puid]: fmt/298
[name]: Autodesk Animator Pro FLIC
[extension]: flc
[reg]
[reg_bof]: (?s)\A.{4}\x12\xaf.{6}\x08.{120}\xf1
[end]

[begin]
[id]: 10033
[puid]: fmt/299
[name]: Autodesk Animator (FlicLib)
[extension]: fli
[reg]
[reg_bof]: (?s)\AFLIB\x02\x00.{2}\x00.{3}\x00\x00.{2}\x00.{5}\x00\x00.{2}\x00\x00
[end]

[begin]
[id]: 10034
[name]: Autodesk - Kaydara FBX 3D format (Binary)
[extension]: fbx
[reg]
[reg_bof]: (?s)\A\x4B\x61\x79\x64\x61\x72\x61\x20\x46\x42\x58\x20\x42\x69\x6E\x61\x72\x79\x20\x20\x00\x1A\x00
[end]

[begin]
[id]: 10035
[name]: ClickOnce Compiled Manifest
[extension]: cdf-ms
[priority]: 5
[reg]
[reg_bof]: (?s)\APcmH\x01\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 10036
[name]: Indipendent Color Matching profile
[extension]: icm icc
[priority]: 5
[reg]
[reg_bof]: (?s)\A\x00.{7}\x02.\x00\x00.{11}\x20\x07.{11}acsp
[end]

[begin]
[id]: 10037
[puid]: fmt/735
[name]: Dolby Digital AC-3
[extension]: ac3
[reg]
[reg_bof]: (?s)\A.{0,0}\x0bw
[end]


[begin]
[id]: 10038
[puid]: fmt/588
[name]: R3D
[extension]: r3d
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x01DRED1
[end]

[begin]
[id]: 10039
[puid]: fmt/592
[name]: Canon RAW
[extension]: cr2
[reg]
[reg_bof]: (?s)\A.{0,0}II\*\x00\x10\x00\x00\x00CR\x02\x00
[end]

[begin]
[id]: 10040
[puid]: fmt/593
[name]: Canon RAW
[extension]: crw
[reg]
[reg_bof]: (?s)\A.{0,0}II\x1a\x00\x00\x00HEAPCCDR
[end]

[begin]
[id]: 10041
[puid]: fmt/601
[name]: Statistical Analysis System Catalogue XPT (Windows)
[extension]: xpt
[reg]
[reg_bof]: (?s)\A.{92}XP_PRO.{0,16}SAS9\.1
[reg_eof]: (?s)End of Object.{0,63}\Z
[end]

[begin]
[id]: 10042
[puid]: fmt/602
[name]: Statistical Analysis System Catalogue XPT (Unix)
[extension]: xpt
[reg]
[reg_bof]: (?s)\A.{92}SunOS.{0,16}SAS9\.1
[reg_eof]: (?s)End of Object.{0,63}\Z
[end]

[begin]
[id]: 10043
[puid]: fmt/603
[name]: Statistical Analysis System Data XPT (Windows)
[extension]: xpt
[reg]
[reg_bof]: (?s)\A.{92}XP_PRO.{0,16}SAS9\.1
[reg_eof]: (?s)End of Data.{0,63}\Z
[end]

[begin]
[id]: 10044
[puid]: fmt/604
[name]: Statistical Analysis System Data XPT (Unix)
[extension]: xpt
[reg]
[reg_bof]: (?s)\A.{92}SunOS.{0,16}SAS9\.1
[reg_eof]: (?s)End of Data.{0,63}\Z
[end]

[begin]
[id]: 10045
[puid]: fmt/605
[name]: Statistical Analysis System Catalogue (Windows)
[extension]: sas7bcat sc7
[reg]
[reg_bof]: (?s)\A.{84}SAS.{69}CATALOG.{45,80}9\.01.{4}XP_PRO
[end]

[begin]
[id]: 10046
[puid]: fmt/606
[name]: Statistical Analysis System Catalogue (Unix)
[extension]: sas7bcat sc7
[reg]
[reg_bof]: (?s)\A.{84}SAS.{69}CATALOG.{45,80}9\.01.{4}SunOS
[end]

[begin]
[id]: 10047
[puid]: fmt/607
[name]: Statistical Analysis System Data (Windows)
[extension]: sas7bdat sd7
[reg]
[reg_bof]: (?s)\A.{84}SAS.{69}DATA.{45,80}9\.01.{4}XP_PRO
[end]

[begin]
[id]: 10048
[puid]: fmt/608
[name]: Statistical Analysis System Data (Unix)
[extension]: sas7bdat sd7
[reg]
[reg_bof]: (?s)\A.{84}SAS.{69}DATA.{45,80}9\.01.{4}SunOS
[end]

[begin]
[id]: 10049
[puid]: fmt/611
[name]: LDAP Data Interchange Format
[extension]: ldif
[reg]
[reg_bof]: (?s)\A.{0,0}dn: 
[end]

[begin]
[id]: 10050
[puid]: fmt/579
[name]: X3D
[extension]: x3d
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version="1\.0" encoding="UTF-8"\?\x3e\n\x3c\!DOCTYPE X3D PUBLIC "ISO//Web3D//DTD X3D 3\.0//EN"
[end]

[begin]
[id]: 10051
[puid]: fmt/580
[name]: X3D
[extension]: x3d
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version="1\.0" encoding="UTF-8"\?\x3e\n\x3c\!DOCTYPE X3D PUBLIC "ISO//Web3D//DTD X3D 3\.1//EN"
[end]

[begin]
[id]: 10052
[puid]: fmt/581
[name]: X3D
[extension]: x3d
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version="1\.0" encoding="UTF-8"\?\x3e\n\x3c\!DOCTYPE X3D PUBLIC "ISO//Web3D//DTD X3D 3\.2//EN"
[end]

[begin]
[id]: 10053
[puid]: fmt/582
[name]: X3D
[extension]: x3d
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version="1\.0" encoding="UTF-8"\?\x3e\n\x3c\!DOCTYPE X3D PUBLIC "ISO//Web3D//DTD X3D 3\.3//EN"
[end]
