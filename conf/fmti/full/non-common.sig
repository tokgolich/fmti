[begin]
[id]: 15001
[puid]: x-fmt/19
[name]: 3d Studio
[extension]: 3ds
[reg]
[reg_bof]: (?s)\AMM.{4}\x02\x00\n\x00\x00\x00(?:\x03|\x04).{3}==
[end]

[begin]
[id]: 15002
[puid]: x-fmt/28
[name]: CALS Compressed Bitmap
[extension]: cal
[reg]
[reg_bof]: (?s)\Asrcdocid:
[end]

[begin]
[id]: 15003
[puid]: x-fmt/32
[name]: Harvard Graphics Chart
[extension]: ch3
[reg]
[reg_bof]: (?s)\AHGB3
[end]

[begin]
[id]: 15004
[puid]: x-fmt/33
[name]: Corel R.A.V.E.
[extension]: clk
[reg]
[reg_bof]: (?s)\ARIFF.{4}CARAvrsn
[end]

[begin]
[id]: 15005
[puid]: x-fmt/34
[name]: Corel Presentation Exchange File
[extension]: cmx
[reg]
[reg_bof]: (?s)\ARIF(?:F|X).{4}CMX1.{62}1
[end]

[begin]
[id]: 15006
[puid]: x-fmt/35
[name]: Corel Presentation Exchange File
[extension]: cmx
[reg]
[reg_bof]: (?s)\ARIF(?:F|X).{4}CMX1.{62}2
[end]

[begin]
[id]: 15007
[puid]: x-fmt/41
[name]: Data Interchange Format
[extension]: dif
[reg]
[reg_bof]: (?s)\ATABLE\r\n0,1\r\n".{1,100}"\r\nVECTORS\r\n
[end]

[begin]
[id]: 15008
[puid]: x-fmt/94
[name]: Pocket Word Document
[extension]: psw pwd
[reg]
[reg_bof]: (?s)\A.{0,0}\{\\pwd2\\ansi
[end]

[begin]
[id]: 15009
[puid]: x-fmt/95
[name]: Inkwriter/Notetaker Document
[extension]: pwi
[reg]
[reg_bof]: (?s)\A.{0,0}\{\\pwi
[end]

[begin]
[id]: 15010
[puid]: x-fmt/108
[name]: STL (Standard Tessellation Language) ASCII
[extension]: stl
[reg]
[reg_bof]: (?s)\A(?:s| s)olid .*facet normal .{0,200}outer loop.{0,20}vertex 
[end]

[begin]
[id]: 15011
[puid]: x-fmt/114
[name]: Lotus 1-2-3 Worksheet
[mime]: application/vnd.lotus-1-2-3, application/x-123
[extension]: wk1 wk2
[reg]
[reg_bof]: (?s)\A\x00\x00\x02\x00\x06\x04\x06\x00\x08\x00
[end]

[begin]
[id]: 15012
[puid]: x-fmt/115
[name]: Lotus 1-2-3 Worksheet
[mime]: application/lotus123, application/vnd.lotus-1-2-3
[extension]: wk3
[reg]
[reg_bof]: (?s)\A\x00\x00\x1a\x00\x00\x10\x04\x00
[end]

[begin]
[id]: 15013
[puid]: x-fmt/116
[name]: Lotus 1-2-3 Worksheet
[mime]: application/lotus123, application/vnd.lotus-1-2-3
[extension]: wk4
[reg]
[reg_bof]: (?s)\A\x00\x00\x1a\x00\x02\x10\x04\x00
[end]

[begin]
[id]: 15014
[puid]: x-fmt/117
[name]: Lotus 1-2-3 Worksheet
[mime]: application/vnd.lotus-1-2-3, application/x-123
[extension]: wks
[reg]
[reg_bof]: (?s)\A\x00\x00\x02\x00\x04\x04
[end]

[begin]
[id]: 15015
[puid]: x-fmt/121
[name]: Quattro Pro Spreadsheet
[extension]: wq1 wkq
[reg]
[reg_bof]: (?s)\A\x00\x00\x02\x00 Q
[reg_eof]: (?s)\x01\x00\x00\x00\Z
[end]

[begin]
[id]: 15016
[puid]: x-fmt/122
[name]: Quattro Pro Spreadsheet
[extension]: wq2 wkq
[reg]
[reg_bof]: (?s)\A\x00\x00\x02\x00\!Q
[reg_eof]: (?s)\x01\x00\x00\x00\Z
[end]

[begin]
[id]: 15017
[puid]: x-fmt/146
[name]: Scitex Continuous Tone Bitmap
[extension]: ct
[reg]
[reg_bof]: (?s)\A.{80}CT\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.?\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.{879}(?:\x00|\x01).?\x00(?:\x07|\x08|\xff)
[end]

[begin]
[id]: 15018
[puid]: x-fmt/157
[name]: Interchange File
[extension]: iff
[reg]
[reg_bof]: (?s)\A(?:FORM|LIST|CAT )\x00
[end]

[begin]
[id]: 15019
[puid]: x-fmt/158
[name]: Initial Graphics Exchange Specification (IGES)
[mime]: model/iges
[extension]: iges igs
[reg]
[reg_bof]: (?s)\A.{72}S(?:      |000000)1(?:\r\n|\n).{72}(?:S      2|S0000002|G      1|G0000001)
[end]

[begin]
[id]: 15020
[puid]: x-fmt/182
[name]: Quark Xpress Data File
[extension]: qxd qxt qxp qcd qxl
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00MMXPR
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00IIXPR
[end]

[begin]
[id]: 15021
[puid]: x-fmt/191
[name]: AMI Professional Document
[mime]: application/vnd.lotus-wordpro
[extension]: sam
[reg]
[reg_bof]: (?s)\A\[ver\].{6}\[sty\].*\[edoc\]
[end]

[begin]
[id]: 15022
[puid]: x-fmt/205
[name]: WordStar for MS-DOS Document
[extension]: ws ws5
[reg]
[reg_bof]: (?s)\A\x1d\}\x00\x00P.{120}\}\x00\x1d
[end]

[begin]
[id]: 15023
[puid]: x-fmt/215
[name]: GEM Metafile Format
[extension]: gem
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xff\x00\x18\x00d\x00(?:\x02|\x00)
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xff\x18\x00d\x00(?:\x02|\x00)\x00
[end]

[begin]
[id]: 15024
[puid]: x-fmt/218
[name]: ESRI Arc/Info Binary Grid
[extension]: adf
[reg]
[reg_bof]: (?s)\A\x00\x00'\n\xff\xff(?:\xfc\x14|\xfb\xf8)
[end]

[begin]
[id]: 15025
[puid]: x-fmt/220
[name]: Applixware Spreadsheet
[extension]: as
[reg]
[reg_bof]: (?s)\A\*BEGIN SPREADSHEETS VERSION=
[reg_eof]: (?s)\*END SPREADSHEETS\n\Z
[end]

[begin]
[id]: 15026
[puid]: x-fmt/221
[name]: MapBrowser/MapWriter Vector Map Data
[extension]: cbd
[reg]
[reg_bof]: (?s)\A w\x00\x02@
[reg]
[reg_bof]: (?s)\A w\x003
[end]

[begin]
[id]: 15027
[puid]: x-fmt/226
[name]: ESRI Arc/Info Export File
[extension]: e00 x00
[reg]
[reg_bof]: (?s)\AEXP  [0-1]
[reg_eof]: (?s)EOI.{0,2}EOS.{0,2}\n\Z
[end]

[begin]
[id]: 15028
[puid]: x-fmt/227
[name]: Geography Markup Language
[mime]: application/gml+xml
[extension]: gml
[reg]
[reg_bof]: (?s)\A\x3c\?xml version=(?:"|')1\.0(?:"|').{0,320}xmlns:gml=(?:"|')http://www\.opengis\.net/gml
[end]

[begin]
[id]: 15029
[puid]: x-fmt/228
[name]: Applixware Bitmap
[extension]: im
[reg]
[reg_bof]: (?s)\A\*(?:BEGIN|START) RASTER VERSION=
[reg_eof]: (?s)\*END RASTER\n\Z
[end]

[begin]
[id]: 15030
[puid]: x-fmt/231
[name]: ESRI MapInfo Export File
[extension]: mif
[reg]
[reg_bof]: (?s)\A.{0,10}V(?:E|e)(?:R|r)(?:S|s)(?:I|i).?(?:N|n).{5,6}(?:C|c)(?:H|h)(?:A|a)(?:R|r)(?:S|s)(?:E|e)(?:T|t).*C(?:O|o)(?:L|l)(?:U|u)(?:M|m)(?:N|n)(?:S|s)
[reg]
[reg_bof]: (?s)\AV(?:E|e)(?:R|r)(?:S|s)(?:I|i).?(?:N|n).{5,6}(?:C|c)(?:H|h)(?:A|a)(?:R|r)(?:S|s)(?:E|e)(?:T|t).*c(?:O|o)(?:L|l)(?:U|u)(?:M|m)(?:N|n)(?:S|s)
[reg]
[reg_bof]: (?s)\Av(?:E|e)(?:R|r)(?:S|s)(?:I|i).?(?:N|n).{5,6}(?:C|c)(?:H|h)(?:A|a)(?:R|r)(?:S|s)(?:E|e)(?:T|t).*C(?:O|o)(?:L|l)(?:U|u)(?:M|m)(?:N|n)(?:S|s)
[reg]
[reg_bof]: (?s)\Av(?:E|e)(?:R|r)(?:S|s)(?:I|i).?(?:N|n).{5,6}(?:C|c)(?:H|h)(?:A|a)(?:R|r)(?:S|s)(?:E|e)(?:T|t).*c(?:O|o)(?:L|l)(?:U|u)(?:M|m)(?:N|n)(?:S|s)
[end]

[begin]
[id]: 15031
[puid]: x-fmt/235
[name]: ESRI Arc/View ShapeFile
[extension]: shp
[reg]
[reg_bof]: (?s)\A\x00\x00'\n\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.{4}\xe8\x03\x00\x00.{68}\x00\x00\x00\x01
[end]

[begin]
[id]: 15032
[puid]: x-fmt/236
[name]: WordStar for MS-DOS Document
[extension]: ws
[reg]
[reg_bof]: (?s)\A\x1d\}\x00\x00U.{120}\}\x00\x1d
[end]

[begin]
[id]: 15033
[puid]: x-fmt/237
[name]: WordStar for MS-DOS Document
[extension]: ws ws6
[reg]
[reg_bof]: (?s)\A\x1d\}\x00\x00\x60.{120}\}\x00\x1d
[end]

[begin]
[id]: 15034
[puid]: x-fmt/261
[name]: WordStar for MS-DOS Document
[extension]: ws ws7
[reg]
[reg_bof]: (?s)\A\x1d\}\x00\x00p.{120}\}\x00\x1d
[end]

[begin]
[id]: 15035
[puid]: x-fmt/280
[name]: XML Schema Definition
[mime]: application/xml
[extension]: xsd
[reg]
[reg_bof]: (?s)\A.{0,3}\x3c\?xml version=(?:"|')1\.0(?:"|')
[reg_eof]: (?s)\x3c(?:/xsd:|/xs:|/)schema\x3e.{0,2}\Z
[end]

[begin]
[id]: 15036
[puid]: x-fmt/303
[name]: Aldus Freehand Drawing
[extension]: fh3
[reg]
[reg_bof]: (?s)\AFH31
[end]

[begin]
[id]: 15037
[puid]: x-fmt/309
[name]: ChiWriter Document
[extension]: chi
[reg]
[reg_bof]: (?s)\A\\1cw 3\.
[end]

[begin]
[id]: 15038
[puid]: x-fmt/314
[name]: Digital Terrain Elevation Data
[extension]: dted dt0 dt1 dt2 avg min max
[reg]
[reg_bof]: (?s)\AUHL1.{7}(?:W|E).{7}(?:N|S).{60}DSI
[end]

[begin]
[id]: 15039
[puid]: x-fmt/317
[name]: ESRI Arc/View Project
[extension]: apr
[reg]
[reg_bof]: (?s)\A/2\.[0-3](?:\r\n|\n)\(Project\.1(?:\r\n|\n)\x09Name:\x09"
[end]

[begin]
[id]: 15040
[puid]: x-fmt/324
[name]: Harvard Graphics Presentation
[extension]: shw
[reg]
[reg_bof]: (?s)\ASHOW
[end]

[begin]
[id]: 15041
[puid]: x-fmt/325
[name]: Harvard Graphics Vector Graphics
[extension]: cht
[reg]
[reg_bof]: (?s)\AFalc
[end]

[begin]
[id]: 15042
[puid]: x-fmt/331
[name]: Lotus 1-2-3 Spreadsheet Formatting File
[extension]: fm1 fmt
[reg]
[reg_bof]: (?s)\A\x00\x00\x02\x00\x06\x80(?:\x02|\x96)\x00
[end]

[begin]
[id]: 15043
[puid]: x-fmt/340
[name]: Lotus WordPro Document
[mime]: application/lwp, application/vnd.lotus-wordpro
[extension]: lwp
[reg]
[reg_bof]: (?s)\AWordPro\r\xfb\x00\x00\x00\x00\x00\x00\x00\x00\x05\x98\\\x81r\x03\x00@\xcc\xc1\xbf\xff\xbd\xf9P
[end]

[begin]
[id]: 15044
[puid]: x-fmt/363
[name]: SuperCalc Spreadsheet
[extension]: cal
[reg]
[reg_bof]: (?s)\ASuperCalc ver\..{2}4\.
[end]

[begin]
[id]: 15045
[puid]: x-fmt/364
[name]: SuperCalc Spreadsheet
[extension]: cal
[reg]
[reg_bof]: (?s)\ASuperCalc ver\..{2}5\.
[end]

[begin]
[id]: 15046
[puid]: fmt/160
[name]: TeX/LaTeX Device Independent Document
[mime]: application/x-dvi
[extension]: dvi
[reg]
[reg_bof]: (?s)\A\xf7\x02
[reg_eof]: (?s)\xf9.{4}\x02.{0,3}\xdf\xdf\xdf\xdf\Z
[end]

[begin]
[id]: 15047
[puid]: x-fmt/367
[name]: Truevision TGA Bitmap
[extension]: tga icb vda vst afi bpx
[reg]
[reg_bof]: (?s)\A.{1}\x01(?:\x01|\x09).{4}(?:\x0f|\x10|\x18| ).{8}(?:\x08|\x0f|\x10|\x18| )
[reg]
[reg_bof]: (?s)\A.{1}\x00(?:\x02|\x03|\n|\x0b)\x00\x00\x00\x00\x00.{8}(?:\x08|\x0f|\x10|\x18| )
[end]

[begin]
[id]: 15048
[puid]: fmt/86
[name]: PCX
[extension]: pcx
[reg]
[reg_bof]: (?s)\A\n\x00\x01(?:\x01|\x02|\x04|\x08).{60}\x00.{3}(?:\x01|\x02)\x00.{4}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 15049
[puid]: fmt/87
[name]: PCX
[extension]: pcx
[reg]
[reg_bof]: (?s)\A\n\x02\x01(?:\x01|\x02|\x04|\x08).{60}\x00.{3}(?:\x01|\x02)\x00.{4}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 15050
[puid]: fmt/88
[name]: PCX
[extension]: pcx
[reg]
[reg_bof]: (?s)\A\n\x03\x01(?:\x01|\x02|\x04|\x08).{60}\x00.{3}(?:\x01|\x02)\x00.{4}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 15051
[puid]: fmt/89
[name]: PCX
[extension]: pcx
[reg]
[reg_bof]: (?s)\A\n\x04\x01(?:\x01|\x02|\x04|\x08).{60}\x00.{3}(?:\x01|\x02)\x00.{4}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 15052
[puid]: fmt/90
[name]: PCX
[extension]: pcx
[reg]
[reg_bof]: (?s)\A\n\x05\x01(?:\x01|\x02|\x04|\x08).{60}(?:\x00| ).{3}(?:\x00|\x01|\x02).{5}(?:\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00|                                                      )
[end]

[begin]
[id]: 15053
[puid]: fmt/93
[name]: Virtual Reality Modeling Language
[mime]: model/vrml
[extension]: wrl
[reg]
[reg_bof]: (?s)\A#VRML V1\.0 ascii
[end]

[begin]
[id]: 15054
[puid]: fmt/94
[name]: Virtual Reality Modeling Language
[mime]: model/vrml
[extension]: wrl
[reg]
[reg_bof]: (?s)\A#VRML V2\.0 utf8
[end]

[begin]
[id]: 15055
[puid]: fmt/128
[name]: OpenOffice Writer
[mime]: application/vnd.sun.xml.writer
[extension]: sxw
[reg]
[reg_bof]: (?s)\APK\x03\x04\x14\x00\x00\x00\x00\x00.{20}mimetypeapplication/vnd\.sun\.xml\.writer.*PK\x03\x04\x14\x00\x00\x00\x00\x00.{20}meta\.xml\x3c\?xml version="1\.0".{322}office:version="1\.0"\x3e
[end]

[begin]
[id]: 15056
[puid]: fmt/129
[name]: OpenOffice Calc
[mime]: application/vnd.sun.xml.calc
[extension]: sxc
[reg]
[reg_bof]: (?s)\APK\x03\x04\x14\x00\x00\x00\x00\x00.{20}mimetypeapplication/vnd\.sun\.xml\.calc.*PK\x03\x04\x14\x00\x00\x00\x00\x00.{20}meta\.xml\x3c\?xml version="1\.0".{322}office:version="1\.0"\x3e
[end]

[begin]
[id]: 15057
[puid]: fmt/130
[name]: OpenOffice Impress
[mime]: application/vnd.sun.xml.impress
[extension]: sxi
[reg]
[reg_bof]: (?s)\APK\x03\x04\x14\x00\x00\x00\x00\x00.{20}mimetypeapplication/vnd\.sun\.xml\.impress.*PK\x03\x04\x14\x00\x00\x00\x00\x00.{20}meta\.xml\x3c\?xml version="1\.0".{383}office:version="1\.0"\x3e
[end]

[begin]
[id]: 15058
[puid]: fmt/127
[name]: OpenOffice Draw
[mime]: application/vnd.sun.xml.draw
[extension]: sxd
[reg]
[reg_bof]: (?s)\APK\x03\x04\x14\x00\x00\x00\x00\x00.{20}mimetypeapplication/vnd\.sun\.xml\.draw.*PK\x03\x04\x14\x00\x00\x00\x00\x00.{20}meta\.xml\x3c\?xml version="1\.0".{383}office:version="1\.0"\x3e
[end]

[begin]
[id]: 15059
[puid]: x-fmt/416
[name]: BinHex Binary Text
[extension]: hqx
[reg]
[reg_bof]: (?s)\A\(This file must be converted with BinHex
[end]

[begin]
[id]: 15060
[puid]: x-fmt/432
[name]: 3DM
[extension]: 3dm
[reg]
[reg_bof]: (?s)\A3D Geometry File Format        4\x01\x00\x00\x00
[end]

[begin]
[id]: 15061
[puid]: x-fmt/433
[name]: 3DM
[extension]: 3dm
[reg]
[reg_bof]: (?s)\A3D Geometry File Format        1\x01\x00\x00\x00
[end]

[begin]
[id]: 15062
[puid]: x-fmt/434
[name]: 3DM
[extension]: 3dm
[reg]
[reg_bof]: (?s)\A3D Geometry File Format        2\x01\x00\x00\x00
[end]

[begin]
[id]: 15063
[puid]: x-fmt/435
[name]: 3DM
[extension]: 3dm
[reg]
[reg_bof]: (?s)\A3D Geometry File Format        3\x01\x00\x00\x00
[end]

[begin]
[id]: 15064
[puid]: x-fmt/436
[name]: CATIA Model
[mime]: application/octet-stream
[extension]: mod model
[reg]
[reg_bof]: (?s)\A.{80}CATIA   .{2024}CATIA SOLUTIONS V4.{6}RELEASE 
[end]

[begin]
[id]: 15065
[puid]: x-fmt/438
[name]: CATIA
[mime]: application/octet-stream
[extension]: catmaterial
[reg]
[reg_bof]: (?s)\AV5_CFV2\x00\x00.*\.CATMaterial
[end]

[begin]
[id]: 15066
[puid]: x-fmt/439
[name]: CATIA Model (Part Description)
[mime]: application/octet-stream
[extension]: catpart
[reg]
[reg_bof]: (?s)\AV5_CFV2\x00\x00.*\.CATPart
[end]

[begin]
[id]: 15067
[puid]: x-fmt/440
[name]: CATIA Product Description
[mime]: application/octet-stream
[extension]: catproduct
[reg]
[reg_bof]: (?s)\AV5_CFV2\x00\x00.*\.CATProduct
[end]

[begin]
[id]: 15068
[puid]: x-fmt/451
[name]: SketchUp Document
[mime]: application/octet-stream
[extension]: skb skp
[reg]
[reg_bof]: (?s)\A\xff\xfe\xff\x0eS\x00k\x00e\x00t\x00c\x00h\x00U\x00p\x00 \x00M\x00o\x00d\x00e\x00l\x00
[end]

[begin]
[id]: 15069
[puid]: x-fmt/453
[name]: TrueType Font
[mime]: application/octet-stream
[extension]: ttf
[reg]
[reg_bof]: (?s)\A.{12,128}OS/2.{0,256}cmap.{0,256}glyf.{0,256}head.{0,256}hhea.{0,256}hmtx.{0,256}loca.{0,256}maxp.{0,256}name.{0,256}post
[end]

[begin]
[id]: 15070
[puid]: fmt/183
[name]: PrimeOCR
[extension]: pro
[reg]
[reg_bof]: (?s)\A300,.?,.{3},
[end]

[begin]
[id]: 15071
[puid]: fmt/184
[name]: PrimeOCR
[extension]: pro
[reg]
[reg_bof]: (?s)\A380,.?,.{3},
[end]

[begin]
[id]: 15072
[puid]: fmt/185
[name]: PrimeOCR
[extension]: pro
[reg]
[reg_bof]: (?s)\A390,.?,.{3},
[end]

[begin]
[id]: 15073
[puid]: fmt/186
[name]: PrimeOCR
[extension]: pro
[reg]
[reg_bof]: (?s)\A400,.?,.{3},
[end]

[begin]
[id]: 15074
[puid]: fmt/187
[name]: PrimeOCR
[extension]: pro
[reg]
[reg_bof]: (?s)\A420,.?,.{3},
[end]

[begin]
[id]: 15075
[puid]: fmt/188
[name]: PrimeOCR
[extension]: pro
[reg]
[reg_bof]: (?s)\A430,.?,.{3},
[end]

[begin]
[id]: 15076
[puid]: fmt/200
[name]: Material Exchange Format
[mime]: application/mxf
[extension]: mxf
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x01\x01
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x01\x02
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x01\x03
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x02\x01
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x02\x02
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x02\x03
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x03\x01
[reg]
[reg_bof]: (?s)\A\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x03\x02
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x01\r\x01\x02\x01\x03\x03
[reg]
[reg_bof]: (?s)\A.{0,0}\x06\x0e\+4\x02\x05\x01\x01\r\x01\x02\x01\x01\x02.{70}\x06\x0e\+4\x04\x01\x01\x02\r\x01\x02\x01\x10
[end]

[begin]
[id]: 15077
[puid]: fmt/244
[name]: Keyhole Markup Language (XML)
[extension]: kml
[reg]
[reg_bof]: (?s)\A.{0,3}\x3c\?xml version=(?:"|')1\.0(?:"|').*\x3ckml xmlns=
[reg_eof]: (?s)\x3c/kml\x3e.{0,2}\Z
[end]

[begin]
[id]: 15078
[puid]: fmt/277
[name]: ESRI Arc/View Shapefile Index
[extension]: shx
[reg]
[reg_bof]: (?s)\A\x00\x00'\n\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.{4}\xe8\x03\x00\x00.{68}\x00\x00\x002
[end]

[begin]
[id]: 15079
[puid]: fmt/280
[name]: LaTeX (Master document)
[reg]
[reg_bof]: (?s)\A.{0,4096}\\documentclass
[end]

[begin]
[id]: 15080
[puid]: fmt/281
[name]: LaTeX (Subdocument)
[reg]
[reg_bof]: (?s)\A.{0,4096}\\(?:usepackage\{|chapter\{|section\{|subsection\{|begin\{)
[end]

[begin]
[id]: 15081
[puid]: fmt/282
[name]: netCDF-3 Classic
[mime]: application/netcdf, application/x-netcdf
[extension]: nc cdf
[reg]
[reg_bof]: (?s)\ACDF\x01
[end]

[begin]
[id]: 15082
[puid]: fmt/283
[name]: netCDF-3 64-bit
[mime]: application/netcdf, application/x-netcdf
[extension]: nc cdf
[reg]
[reg_bof]: (?s)\ACDF\x02
[end]

[begin]
[id]: 15083
[puid]: fmt/284
[name]: Gridded Binary
[extension]: grb wmo
[reg]
[reg_bof]: (?s)\AGRIB.{3}\x01
[reg_eof]: (?s)7777\Z
[end]

[begin]
[id]: 15084
[puid]: fmt/285
[name]: Gridded Binary
[extension]: grb wmo
[reg]
[reg_bof]: (?s)\AGRIB.{3}\x02
[reg_eof]: (?s)7777\Z
[end]

[begin]
[id]: 15085
[puid]: fmt/286
[name]: HDF5
[extension]: hdf5 h5
[reg]
[reg_bof]: (?s)\A\x89HDF\r\n\x1a\n\x01
[end]

[begin]
[id]: 15086
[puid]: fmt/287
[name]: HDF5
[extension]: hdf5 h5
[reg]
[reg_bof]: (?s)\A\x89HDF\r\n\x1a\n\x02
[end]

[begin]
[id]: 15087
[puid]: fmt/289
[name]: WARC
[extension]: warc
[reg]
[reg_bof]: (?s)\A.{0,4096}WARC/.{3,4}\r\nWARC-Type:.{0,13}\r\n.{0,512}WARC-Date:.{4,5}-.{2}-.{2}T.{2}:.{2}:.{2}Z\r\n.{0,1024}\r\n\r\n
[end]

[begin]
[id]: 15088
[puid]: fmt/300
[name]: ChiWriter Document
[extension]: chi
[reg]
[reg_bof]: (?s)\A\(CHIWRITER 4\.
[end]

[begin]
[id]: 15089
[puid]: fmt/301
[name]: Computer Graphics Metafile ASCII
[extension]: cgm
[reg]
[reg_bof]: (?s)\AB(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}3
[reg_eof]: (?s)E(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\AB(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}3
[reg_eof]: (?s)e(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\Ab(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}3
[reg_eof]: (?s)E(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\Ab(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}3
[reg_eof]: (?s)e(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[end]

[begin]
[id]: 15090
[puid]: fmt/302
[name]: Computer Graphics Metafile ASCII
[extension]: cgm
[reg]
[reg_bof]: (?s)\AB(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}4
[reg_eof]: (?s)E(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\AB(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}4
[reg_eof]: (?s)e(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\Ab(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}4
[reg_eof]: (?s)E(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\Ab(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}4
[reg_eof]: (?s)e(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[end]

[begin]
[id]: 15091
[puid]: fmt/307
[name]: Quicken Interchange Format
[mime]: application/qif
[extension]: qif
[reg]
[reg_bof]: (?s)\A.{0,64}\!Type:.*\^
[end]

[begin]
[id]: 15100
[puid]: fmt/308
[name]: Quicken Data Format
[extension]: qdf
[reg]
[reg_bof]: (?s)\A\xac\x9e\xbd\x8f\x00\x00.?\x00
[end]

[begin]
[id]: 15101
[puid]: fmt/309
[name]: Open Financial Exchange
[mime]: application/x-ofx
[extension]: ofx qfx
[reg]
[reg_bof]: (?s)\A.{0,1024}OFXHEADER:100.{0,2}DATA:.*VERSION:102.{0,2}SECURITY:.*ENCODING:.*CHARSET:.*COMPRESSION:.*OLDFILEUID:.*NEWFILEUID:
[end]

[begin]
[id]: 15102
[puid]: fmt/310
[name]: Open Financial Exchange
[mime]: application/x-ofx
[extension]: ofx qfx
[reg]
[reg_bof]: (?s)\A.{0,1024}OFXHEADER:100.{0,2}DATA:.*VERSION:103.{0,2}SECURITY:.*ENCODING:.*CHARSET:.*COMPRESSION:.*OLDFILEUID:.*NEWFILEUID:
[end]

[begin]
[id]: 15103
[puid]: fmt/311
[name]: Open Financial Exchange
[mime]: application/x-ofx
[extension]: ofx qfx
[reg]
[reg_bof]: (?s)\A.{0,1024}OFXHEADER:100\r\nDATA:.*\r\nVERSION:160\r\nSECURITY:.*\r\nENCODING:.*\r\nCHARSET:.*\r\nCOMPRESSION:.*\r\nOLDFILEUID:.*\r\nNEWFILEUID:
[end]

[begin]
[id]: 15104
[puid]: fmt/312
[name]: Open Financial Exchange
[mime]: application/x-ofx
[extension]: ofx qfx
[reg]
[reg_bof]: (?s)\A.{0,1024}OFXHEADER=(?:"|')200(?:"|')\r\nVERSION=(?:"|')203(?:"|')\r\nSECURITY=(?:"|').*(?:"|')\r\nOLDFILEUID=(?:"|').*(?:"|')\r\nNEWFILEUID=
[end]

[begin]
[id]: 15105
[puid]: fmt/313
[name]: Open Financial Exchange
[mime]: application/x-ofx
[extension]: ofx qfx
[reg]
[reg_bof]: (?s)\A.{0,1024}OFXHEADER=(?:"|')200(?:"|')\r\nVERSION=(?:"|')211(?:"|')\r\nSECURITY=(?:"|').*(?:"|')\r\nOLDFILEUID=(?:"|').*(?:"|')\r\nNEWFILEUID=
[end]

[begin]
[id]: 15106
[puid]: fmt/319
[name]: ESRI Spatial Index File
[extension]: sbn sbx
[reg]
[reg_bof]: (?s)\A\x00\x00'\n\xff\xff\xfep\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.{3}\x00[\x00-\x01]
[end]

[begin]
[id]: 15107
[puid]: fmt/320
[name]: ESRI Shapefile Projection (Well-Known Text) Format
[extension]: prj
[reg]
[reg_bof]: (?s)\A.{0,152}GEOGCS.*DATUM.*SPHEROID.*PRIMEM.*UNIT
[reg_eof]: (?s)\]\]\Z
[end]

[begin]
[id]: 15108
[puid]: fmt/321
[name]: ESRI Shapefile Header Index
[extension]: aih
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x00\x01.{35}\..{34}\x01
[end]

[begin]
[id]: 15109
[puid]: fmt/322
[name]: Portable Form File
[extension]: pff
[reg]
[reg_bof]: (?s)\APFF\x00\x07\x02\x00\x06
[end]

[begin]
[id]: 15110
[puid]: fmt/324
[name]: EndNote Style File
[mime]: application/x-endnote-style
[extension]: ens
[reg]
[reg_bof]: (?s)\A\x00\x08(?:\x00|\xff)(?:\xff|\x00)\x00\x00(?:\x00|\x10)(?:\x10|\x00)RSFTSTYL(?:\x00\x10\x01\x00|\x10\x00\x00\x01)
[reg]
[reg_bof]: (?s)\A\x00\x08(?:\x00|\xff)(?:\xff|\x00)\x00\x00(?:\x00|\x10)(?:\x10|\x00)ENDNENFT(?:\x00\x10\x01\x00|\x10\x00\x00\x01)
[end]

[begin]
[id]: 15111
[puid]: fmt/325
[name]: EndNote Library
[extension]: enl
[reg]
[reg_bof]: (?s)\A(?:\x01|\x03).{2}[\x00-\x0f].{4}\xfe.{0,1}\?.{1}\x00.{1}\x00.{1}\x00
[reg]
[reg_bof]: (?s)\A(?:\x01|\x03).{2}[\x00-\x0f].{4}\xff.{0,1}\?.{1}\x00.{1}\x00.{1}\x00
[reg]
[reg_bof]: (?s)\A\x00\x00.{2}\x00.{7}\x00\x00.{2}\x00\x00.{2}\x00\x02.{8}  @@@ \x00\x00@@@@
[end]

[begin]
[id]: 15112
[puid]: fmt/326
[name]: EndNote Connection File
[mime]: application/x-endnote-connect, application/x-endnote-connection
[extension]: enz
[reg]
[reg_bof]: (?s)\AENDNENZ3\x00\x00\x00.{5}\x00\x00\x00&\x00\x05.{2}\x00\x00\xff\xff\xff\xff
[end]

[begin]
[id]: 15113
[puid]: fmt/327
[name]: EndNote Filter File
[extension]: enf
[reg]
[reg_bof]: (?s)\AENDNEL2s\x00\x00\x00.{5}\x00\x00\x00&\x00\x03.{2}\x00\x00\xff\xff\xff\xff
[end]

[begin]
[id]: 15114
[puid]: fmt/328
[name]: EndNote Import File
[mime]: application/x-endnote-refer
[extension]: enw enr
[reg]
[reg_bof]: (?s)\A.{0,154}%A [A-Z].*(?:\n|\n\r)%(?:D|T) (?:[0-9]|[A-Z])
[reg]
[reg_bof]: (?s)\A.{0,154}%A[A-Z].*(?:\n|\n\r)%(?:D|T)(?:[0-9]|[A-Z])
[end]

[begin]
[id]: 15115
[puid]: fmt/330
[name]: Peak Graphical Waveform File
[extension]: pk
[reg]
[reg_bof]: (?s)\A.{0,0}\xf1\x06\x00\x00\x00[\x01-\x02]\x00\x00.{3}\x00.{3}\x00\x00\x00\x00\x00.{4}\xff\xff\xff\xff\x00\x00\x00\x00
[end]

[begin]
[id]: 15116
[puid]: fmt/331
[name]: Autorun Configuration File
[extension]: inf
[reg]
[reg_bof]: (?s)\A.{0,0}\[autorun\].{2,4}(?:OPEN|open|ICON|icon).{0,1}=
[end]

[begin]
[id]: 15117
[puid]: fmt/332
[name]: ESRI Arc/View Project
[extension]: apr
[reg]
[reg_bof]: (?s)\A/3\.[0-3]\r\n\(ODB\.1
[end]

[begin]
[id]: 15118
[puid]: fmt/333
[name]: Chemical Markup Language
[extension]: cml
[reg]
[reg_bof]: (?s)\A.{0,65535}.{0,1}xmlns="http://www\.xml-cml\.org/schema"
[end]

[begin]
[id]: 15119
[puid]: fmt/334
[name]: Crystallographic Information Framework
[extension]: cif
[reg]
[reg_bof]: (?s)\A.{0,65535}.{0,1} _atom_type_scat_dispersion_real
[end]

[begin]
[id]: 15120
[puid]: fmt/338
[name]: Interchange File Format Interleaved Bitmap
[extension]: iff lbm
[reg]
[reg_bof]: (?s)\AFORM.{4}ILBMBMHD
[end]

[begin]
[id]: 15121
[puid]: fmt/339
[name]: Interchange File Format 8-bit Sampled Voice
[extension]: iff
[reg]
[reg_bof]: (?s)\AFORM.{4}8SVXVHDR
[end]

[begin]
[id]: 15122
[puid]: fmt/340
[name]: Lotus WordPro Document
[mime]: application/lwp, application/vnd.lotus-wordpro
[extension]: lwp
[reg]
[reg_bof]: (?s)\AWordPro\x00\x00\x00\x00\x00\x00\x00\x00\x00LWP7\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xff\xff\xff\xff\x00\x00\x00\x00\.
[end]

[begin]
[id]: 15123
[puid]: fmt/358
[name]: Internet Data Query File
[extension]: idq
[reg]
[reg_bof]: (?s)\A.{0,3424}\[Query\].*(?:C|c)i(?:S|s)cope=
[reg_var]: (?s)\A.{0,3424}\[Query\].*(?:C|c)i(?:C|c)olumns=
[reg_var]: (?s)\A.{0,3424}\[Query\].*(?:C|c)i(?:T|t)emplate=/
[reg_var]: (?s)\A.{0,3424}\[Query\].*(?:C|c)i(?:R|r)estriction=.{0,1}%
[end]

[begin]
[id]: 15124
[puid]: fmt/360
[name]: pulse EKKO data file
[extension]: dt1
[reg]
[reg_bof]: (?s)\A\x00\x00\x80\?.{12}\x00\x00\x00\x00.{4}\x00\x00.{2}\x00\x00.{1}[A-B].{8}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00.{28}\x00\x00\x00\x00.{3}[@-I]
[end]

[begin]
[id]: 15125
[puid]: fmt/361
[name]: pulse EKKO header file
[extension]: hd
[reg]
[reg_bof]: (?s)\A.{0,100}NUMBER OF TRACES   = [0-9].{3,}NUMBER OF PTS/TRC  = [0-9]
[reg_eof]: (?s)SURVEY MODE        = .{0,150}\Z
[end]

[begin]
[id]: 15126
[puid]: fmt/362
[name]: GSSI SIR-10 RADAN data file
[extension]: dzt
[reg]
[reg_bof]: (?s)\A(?:\xff\x00|\x00\x07)\x00\x04\x00(?:\x02|\x04)\x10\x00\x00(?:\x00|\x80)\x00\x00(?:\x00|\x80)[A-B].{84}[1-9][0-9][0-9].{13}(?:FILE|CLAS).{906}(?:\x00\x00|\xff\xff)
[end]

[begin]
[id]: 15127
[puid]: fmt/363
[name]: SEG Y Data Exchange Format
[extension]: segy
[reg]
[reg_bof]: (?s)\A.{0,320}@@@@@@@@@@@@@@@@@@@@@@
[reg_var]: (?s)\A.{3200}\x00\x00.{15}[^\x00].{3}[^\x00].{2}(?:\x01\x00|\x00[\x01-\x08])
[reg]
[reg_bof]: (?s)\A.{0,320}@@@@@@@@@@@@@@@@@@@@@@
[reg_var]: (?s)\A.{3600}\x00\x00.{15}[^\x00].{3}[^\x00].{2}(?:\x01\x00|\x00[\x01-\x08])
[end]

[begin]
[id]: 15128
[puid]: fmt/367
[name]: ESRI World File Format
[extension]: tfw jgw pgw bpw tifw blw bilw jpgw rasterw btw
[end]

[begin]
[id]: 15129
[puid]: fmt/368
[name]: ASPRS Lidar Data Exchange Format
[extension]: las laz
[reg]
[reg_bof]: (?s)\ALASF.{20}\x01\x00.{78}[\x00-\x99]
[end]

[begin]
[id]: 15130
[puid]: fmt/369
[name]: ASPRS Lidar Data Exchange Format
[extension]: las laz
[reg]
[reg_bof]: (?s)\ALASF.{20}\x01\x01.{78}[\x00-\x99]
[end]

[begin]
[id]: 15131
[puid]: fmt/370
[name]: ASPRS Lidar Data Exchange Format
[extension]: las laz
[reg]
[reg_bof]: (?s)\ALASF.{20}\x01\x02.{78}[\x00-\x99]
[end]

[begin]
[id]: 15132
[puid]: fmt/371
[name]: Enhanced Compression Wavelet
[extension]: ecw
[reg]
[reg_bof]: (?s)\Ae\x02\x01\x02.{1}\x04\x00\x00.{2}\x00\x00.{2}\x00\x03\x00\x01
[end]

[begin]
[id]: 15133
[puid]: fmt/378
[name]: Chemical Draw Exchange Format
[mime]: chemical/x-cdx
[extension]: cdx
[reg]
[reg_bof]: (?s)\AVjCD0100\x04\x03\x02\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 15134
[puid]: fmt/387
[name]: VCalendar format
[mime]: text/x-vCalendar
[extension]: vcs
[reg]
[reg_bof]: (?s)\ABEGIN:VCALENDAR.*VERSION.{0,2}:1\.0
[reg_eof]: (?s)END:VCALENDAR.{0,4}\Z
[end]

[begin]
[id]: 15135
[puid]: fmt/388
[name]: Internet Calendar and Scheduling format
[mime]: text/calendar
[extension]: ics
[reg]
[reg_bof]: (?s)\ABEGIN:VCALENDAR.*VERSION.{0,2}:2\.0
[reg_eof]: (?s)END:VCALENDAR.{0,4}\Z
[end]

[begin]
[id]: 15136
[puid]: fmt/389
[name]: Log ASCII Standard Format
[extension]: las
[reg]
[reg_bof]: (?s)\A~V.*VERS\..*1\.2.{0,1}:.{0,3}CWLS (?:LOG ASCII STANDARD|Log ASCII Standard|LAS).{1,3}V(?:ERSION|ersion) 1\.2.*~W.*~C.*~A
[end]

[begin]
[id]: 15137
[puid]: fmt/390
[name]: Log ASCII Standard Format
[extension]: las
[reg]
[reg_bof]: (?s)\A.{0,264}~V.*VERS\..*2\..*(?:LAS|CWLS) (?:LOG ASCII STANDARD|Log ASCII Standard|log ASCII Standard|LAS).{1,3}V(?:ERSION|ersion) 2\.[0-1].*~W.*~C.*~A
[end]

[begin]
[id]: 15138
[puid]: fmt/391
[name]: Log ASCII Standard Format
[extension]: las
[reg]
[reg_bof]: (?s)\A~V(?:ERSION|ersion).*VERS\..*3\.0.{0,1}:.{0,3}CWLS (?:LOG ASCII STANDARD|LAS).{1,3}VERSION 3\.0.*~W(?:ELL|ell)
[end]

[begin]
[id]: 15139
[puid]: fmt/393
[name]: Borland Reflex flat datafile
[extension]: rxd
[reg]
[reg_bof]: (?s)\A\x00\x023Q\.\!&@#\$\!&&
[end]

[begin]
[id]: 15140
[puid]: fmt/395
[name]: vCard
[extension]: vcf
[reg]
[reg_bof]: (?s)\ABEGIN:VCARD.{1,3}VERSION:
[reg_eof]: (?s)END:VCARD.{0,4}\Z
[end]

[begin]
[id]: 15141
[puid]: fmt/396
[name]: PocketMobi (Palm Resource) File
[extension]: mobi prc
[reg]
[reg_bof]: (?s)\A.{60}BOOKMOBI
[reg]
[reg_bof]: (?s)\A.{60}TEXtREAd
[end]

[begin]
[id]: 15142
[puid]: fmt/397
[name]: Enigma Binary File (Finale)
[extension]: mus
[reg]
[reg_bof]: (?s)\AENIGMA BINARY FILE\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00Finale\(R\)
[end]

[begin]
[id]: 15143
[puid]: fmt/398
[name]: Enigma Transportable File (Finale)
[extension]: etf
[reg]
[reg_bof]: (?s)\AENIGMA TRANSPORTABLE FILE.{1,6}\^header.{1,4}\^01 "Finale\(R\)
[end]

[begin]
[id]: 15144
[puid]: fmt/401
[name]: X-Windows Screen Dump
[extension]: xwd xdm
[reg]
[reg_bof]: (?s)\A\x00\x00\x00.?\x00\x00\x00\x07\x00\x00\x00(?:\x00|\x01|\x02)\x00\x00\x00[\x01- ].{12}\x00\x00\x00(?:\x00|\x01)\x00\x00\x00(?:\x08|\x10| )\x00\x00\x00(?:\x00|\x01)\x00\x00\x00(?:\x08|\x10| )\x00\x00\x00(?:\x01|\x02|\x03|\x04|\x05|\x06|\x07|\x08|\x09|\n|\x0b|\x0c|\r|\x0e|\x0f|\x10|\x18| ).{4}\x00\x00\x00[\x00-\x05]
[end]

[begin]
[id]: 15145
[puid]: fmt/402
[name]: Truevision TGA Bitmap
[extension]: tga icb vda vst
[reg]
[reg_eof]: (?s)TRUEVISION-XFILE\.\x00\Z
[end]

[begin]
[id]: 15146
[puid]: fmt/403
[name]: SuperCalc Spreadsheet
[extension]: cal
[reg]
[reg_bof]: (?s)\ASuperCalc ver\..{2}1\.
[end]

[begin]
[id]: 15147
[puid]: fmt/405
[name]: Portable Any Map
[extension]: pam
[reg]
[reg_bof]: (?s)\AP7.*WIDTH.{3,256}ENDHDR
[end]

[begin]
[id]: 15148
[puid]: fmt/406
[name]: Portable Grey Map - Binary
[extension]: pgmb pgm
[reg]
[reg_bof]: (?s)\AP5(?: |\r|\n).{0,2}#.{0,70}\n(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)
[reg]
[reg_bof]: (?s)\AP5(?: |\r|\n)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)
[end]

[begin]
[id]: 15149
[puid]: fmt/407
[name]: Portable Grey Map - ASCII
[extension]: pgma pgm
[reg]
[reg_bof]: (?s)\AP2(?: |\x09|\r\n|\n)
[reg_eof]: (?s)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r) .{0,4}\Z
[end]

[begin]
[id]: 15150
[puid]: fmt/408
[name]: Portable Pixel Map - Binary
[extension]: ppm ppmb
[reg]
[reg_bof]: (?s)\AP6(?: |\r|\n)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)
[reg]
[reg_bof]: (?s)\AP6(?: |\r|\n).{0,2}#.{0,70}\n(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)
[end]

[begin]
[id]: 15151
[puid]: fmt/413
[name]: Scalable Vector Graphics Tiny
[extension]: svg
[reg]
[reg_bof]: (?s)\A\x3c\?xml version="1\.0".*\x3csvg.{0,512}version="1\.2".*svg\x3e
[end]

[begin]
[id]: 15152
[puid]: fmt/426
[name]: Harris Matrix
[extension]: hm
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x00\x00\x00\x00\x00\xff\xff\x01\x00\x10\x00CHarrisMatrixDoc
[reg_eof]: (?s)\x02&n\x00.{1}\x00\x00\x00\x01\x00\x00\x00\Z
[end]

[begin]
[id]: 15153
[puid]: fmt/431
[name]: Corel R.A.V.E.
[extension]: clk
[reg]
[reg_bof]: (?s)\ARIFF.{4}CARBvrsn
[end]

[begin]
[id]: 15154
[puid]: fmt/432
[name]: Corel R.A.V.E.
[extension]: clk
[reg]
[reg_bof]: (?s)\ARIFF.{4}CARCvrsn
[end]

[begin]
[id]: 15155
[puid]: fmt/439
[name]: BSDIFF
[extension]: bsdiff
[reg]
[reg_bof]: (?s)\ABSDIFF40.{24}BZh.?1AY&SY
[end]

[begin]
[id]: 15156
[puid]: fmt/450
[name]: VectorWorks
[extension]: vwx
[reg]
[reg_bof]: (?s)\A\x00\x00\x08X\x00\x00\x00\x00\x00\x00\x00\x94\x00 VW12\.5.{0,3}VW12\.5.{0,29}VectorWorks
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x07\xf2\x00\x00\x00\x00\x00\x00\x00T\x00 VW12\.5.{0,3}VW12\.5.{0,29}VectorWorks
[end]

[begin]
[id]: 15157
[puid]: fmt/451
[name]: VectorWorks
[extension]: vwx
[reg]
[reg_bof]: (?s)\A\x00\x00\x08X\x00\x00\x00\x00\x00\x00\x00\x94\x00 VW14\.0.{0,3}VW14\.0.{0,29}VectorWorks
[end]

[begin]
[id]: 15158
[puid]: fmt/453
[name]: Verity Collection Stop List
[extension]: stp
[reg]
[reg_bof]: (?s)\Aacdekkms\r\n
[reg_eof]: (?s)\r\n\Z
[end]

[begin]
[id]: 15159
[puid]: fmt/454
[name]: Verity Collection Index About File
[extension]: abt
[reg]
[reg_bof]: (?s)\A\$control: 1.{0,1}\ncollection_about:
[end]

[begin]
[id]: 15160
[puid]: fmt/455
[name]: Verity Collection Index Pending Transaction File
[extension]: trn
[reg]
[reg_bof]: (?s)\ALAST LOGCHECK ".{24}"\nLAST CLEAN .{0,1}".{24}"\nLAST OPTIMIZE .{0,1}".*"\n
[end]

[begin]
[id]: 15161
[puid]: fmt/456
[name]: Verity Collection Index Style Policy
[extension]: plc
[reg]
[reg_bof]: (?s)\A# style\.plc\x091\.11 - 3/2/94\r\n# @\(#\)Copyright \(C\) 1987-1994 Verity, Inc\.\r\n#\r\n#
[reg_eof]: (?s)\}\r\n\}\r\n\Z
[end]

[begin]
[id]: 15162
[puid]: fmt/457
[name]: Verity Collection Document Dataset Descriptor Style Set
[extension]: ddd
[reg]
[reg_bof]: (?s)\A# style\.ddd\x091\.7 - 1/18/94\r\n# @\(#\)
[reg_eof]: (?s)\}\r\n\r\n\r\n\}\r\n\Z
[end]

[begin]
[id]: 15163
[puid]: fmt/458
[name]: Verity Collection Document Index Descriptor Style Set
[extension]: did
[reg]
[reg_bof]: (?s)\A# style\.did\x091\.3 - 1/11/94\r\n# @\(#\)
[reg_eof]: (?s)\}\r\n\}\r\n\Z
[end]

[begin]
[id]: 15164
[puid]: fmt/459
[name]: Verity Collection Word List Descriptor Style Set
[extension]: wld
[reg]
[reg_bof]: (?s)\A# style\.wld\x091\.5 - 1/11/94\r\n# @\(#\)
[reg_eof]: (?s)\}\r\n\}\r\n\$\$\r\n\Z
[end]

[begin]
[id]: 15165
[puid]: fmt/460
[name]: Verity Collection Partition Definition Descriptor Style Set
[extension]: pdd
[reg]
[reg_bof]: (?s)\A# fashion\.pdd - written by mkprtind - Sat Dec 07 00:12:02 1991\r\n
[reg_eof]: (?s)\}\r\n\}\r\n\Z
[end]

[begin]
[id]: 15166
[puid]: fmt/461
[name]: Verity Collection Index Descriptor File
[extension]: wld ddd did pdd
[reg]
[reg_bof]: (?s)\AtWbc.{60}\$\$\$.{57}\$\$f\x00
[end]

[begin]
[id]: 15167
[puid]: fmt/462
[name]: MS DOS Compression format
[reg]
[reg_bof]: (?s)\ASZDD\x88\xf0'3A
[end]

[begin]
[id]: 15168
[puid]: fmt/469
[name]: MS DOS Compression format (KWAJ variant)
[reg]
[reg_bof]: (?s)\AKWAJ\x88\xf0'\xd1
[end]

[begin]
[id]: 15169
[puid]: fmt/470
[name]: Asymetrix Toolbook File
[extension]: tbk sbk
[reg]
[reg_bof]: (?s)\A\x03JBO
[end]

[begin]
[id]: 15170
[puid]: fmt/472
[name]: Sony Digital Voice File/Sony Memory Stick Voice File
[extension]: msv dvf
[reg]
[reg_bof]: (?s)\AMS_VOICE\x00\x00\x00P\x01\x02\x00\x00SONY CORPORATION
[end]

[begin]
[id]: 15171
[puid]: fmt/485
[name]: Rocket Book eBook format
[extension]: rb
[reg]
[reg_bof]: (?s)\A\xb0\x0c\xb0\x0c.{2}NUVO
[end]

[begin]
[id]: 15172
[puid]: fmt/495
[name]: ATCO-CIF
[extension]: cif
[reg]
[reg_bof]: (?s)\A.{0,0}ATCO-CIF
[end]

[begin]
[id]: 15173
[puid]: fmt/496
[name]: TransXchange File Format
[extension]: txc
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version=(?:"|')1\.0.{0,64}\x3cTransXChange xsi:schemaLocation="http://www\.transxchange\.org\.uk/
[end]

[begin]
[id]: 15174
[puid]: fmt/498
[name]: ActiveX License Package file
[extension]: lpk
[reg]
[reg_bof]: (?s)\A.{0,0}LPK License Package\r\n\r
[end]

[begin]
[id]: 15175
[puid]: fmt/499
[name]: VivoActive
[extension]: viv
[reg]
[reg_bof]: (?s)\A.{3}\r\nVersion:Vivo/1\.00
[reg]
[reg_bof]: (?s)\A.{3}\r\nVersion:Vivo/2\.00
[end]

[begin]
[id]: 15176
[puid]: fmt/504
[name]: Standard Flowgram Format
[extension]: sff
[reg]
[reg_bof]: (?s)\A.{0,0}\.sff\x00\x00\x00\x01
[end]

[begin]
[id]: 15177
[puid]: fmt/508
[name]: Quarter Inch Cartridge Host Interchange Format
[extension]: qic
[reg]
[reg_bof]: (?s)\A.{0,0}VTBL.{54}(?:AS|q\x00).{66}\x00\x00
[end]

[begin]
[id]: 15178
[puid]: fmt/510
[name]: PowerProject Teamplan
[extension]: pdb
[reg]
[reg_bof]: (?s)\A.{43}Database Version.{15}a\xea
[end]

[begin]
[id]: 15179
[puid]: fmt/511
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000007006 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15180
[puid]: fmt/512
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000008020 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15181
[puid]: fmt/513
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000009006 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15182
[puid]: fmt/514
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000010008 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15183
[puid]: fmt/515
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000011004 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15184
[puid]: fmt/516
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000012002 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15185
[puid]: fmt/517
[name]: PowerProject
[extension]: pp
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x0000000012005 .{13}//dodl version and file id\r\n
[end]

[begin]
[id]: 15186
[puid]: fmt/518
[name]: Broad Band eBook
[extension]: lrf
[reg]
[reg_bof]: (?s)\A.{0,0}L\x00R\x00F\x00\x00\x00
[end]

[begin]
[id]: 15187
[puid]: fmt/519
[name]: Polynomial Texture Map
[extension]: ptm
[reg]
[reg_bof]: (?s)\A.{0,0}PTM_1\.2\nPTM_FORMAT_
[end]

[begin]
[id]: 15188
[puid]: fmt/520
[name]: OpenType Font File
[extension]: otf
[reg]
[reg_bof]: (?s)\A.{0,0}OTTO.{8,40}CFF 
[end]

[begin]
[id]: 15189
[puid]: fmt/522
[name]: Open Project File
[extension]: pod
[reg]
[reg_bof]: (?s)\A.{16}com\.projity\.server\.data\.ProjectData
[end]

[begin]
[id]: 15190
[puid]: fmt/542
[name]: GEM Metafile Format
[extension]: gem
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xff\x00(?:\x18|\x0e)\x00e\x00(?:\x02|\x00)
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xff(?:\x18|\x0e)\x00e\x00(?:\x02|\x00)\x00
[end]

[begin]
[id]: 15191
[puid]: fmt/543
[name]: GEM Metafile Format
[extension]: gem
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xff\x18\x006\x01(?:\x02|\x00)\x00
[end]

[begin]
[id]: 15192
[puid]: fmt/574
[name]: Digital Imaging and Communications in Medicine file format
[extension]: dcm
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00DICM
[end]

[begin]
[id]: 15193
[puid]: fmt/575
[name]: GraphPad Prism
[extension]: pzm
[reg]
[reg_bof]: (?s)\A.{0,0}PCFFGRAF
[end]

[begin]
[id]: 15194
[puid]: fmt/576
[name]: GraphPad Prism
[extension]: pzf
[reg]
[reg_bof]: (?s)\A.{0,0}PCFFGRA4
[end]

[begin]
[id]: 15195
[puid]: fmt/586
[name]: LifeTechnologies SDS
[extension]: sds
[reg]
[reg_bof]: (?s)\A.{0,0}SDS2\x00\x02\x00\x02
[end]

[begin]
[id]: 15196
[puid]: fmt/587
[name]: LifeTechnologies ABIF
[extension]: abif
[reg]
[reg_bof]: (?s)\A.{0,0}ABIF\x00e
[end]

[begin]
[id]: 15197
[puid]: fmt/612
[name]: Mork
[extension]: mab msf dat
[reg]
[reg_bof]: (?s)\A.{0,0}// \x3c\!-- \x3cmdb:mork:z 
[end]

[begin]
[id]: 15198
[puid]: fmt/614
[name]: Windows Imaging Format
[extension]: wim swm
[reg]
[reg_bof]: (?s)\A.{0,0}MSWIM
[end]

[begin]
[id]: 15199
[puid]: fmt/616
[name]: Web Open Font Format
[mime]: application/font-woff
[extension]: woff
[reg]
[reg_bof]: (?s)\A.{0,0}wOFF
[end]

[begin]
[id]: 15200
[puid]: fmt/618
[name]: GeoGebra
[extension]: geo
[reg]
[reg_bof]: (?s)\A.{0,0}\xac\xed\x00\x05sr\x00\x1bgeogebra
[end]

[begin]
[id]: 15201
[puid]: fmt/623
[name]: SmartDraw
[extension]: sdr
[reg]
[reg_bof]: (?s)\A.{0,0}SMARTDRW\x01\x80
[end]

[begin]
[id]: 15202
[puid]: fmt/624
[name]: RIFF Palette Format
[extension]: pal
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}PAL data
[end]

[begin]
[id]: 15203
[puid]: fmt/626
[name]: LHA File Format
[extension]: lha lzh
[reg]
[reg_bof]: (?s)\A.{2}-lh(?:0|1|4|5|6|7|d)-
[end]

[begin]
[id]: 15204
[puid]: fmt/635
[name]: CPIO
[extension]: cpio
[reg]
[reg_bof]: (?s)\A.{0,0}\xc7q
[end]

[begin]
[id]: 15205
[puid]: fmt/638
[name]: SPSS Data File
[extension]: sav
[reg]
[reg_bof]: (?s)\A.{0,0}\$FL2@\(#\)
[end]

[begin]
[id]: 15206
[puid]: fmt/643
[name]: ASTM E57 3D File Format
[extension]: e57
[reg]
[reg_bof]: (?s)\A.{0,0}ASTM-E57
[end]

[begin]
[id]: 15207
[puid]: fmt/644
[name]: Nullsoft Scriptable Install System
[extension]: nsi
[end]

[begin]
[id]: 15208
[puid]: fmt/650
[name]: Quark Xpress Report File
[extension]: qxp report xtg qxp%20report
[reg]
[reg_bof]: (?s)\A\x3cv1\.60\x3e\x3ce(?:0|1)\x3e\r.{1,512}Project has been saved by the following versions of QuarkXPress
[reg]
[reg_bof]: (?s)\A.{0,2}\x3c\x00v\x001\x00\.\x006\x000\x00\x3e\x00\x3c\x00e\x00(?:0|1)\x00\x3e\x00.{1,1024}P\x00r\x00o\x00j\x00e\x00c\x00t\x00 \x00h\x00a\x00s\x00 \x00b\x00e\x00e\x00n\x00 \x00s\x00a\x00v\x00e\x00d\x00 \x00b\x00y\x00 \x00t\x00h\x00e\x00 \x00f\x00o\x00l\x00l\x00o\x00w\x00i\x00n\x00g\x00 \x00v\x00e\x00r\x00s\x00i\x00o\x00n\x00s\x00 \x00o\x00f\x00 \x00Q\x00u\x00a\x00r\x00k\x00X\x00P\x00r\x00e\x00s\x00s\x00
[reg]
[reg_bof]: (?s)\A\x3cv1\.60\x3e\x3ce(?:0|1)\x3e\r.{1,512}Document has been saved by the following versions of QuarkXPress
[end]

[begin]
[id]: 15209
[puid]: fmt/651
[name]: Quark Xpress Data File
[extension]: qct qpt qcd qxp
[reg]
[reg_bof]: (?s)\A\x00\x00MMXPR
[reg_var]: (?s)QuarkXPress 10
[reg]
[reg_bof]: (?s)\A\x00\x00IIXPR
[reg_var]: (?s)QuarkXPress 10
[end]

[begin]
[id]: 15210
[puid]: fmt/652
[name]: Quark Xpress Data File
[extension]: qct qpt qcd qxp
[reg]
[reg_bof]: (?s)\A\x00\x00IIXPR
[reg_var]: (?s)QXPPP6
[reg]
[reg_bof]: (?s)\A\x00\x00MMXPR
[reg_var]: (?s)QXPPP6
[end]

[begin]
[id]: 15211
[puid]: fmt/653
[name]: INTERLIS Transfer File
[extension]: xtf
[reg]
[reg_bof]: (?s)\A.{0,3}\x3c\?xml version=(?:"|')1\.0(?:"|') encoding=(?:"|')UTF-8(?:"|').{0,2}\?\x3e.{0,256}\x3cTRANSFER xmlns=(?:"|')http://www\.interlis\.ch/INTERLIS2\.3(?:"|')
[reg]
[reg_bof]: (?s)\A.{0,2}\x3c\x00\?\x00x\x00m\x00l\x00 \x00v\x00e\x00r\x00s\x00i\x00o\x00n\x00=\x00(?:"|')\x001\x00\.\x000\x00(?:"|')\x00 \x00e\x00n\x00c\x00o\x00d\x00i\x00n\x00g\x00=\x00(?:"|')\x00U\x00T\x00F\x00-\x008\x00(?:"|')\x00\?\x00\x3e.{0,512}\x3c\x00T\x00R\x00A\x00N\x00S\x00F\x00E\x00R\x00 \x00x\x00m\x00l\x00n\x00s\x00=\x00(?:"|')\x00h\x00t\x00t\x00p\x00:\x00/\x00/\x00w\x00w\x00w\x00\.\x00i\x00n\x00t\x00e\x00r\x00l\x00i\x00s\x00\.\x00c\x00h\x00/\x00I\x00N\x00T\x00E\x00R\x00L\x00I\x00S\x002\x00\.\x003
[end]

[begin]
[id]: 15212
[puid]: fmt/654
[name]: INTERLIS Model File
[extension]: ili
[reg]
[reg_bof]: (?s)\A.{0,4096}INTERLIS 2\.3;\r.{1,1024}MODEL.{1,64}AT.{1,64}VERSION
[end]

[begin]
[id]: 15213
[puid]: fmt/655
[name]: KryoFlux
[extension]: raw
[reg]
[reg_bof]: (?s)\A.{0,54}KryoFlux DiskSystem, version=2\.00n
[end]

[begin]
[id]: 15214
[puid]: fmt/656
[name]: KryoFlux
[extension]: raw
[reg]
[reg_bof]: (?s)\A.{0,54}KryoFlux DiskSystem, version=2\.20s
[end]

[begin]
[id]: 15215
[puid]: fmt/659
[name]: Industry Foundation Classes
[extension]: ifc
[reg]
[reg_bof]: (?s)\A.{0,0}ISO-10303-21.{0,4096}FILE_SCHEMA.{0,1}\(.{0,1}\('IFC2X2
[end]

[begin]
[id]: 15216
[puid]: fmt/662
[name]: Panasonic Raw
[extension]: RW2
[reg]
[reg_bof]: (?s)\A.{0,0}IIU\x00\x18\x00\x00\x00\x88\xe7t\xd8
[end]

[begin]
[id]: 15217
[puid]: fmt/663
[name]: Industry Foundation Classes XML
[extension]: ifcXML
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version=(?:"|')1\.0(?:"|').{0,32}iso_10303_28
[end]

[begin]
[id]: 15218
[puid]: fmt/668
[name]: Olympus RAW
[extension]: orf
[reg]
[reg_bof]: (?s)\A.{0,0}MMOR\x00\x00\x00\x08
[reg]
[reg_bof]: (?s)\A.{0,0}IIRO\x08\x00\x00\x00
[reg]
[reg_bof]: (?s)\A.{0,0}IIRS\x08\x00\x00\x00
[end]

[begin]
[id]: 15219
[puid]: fmt/669
[name]: Minolta RAW
[extension]: mrw
[reg]
[reg_bof]: (?s)\A.{0,0}\x00MRM\x00
[end]

[begin]
[id]: 15220
[puid]: fmt/670
[name]: PKCS #7 Crytographic message file
[extension]: p7m
[reg]
[reg_bof]: (?s)\A.{0,16}\*\x86H\x86\xf7\r\x01\x07.{0,64}\*\x86H\x86\xf7\r\x01\x07
[end]

[begin]
[id]: 15221
[puid]: fmt/683
[name]: Advanced Function Presentation
[extension]: afp
[reg]
[reg_bof]: (?s)\A.{0,2}Z.{2}\xd3\xa8
[end]

[begin]
[id]: 15222
[puid]: fmt/684
[name]: Vectorworks
[extension]: vwx
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x08\xa8\x00\x00\x00\x00\x00\x00\x00\x94\x00 VW20\.0.{0,3}VW20\.0.{0,29}VectorWorks
[end]

[begin]
[id]: 15223
[puid]: fmt/685
[name]: Quark Xpress Data File
[extension]: qxp qct qcd qpt
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00MMXPR
[reg_var]: (?s)QuarkXPress 9
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00IIXPR
[reg_var]: (?s)QuarkXPress 9
[end]

[begin]
[id]: 15224
[puid]: fmt/686
[name]: Vectorworks
[extension]: vwx
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x08X\x00\x00\x00\x00\x00\x00\x00\x94\x00 VW15\.0.{0,3}VW15\.0.{0,29}VectorWorks
[end]

[begin]
[id]: 15225
[puid]: fmt/687
[name]: Better Portable Graphics
[extension]: bpg
[reg]
[reg_bof]: (?s)\A.{0,0}BPG\xfb
[end]

[begin]
[id]: 15226
[puid]: fmt/692
[name]: Mach-O
[reg]
[reg_bof]: (?s)\A.{0,0}\xfe\xed\xfa\xce
[reg]
[reg_bof]: (?s)\A.{0,0}\xce\xfa\xed\xfe
[end]

[begin]
[id]: 15227
[puid]: fmt/693
[name]: Mach-O
[reg]
[reg_bof]: (?s)\A.{0,0}\xfe\xed\xfa\xcf
[reg]
[reg_bof]: (?s)\A.{0,0}\xcf\xfa\xed\xfe
[end]

[begin]
[id]: 15228
[puid]: fmt/694
[name]: Dalvik Executable Format
[extension]: dex
[reg]
[reg_bof]: (?s)\A.{0,0}dex\n.{3}\x00
[end]

[begin]
[id]: 15229
[puid]: fmt/695
[name]: Optimised Dalvik Executable Format
[extension]: odex
[reg]
[reg_bof]: (?s)\A.{0,0}dey\n.{3}\x00
[end]

[begin]
[id]: 15230
[puid]: fmt/696
[name]: Sibelius
[extension]: sib
[reg]
[reg_bof]: (?s)\A.{0,0}\x0fSIBELIUS
[end]

[begin]
[id]: 15231
[puid]: fmt/697
[name]: Additive Manufacturing File Format
[extension]: amf
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version=(?:"|')1\.0(?:"|').{1,256}\x3camf.{1,128}\x3cobject id=
[end]

[begin]
[id]: 15232
[puid]: fmt/698
[name]: Standard for the Exchange of Product model data
[extension]: step stp p21
[reg]
[reg_bof]: (?s)\A.{0,0}ISO-10303-21;
[end]

[begin]
[id]: 15233
[puid]: fmt/699
[name]: Industry Foundation Classes
[extension]: ifc
[reg]
[reg_bof]: (?s)\A.{0,0}ISO-10303-21.{0,4096}FILE_SCHEMA.{0,1}\(.{0,1}\('IFC2X3
[end]

[begin]
[id]: 15234
[puid]: fmt/700
[name]: Industry Foundation Classes
[extension]: ifc
[reg]
[reg_bof]: (?s)\A.{0,0}ISO-10303-21.{0,4096}FILE_SCHEMA.{0,1}\(.{0,1}\('IFC4
[end]

[begin]
[id]: 15235
[puid]: fmt/702
[name]: Universal 3D File Format
[extension]: u3d
[reg]
[reg_bof]: (?s)\A.{0,0}U3D\x00
[end]

[begin]
[id]: 15236
[puid]: fmt/717
[name]: Scream Tracker Module
[extension]: stm
[reg]
[reg_bof]: (?s)\A.{20}\!Scream\!\x1a
[end]

[begin]
[id]: 15237
[puid]: fmt/718
[name]: Scream Tracker Module
[extension]: s3m
[reg]
[reg_bof]: (?s)\A.{28}\x1a\x10\x00\x00.{12}SCRM
[end]

[begin]
[id]: 15238
[puid]: fmt/719
[name]: MultiTracker Module
[extension]: mtm
[reg]
[reg_bof]: (?s)\A.{0,0}MTM\x10
[end]

[begin]
[id]: 15239
[puid]: fmt/723
[name]: Farandole Composer Module
[extension]: far
[reg]
[reg_bof]: (?s)\A.{0,0}FAR\xfe
[end]

[begin]
[id]: 15240
[puid]: fmt/726
[name]: Virtual Disk Image
[extension]: vdi
[reg]
[reg_bof]: (?s)\A.{64}\x7f\x10\xda\xbe
[end]

[begin]
[id]: 15241
[puid]: fmt/727
[name]: Cartesian Perceptual Compression image format
[extension]: cpi cpc
[reg]
[reg_bof]: (?s)\A.{0,0}CPC\xb2
[end]

[begin]
[id]: 15242
[puid]: fmt/728
[name]: RealLegal E-Transcript
[extension]: ptx
[reg]
[reg_bof]: (?s)\A.{10}\x00\x00\x02
[reg_var]: (?s)\x00This transcript created and delivered by\r\n\x3cCOMPANY\x3e\.\r\nPh:
[end]

[begin]
[id]: 15243
[puid]: fmt/733
[name]: FL Studio project file (FLP)
[extension]: flp
[reg]
[reg_bof]: (?s)\A.{0,0}FLhd
[end]

[begin]
[id]: 15244
[puid]: fmt/734
[name]: SuperScape Virtual Reality format
[extension]: svr
[reg]
[reg_bof]: (?s)\A.{0,0}SVR\x08\x00\x00\x00\x01\xec
[end]
