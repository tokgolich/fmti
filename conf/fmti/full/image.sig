[begin]
[id]: 25001
[puid]: fmt/566
[name]: WebP
[extension]: webp
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WEBPVP8 
[end]

[begin]
[id]: 25002
[puid]: fmt/567
[name]: WebP
[extension]: webp
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WEBPVP8L
[end]

[begin]
[id]: 25003
[puid]: fmt/568
[name]: WebP
[extension]: webp
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WEBPVP8X
[end]

[begin]
[id]: 25004
[puid]: x-fmt/80
[name]: Macintosh PICT Image
[mime]: image/x-pict
[extension]: pct pict
[reg]
[reg_bof]: (?s)\A.{0,0}DRWG(?:MD|D2).{516}\x11\x01
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x00\x00\x00\x00.{516}\x11\x01
[end]

[begin]
[id]: 25005
[puid]: x-fmt/119
[name]: Windows Metafile Image
[extension]: wmf
[reg]
[reg_bof]: (?s)\A\xd7\xcd\xc6\x9a\x00\x00.{16}\x01\x00\x09\x00
[end]

[begin]
[id]: 25006
[puid]: x-fmt/140
[name]: Silicon Graphics Image
[mime]: image/x-sgi-bw
[extension]: bw rgb
[reg]
[reg_bof]: (?s)\A\x01\xda(?:\x00|\x01)(?:\x01|\x02)\x00(?:\x01|\x02|\x03).{4}\x00(?:\x01|\x03|\x04).{80}\x00(?:\x00|\x01|\x02|\x03).{368}\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 25007
[puid]: x-fmt/142
[name]: Computer Graphics Metafile ASCII
[mime]: image/cgm
[extension]: cgm
[reg]
[reg_bof]: (?s)\AB(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}1
[reg_eof]: (?s)E(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\AB(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}1
[reg_eof]: (?s)e(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\Ab(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}1
[reg_eof]: (?s)E(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[reg]
[reg_bof]: (?s)\Ab(?:E|e)(?:G|g)(?:M|m)(?:F|f).*(?:M|m)(?:F|f)(?:V|v)(?:e|E)(?:R|r)(?:S|s)(?:I|i)(?:O|o)(?:N|n).{1}1
[reg_eof]: (?s)e(?:N|n)(?:D|d)(?:M|m)(?:F|f).{0,1};.{0,2048}\Z
[end]

[begin]
[id]: 25008
[puid]: x-fmt/153
[name]: Microsoft Windows Enhanced Metafile
[mime]: image/x-emf
[extension]: emf
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00X\x00\x00\x00.{32} EMF\x00\x00\x01\x00.{16}\x00\x00\x00\x00
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00.{36} EMF\x00\x00\x01\x00.{16}X\x00\x00\x00
[end]

[begin]
[id]: 25009
[puid]: x-fmt/159
[name]: GEM Image
[extension]: img
[reg]
[reg_bof]: (?s)\A\x00\x01\x00\x08\x00(?:\x01|\x04)\x00\x02
[end]

[begin]
[id]: 25010
[puid]: x-fmt/164
[name]: Portable Bitmap Image - ASCII
[mime]: image/x-portable-bitmap
[extension]: pbm
[reg]
[reg_bof]: (?s)\AP1(?: |\x09|\r\n|\n)
[reg_eof]: (?s)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)(?:0|1| |\n|\r)\n.{0,70}\Z
[end]

[begin]
[id]: 25011
[puid]: x-fmt/170
[name]: PC Paint Bitmap
[extension]: pic
[reg]
[reg_bof]: (?s)\A.{0,0}4\x12.{9}\xff
[end]

[begin]
[id]: 25012
[puid]: x-fmt/178
[name]: Portable Pixel Map - ASCII
[mime]: image/x-portable-pixmap
[extension]: ppm
[reg]
[reg_bof]: (?s)\AP3(?: |\x09|\r\n|\n)
[reg_eof]: (?s)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r) .{0,4}\Z
[end]

[begin]
[id]: 25013
[puid]: x-fmt/184
[name]: Sun Raster Image
[mime]: image/x-sun-raster
[extension]: ras sun
[reg]
[reg_bof]: (?s)\AY\xa6j\x95.{8}\x00\x00\x00.{5}\x00\x00\x00.?\x00\x00\x00.?
[end]

[begin]
[id]: 25014
[puid]: x-fmt/207
[name]: X-Windows Bitmap Image
[mime]: image/x-xbitmap
[extension]: xbm
[reg]
[reg_bof]: (?s)\A#define .{1,30}_width .{1,16}#define .{1,30}_height .{1,300}static (?:char|unsigned char) .*_bits\[\] = \{
[end]

[begin]
[id]: 25015
[puid]: x-fmt/208
[name]: X-Windows Pixmap Image
[mime]: image/x-xpixmap
[extension]: xpm
[reg]
[reg_bof]: (?s)\A/\* XPM \*/.*\nstatic char \* 
[reg_eof]: (?s)\}(?:;| ;).{0,4}\Z
[end]

[begin]
[id]: 25016
[puid]: x-fmt/233
[name]: Paint Shop Pro Image
[extension]: psp
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x03\x00
[end]

[begin]
[id]: 25017
[puid]: x-fmt/234
[name]: Paint Shop Pro Image
[extension]: psp
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x05\x00
[end]

[begin]
[id]: 25018
[puid]: x-fmt/270
[name]: OS/2 Bitmap
[mime]: image/bmp
[extension]: bmp
[reg]
[reg_bof]: (?s)\ABM.{12}(?:\x10|0|@)\x00\x00\x00.{8}\x01\x00
[reg]
[reg_bof]: (?s)\ABM.{12}\(\x00\x00\x00.{8}\x01\x00\x18\x00\x04\x00\x00\x00
[reg]
[reg_bof]: (?s)\ABM.{12}\(\x00\x00\x00.{8}\x01\x00\x01\x00\x03\x00\x00\x00
[end]

[begin]
[id]: 25019
[puid]: x-fmt/290
[name]: AMI Draw Vector Image
[extension]: sdw
[reg]
[reg_bof]: (?s)\AAMI_METAFILE_FORMAT VERSION
[end]

[begin]
[id]: 25020
[puid]: x-fmt/297
[name]: Paint Shop Pro Image
[extension]: psp pspimage
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x06\x00
[end]

[begin]
[id]: 25021
[puid]: x-fmt/298
[name]: Paint Shop Pro Image
[extension]: psp pspimage
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x07\x00
[end]

[begin]
[id]: 25022
[puid]: x-fmt/299
[name]: X-Windows Bitmap Image
[mime]: image/x-xbitmap
[extension]: xbm
[reg]
[reg_bof]: (?s)\A#define .{1,30}_width .{1,16}#define .{1,30}_height .*static unsigned short .{1,30}_bits\[\] = \{
[end]

[begin]
[id]: 25023
[puid]: x-fmt/300
[name]: X-Windows Screen Dump File
[mime]: image/x-xwindowdump
[extension]: xdm xwd
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\(\x00\x00\x00\x06.{4}\x00\x00\x00.?\x00\x00\x00(?:\x00|\x01)
[end]

[begin]
[id]: 25024
[puid]: x-fmt/320
[name]: Fractal Image
[extension]: fif
[reg]
[reg_bof]: (?s)\AFIF\x01.{52}\xc0
[end]

[begin]
[id]: 25025
[puid]: x-fmt/348
[name]: Multipage Zsoft Paintbrush Bitmap Graphics
[mime]: image/x-dcx
[extension]: dcx
[reg]
[reg_bof]: (?s)\A\xb1h\xde:
[end]

[begin]
[id]: 25026
[puid]: x-fmt/376
[name]: Paint Shop Pro Image
[extension]: pspimage
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x08\x00
[end]

[begin]
[id]: 25027
[puid]: x-fmt/377
[name]: Paint Shop Pro Image
[extension]: psp
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x04\x00
[end]

[begin]
[id]: 25028
[puid]: fmt/3
[name]: Graphics Interchange Format
[mime]: image/gif
[extension]: gif
[reg]
[reg_bof]: (?s)\AGIF87a
[reg_eof]: (?s);\Z
[end]

[begin]
[id]: 25029
[puid]: fmt/4
[name]: Graphics Interchange Format
[mime]: image/gif
[extension]: gif
[reg]
[reg_bof]: (?s)\AGIF89a
[reg_eof]: (?s);\Z
[end]

[begin]
[id]: 25030
[puid]: fmt/91
[name]: Scalable Vector Graphics
[mime]: image/svg+xml
[extension]: svg
[reg]
[reg_bof]: (?s)\A\x3c\?xml version="1\.0".*\x3csvg.*svg\x3e
[end]

[begin]
[id]: 25031
[puid]: fmt/92
[name]: Scalable Vector Graphics
[mime]: image/svg+xml
[extension]: svg
[reg]
[reg_bof]: (?s)\A\x3c\?xml version="1\.0".*\x3csvg.*version="1\.1".*svg\x3e
[end]

[begin]
[id]: 25032
[puid]: x-fmt/383
[name]: Flexible Image Transport System
[mime]: application/fits, image/fits
[extension]: fits
[reg]
[reg_bof]: (?s)\ASIMPLE  =                    T.{50}BITPIX  =.{19}(?: 8|\+8|08|16|32|64).{50}NAXIS   =
[end]

[begin]
[id]: 25033
[puid]: fmt/11
[name]: Portable Network Graphics
[mime]: image/png
[extension]: png
[reg]
[reg_bof]: (?s)\A\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR
[reg_eof]: (?s)\x00\x00\x00\x00IEND\xaeB\x60\x82\Z
[end]

[begin]
[id]: 25034
[puid]: fmt/12
[name]: Portable Network Graphics
[mime]: image/png
[extension]: png
[reg]
[reg_bof]: (?s)\A\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR.*iCCP
[reg_eof]: (?s)\x00\x00\x00\x00IEND\xaeB\x60\x82\Z
[reg]
[reg_bof]: (?s)\A\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR.*sPLT
[reg_eof]: (?s)\x00\x00\x00\x00IEND\xaeB\x60\x82\Z
[reg]
[reg_bof]: (?s)\A\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR.*sRGB
[reg_eof]: (?s)\x00\x00\x00\x00IEND\xaeB\x60\x82\Z
[end]

[begin]
[id]: 25035
[puid]: fmt/13
[name]: Portable Network Graphics
[mime]: image/png
[extension]: png
[reg]
[reg_bof]: (?s)\A\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR.*iTXt
[reg_eof]: (?s)\x00\x00\x00\x00IEND\xaeB\x60\x82\Z
[end]

[begin]
[id]: 25036
[puid]: fmt/42
[name]: JPEG File Interchange Format
[mime]: image/jpeg
[extension]: jpeg jpe jpg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe0.{2}JFIF\x00\x01\x00(?:\x00|\x01|\x02)
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[end]

[begin]
[id]: 25037
[puid]: fmt/43
[name]: JPEG File Interchange Format
[mime]: image/jpeg
[extension]: jpg jpe jpeg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe0.{2}JFIF\x00\x01\x01(?:\x00|\x01|\x02)
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[end]

[begin]
[id]: 25038
[puid]: fmt/44
[name]: JPEG File Interchange Format
[mime]: image/jpeg
[extension]: jpg jpe jpeg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe0.{2}JFIF\x00\x01\x02(?:\x00|\x01|\x02)
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[end]

[begin]
[id]: 25039
[puid]: fmt/41
[name]: Raw JPEG Stream
[mime]: image/jpeg
[extension]: jpe jpg jpeg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xed.{2}Photoshop 3\.0\x008BIM
[reg_eof]: (?s)\xff\xd9.{0,16000}\Z
[end]

[begin]
[id]: 25040
[puid]: fmt/112
[name]: Still Picture Interchange File Format
[mime]: image/jpeg
[extension]: spf jpg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe8\x00 SPIFF\x00\x01\x00(?:\x00|\x01|\x02|\x03|\x04).{11}(?:\x00|\x01|\x02|\x03|\x04|\x05).{9}\xff\xe8
[end]

[begin]
[id]: 25041
[puid]: x-fmt/387
[name]: Exchangeable Image File Format (Uncompressed)
[mime]: image/tiff
[extension]: tif
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\x90\x00\x00\x07\x00\x00\x00\x040220.{0,65535}\Z
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x00\x90\x07\x00\x04\x00\x00\x000220.{0,65535}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_var]: (?s)\A.{10,65535}\x90\x00\x00\x07\x00\x00\x00\x040220
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_var]: (?s)\A.{10,65535}\x00\x90\x07\x00\x04\x00\x00\x000220
[end]

[begin]
[id]: 25042
[puid]: x-fmt/388
[name]: Exchangeable Image File Format (Uncompressed)
[mime]: image/tiff
[extension]: tif
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\x90\x00\x00\x07\x00\x00\x00\x040210.{0,65535}\Z
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x00\x90\x07\x00\x04\x00\x00\x000210.{0,65535}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_var]: (?s)\A.{10,65535}\x90\x00\x00\x07\x00\x00\x00\x040210
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_var]: (?s)\A.{10,65535}\x00\x90\x07\x00\x04\x00\x00\x000210
[end]

[begin]
[id]: 25043
[puid]: x-fmt/390
[name]: Exchangeable Image File Format (Compressed)
[mime]: image/jpeg
[extension]: jpg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe1.{2}Exif\x00\x00MM\x00\*.*\x90\x00\x00\x07\x00\x00\x00\x040210
[reg_eof]: (?s)\xff\xd9.{0,16000}\Z
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe1.{2}Exif\x00\x00II\*\x00.*\x00\x90\x07\x00\x04\x00\x00\x000210
[reg_eof]: (?s)\xff\xd9.{0,16000}\Z
[end]

[begin]
[id]: 25044
[puid]: x-fmt/391
[name]: Exchangeable Image File Format (Compressed)
[mime]: image/jpeg
[extension]: jpg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe1.{2}Exif\x00\x00MM\x00\*.*\x90\x00\x00\x07\x00\x00\x00\x040220
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe1.{2}Exif\x00\x00II\*\x00.*\x00\x90\x07\x00\x04\x00\x00\x000220
[reg_eof]: (?s)\xff\xd9.{0,16000}\Z
[end]

[begin]
[id]: 25045
[puid]: x-fmt/392
[name]: JP2 (JPEG 2000 part 1)
[mime]: image/jp2
[extension]: jp2
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x0cjP  \r\n\x87\n.{4}ftypjp2
[end]

[begin]
[id]: 25046
[puid]: fmt/114
[name]: Windows Bitmap
[mime]: image/bmp
[extension]: ddb bmp
[reg]
[reg_bof]: (?s)\A\x00\x00.{6}\x01(?:\x01|\x04|\x08)
[end]

[begin]
[id]: 25047
[puid]: fmt/115
[name]: Windows Bitmap
[mime]: image/bmp
[extension]: bmp dib
[reg]
[reg_bof]: (?s)\ABM.{4}\x00\x00\x00\x00.{4}\x0c\x00\x00\x00.{4}\x01\x00(?:\x01|\x04|\x08|\x18)\x00
[end]

[begin]
[id]: 25048
[puid]: fmt/116
[name]: Windows Bitmap
[mime]: image/bmp
[extension]: dib bmp
[reg]
[reg_bof]: (?s)\ABM.{4}\x00\x00\x00\x00.{4}\(\x00\x00\x00.{8}\x01\x00(?:\x01|\x04|\x08|\x18)\x00(?:\x00|\x01|\x02)\x00\x00\x00
[end]

[begin]
[id]: 25049
[puid]: fmt/117
[name]: Windows Bitmap
[mime]: image/bmp
[extension]: dib bmp
[reg]
[reg_bof]: (?s)\ABM.{4}\x00\x00\x00\x00.{4}\(\x00\x00\x00.{8}\x01\x00(?:\x10| )\x00\x03\x00\x00\x00
[end]

[begin]
[id]: 25050
[puid]: fmt/118
[name]: Windows Bitmap
[mime]: image/bmp
[extension]: bmp dib
[reg]
[reg_bof]: (?s)\ABM.{4}\x00\x00\x00\x00.{4}l\x00\x00\x00.{8}\x01\x00(?:\x01|\x04|\x08|\x10|\x18| )\x00(?:\x00|\x01|\x02|\x03)\x00\x00\x00\x00
[end]

[begin]
[id]: 25051
[puid]: fmt/119
[name]: Windows Bitmap
[mime]: image/bmp
[extension]: bmp dib
[reg]
[reg_bof]: (?s)\ABM.{4}\x00\x00\x00\x00.{4}\|\x00\x00\x00.{8}\x01\x00(?:\x01|\x04|\x08|\x10|\x18| )\x00(?:\x00|\x01|\x02|\x03|\x04|\x05)\x00\x00\x00\x00
[end]

[begin]
[id]: 25052
[puid]: x-fmt/398
[name]: Exchangeable Image File Format (Compressed)
[mime]: image/jpeg
[extension]: jpg
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe1.{2}Exif\x00\x00MM\x00\*.*\x90\x00\x00\x07\x00\x00\x00\x040200
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[reg]
[reg_bof]: (?s)\A\xff\xd8\xff\xe1.{2}Exif\x00\x00II\*\x00.*\x00\x90\x07\x00\x04\x00\x00\x000200
[reg_eof]: (?s)\xff\xd9.{0,16000}\Z
[end]

[begin]
[id]: 25053
[puid]: x-fmt/399
[name]: Exchangeable Image File Format (Uncompressed)
[mime]: image/tiff
[extension]: tif
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x00\x90\x07\x00\x04\x00\x00\x000200.{0,65535}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\x90\x00\x00\x07\x00\x00\x00\x040200.{0,65535}\Z
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_var]: (?s)\A.{10,65535}\x00\x90\x07\x00\x04\x00\x00\x000200
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_var]: (?s)\A.{10,65535}\x90\x00\x00\x07\x00\x00\x00\x040200
[end]

[begin]
[id]: 25054
[puid]: fmt/151
[name]: JPX (JPEG 2000 part 2)
[mime]: image/jpx
[extension]: jpx jpf
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x0cjP  \r\n\x87\n.{4}ftypjpx
[end]

[begin]
[id]: 25055
[puid]: fmt/152
[name]: Digital Negative Format (DNG)
[mime]: image/tiff
[extension]: dng tif tiff
[reg]
[reg_bof]: (?s)\AII\*\x00.{0,4080}\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x01\x00\x00
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x01\x00\x00.{0,4084}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*.{0,4080}\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x01\x00\x00
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x01\x00\x00.{0,4084}\Z
[end]

[begin]
[id]: 25056
[puid]: fmt/154
[name]: Tagged Image File Format for Electronic Photography (TIFF/EP)
[mime]: image/tiff
[extension]: tif tiff
[reg]
[reg_bof]: (?s)\AII\*\x00.{6,4080}\x16\x92\x01\x00\x04\x00\x00\x00\x00\x00\x00\x01
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x16\x92\x01\x00\x04\x00\x00\x00\x00\x00\x00\x01.{4,4084}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*.{6,4080}\x92\x16\x00\x01\x00\x00\x00\x04\x01\x00\x00\x00
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\x92\x16\x00\x01\x00\x00\x00\x04\x01\x00\x00\x00.{4,4084}\Z
[end]

[begin]
[id]: 25057
[puid]: fmt/155
[name]: Geographic Tagged Image File Format (GeoTIFF)
[mime]: image/tiff
[extension]: tif tiff
[reg]
[reg_bof]: (?s)\AII\*\x00.{4,4080}\xaf\x87\x03\x00.?\x00\x00\x00
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\xaf\x87\x03\x00.?\x00\x00\x00.{4,4088}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*.{4,4080}\x87\xaf\x00\x03\x00\x00\x00
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\x87\xaf\x00\x03\x00\x00\x00.{5,4089}\Z
[end]

[begin]
[id]: 25058
[puid]: x-fmt/418
[name]: Icon file format
[mime]: image/vnd.microsoft.icon, image/x-icon
[priority]: 9
[extension]: ico
[reg]
[reg_bof]: (?s)\A\x00\x00\x01\x00[\x01-\x09]\x00.{3}\x00[\x00-\x01]\x00.{1}\x00.{3}\x00
[end]

[begin]
[id]: 25059
[puid]: fmt/202
[name]: Nikon Digital SLR Camera Raw Image File
[extension]: nef
[reg]
[reg_bof]: (?s)\A.{0,0}MM\x00\*.{6,2150}NIKON.{1,16384}RAW
[reg]
[reg_bof]: (?s)\A.{0,0}II\*\x00.{6,2150}NIKON.{1,16384}RAW
[end]

[begin]
[id]: 25060
[puid]: fmt/211
[name]: Kodak Photo CD Image
[extension]: pcd
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff.{2016}PCD
[end]

[begin]
[id]: 25061
[puid]: fmt/255
[name]: DjVu File Format
[mime]: image/vnd.djvu, image/x-djvu
[extension]: djvu djv
[reg]
[reg_bof]: (?s)\AAT&TFORM.{4}(?:DJVMDIRM|DJVUINFO)
[end]

[begin]
[id]: 25062
[puid]: fmt/303
[name]: Computer Graphics Metafile (Binary)
[mime]: image/cgm; version=1
[extension]: cgm
[reg]
[reg_bof]: (?s)\A\x00[ -\?].*\x10"\x00\x01
[reg_eof]: (?s)\x00@.{0,1024}\Z
[end]

[begin]
[id]: 25063
[puid]: fmt/304
[name]: Computer Graphics Metafile (Binary)
[mime]: image/cgm; version=2
[extension]: cgm
[reg]
[reg_bof]: (?s)\A\x00[ -\?].*\x10"\x00\x02
[reg_eof]: (?s)\x00@.{0,1024}\Z
[end]

[begin]
[id]: 25064
[puid]: fmt/305
[name]: Computer Graphics Metafile (Binary)
[mime]: image/cgm; version=3
[extension]: cgm
[reg]
[reg_bof]: (?s)\A\x00[ -\?].*\x10"\x00\x03
[reg_eof]: (?s)\x00@.{0,1024}\Z
[end]

[begin]
[id]: 25065
[puid]: fmt/306
[name]: Computer Graphics Metafile (Binary)
[mime]: image/cgm; version=4
[extension]: cgm
[reg]
[reg_bof]: (?s)\A\x00[ -\?].*\x10"\x00\x04
[reg_eof]: (?s)\x00@.{0,1024}\Z
[end]

[begin]
[id]: 25066
[puid]: fmt/318
[name]: Secure DjVU
[mime]: image/vnd.djvu, image/x-djvu
[extension]: djvu djv
[reg]
[reg_bof]: (?s)\ASDJV
[end]

[begin]
[id]: 25067
[puid]: fmt/341
[name]: Macintosh PICT Image
[mime]: image/x-pict
[extension]: pct pict pic
[reg]
[reg_bof]: (?s)\A.{522}\x00\x11\x02\xff\x0c\x00
[end]

[begin]
[id]: 25068
[puid]: fmt/344
[name]: Microsoft Windows Enhanced Metafile
[mime]: image/x-emf
[extension]: emf
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00d\x00\x00\x00.{32} EMF\x00\x00\x01\x00.{12}\x00\x00\x00\x00.{28}\x00\x00\x00\x00
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00.{36} EMF\x00\x00\x01\x00.{16}d\x00\x00\x00
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00.{36} EMF\x00\x00\x01\x00.{44}d\x00\x00\x00
[end]

[begin]
[id]: 25069
[puid]: fmt/345
[name]: Microsoft Windows Enhanced Metafile
[mime]: image/x-emf
[extension]: emf
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00l\x00\x00\x00.{32} EMF\x00\x00\x01\x00.{12}\x00\x00\x00\x00.{28}\x00\x00\x00\x00
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00.{36} EMF\x00\x00\x01\x00.{16}l\x00\x00\x00
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00.{36} EMF\x00\x00\x01\x00.{44}l\x00\x00\x00
[end]

[begin]
[id]: 25070
[puid]: fmt/348
[name]: Paint Shop Pro Image
[extension]: pspimage
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\x09\x00
[end]

[begin]
[id]: 25071
[puid]: fmt/349
[name]: Paint Shop Pro Image
[extension]: pspimage
[reg]
[reg_bof]: (?s)\APaint Shop Pro Image File\n\x1a\x00\x00\x00\x00\x00\n\x00
[end]

[begin]
[id]: 25072
[puid]: fmt/353
[name]: Tagged Image File Format
[mime]: image/tiff
[extension]: tif tiff
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg]
[reg_bof]: (?s)\AMM\x00\*
[end]

[begin]
[id]: 25073
[puid]: fmt/364
[name]: National Imagery Transmission Format
[extension]: ntf
[reg]
[reg_bof]: (?s)\ANITF01\.10.{16}[0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9]Z.{3}[0-9][0-9].{80}(?:C|R|S|T|U)
[end]

[begin]
[id]: 25074
[puid]: fmt/365
[name]: National Imagery Transmission Format
[extension]: ntf
[reg]
[reg_bof]: (?s)\ANITF02\.00[0-9][1-9]    .{10}[0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9]Z.{3}[0-9][0-9].{80}(?:C|R|S|T|U)
[end]

[begin]
[id]: 25075
[puid]: fmt/366
[name]: National Imagery Transmission Format
[extension]: ntf
[reg]
[reg_bof]: (?s)\ANITF02\.10[0-9][1-9].{14}(?:1|2)[0-9][0-9][0-9](?:0|1)[0-9][0-3][0-9][0-2][0-9][0-5][0-9][0-5][0-9].{80}(?:C|R|S|T|U)
[end]

[begin]
[id]: 25076
[puid]: fmt/372
[name]: Earth Resource Satellite image header format
[extension]: ers
[reg]
[reg_bof]: (?s)\ADatasetHeader Begin
[reg_eof]: (?s)DatasetHeader End\n\Z
[end]

[begin]
[id]: 25077
[puid]: fmt/383
[name]: VICAR (Video Image Communication and Retrieval) Planetary File Format
[extension]: img vic vicar
[reg]
[reg_bof]: (?s)\ALBLSIZE=[0-9].{15}FORMAT='(?:HALF|BYTE|FULL|REAL|DOUB|COMP|COMPLEX|WORD|LONG)'
[end]

[begin]
[id]: 25078
[puid]: fmt/385
[name]: Microsoft Windows Cursor
[mime]: image/x-win-bitmap
[extension]: cur
[reg]
[reg_bof]: (?s)\A\x00\x00\x02\x00[\x01-\x09]\x00.{3}\x00.{1}\x00.{1}\x00.{3}\x00.*\x00\x00\(\x00\x00\x00.{2}\x00\x00.{2}\x00\x00\x01\x00[\x01- ]\x00\x00\x00\x00\x00
[reg_var]: (?s)\x00\x00\(\x00\x00\x00.{2}\x00\x00.{2}\x00\x00\x01\x00[\x01- ]\x00\x00\x00\x00\x00
[end]

[begin]
[id]: 25079
[puid]: fmt/392
[name]: MrSID Image Format (Multi-resolution Seamless Image Database)
[extension]: sid
[reg]
[reg_bof]: (?s)\Amsid
[reg_eof]: (?s)\xff\xd2\xff\xa1\Z
[end]

[begin]
[id]: 25080
[puid]: fmt/409
[name]: Portable Bitmap Image - Binary
[extension]: pbmb pnm
[reg]
[reg_bof]: (?s)\AP4(?: |\r|\n).{0,2}#.{0,70}\n(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)
[reg]
[reg_bof]: (?s)\AP4(?: |\r|\n)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)(?:0|1|2|3|4|5|6|7|8|9| |\n|\r)
[end]

[begin]
[id]: 25081
[puid]: fmt/436
[name]: Digital Negative Format (DNG)
[mime]: image/tiff
[extension]: dng
[reg]
[reg_bof]: (?s)\AII\*\x00.{0,4080}\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x00\x00\x00
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x00\x00\x00.{0,4084}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*.{0,4080}\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x00\x00\x00
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x00\x00\x00.{0,4084}\Z
[end]

[begin]
[id]: 25082
[puid]: fmt/437
[name]: Digital Negative Format (DNG)
[mime]: image/tiff
[extension]: dng
[reg]
[reg_bof]: (?s)\AII\*\x00.{0,4080}\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x02\x00\x00
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x02\x00\x00.{0,4084}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*.{0,4080}\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x02\x00\x00
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x02\x00\x00.{0,4084}\Z
[end]

[begin]
[id]: 25083
[puid]: fmt/438
[name]: Digital Negative Format (DNG)
[mime]: image/tiff
[extension]: dng
[reg]
[reg_bof]: (?s)\AMM\x00\*.{0,4080}\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x03\x00\x00
[reg]
[reg_bof]: (?s)\AII\*\x00.{0,4080}\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x03\x00\x00
[reg]
[reg_bof]: (?s)\AII\*\x00
[reg_eof]: (?s)\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x03\x00\x00.{0,4084}\Z
[reg]
[reg_bof]: (?s)\AMM\x00\*
[reg_eof]: (?s)\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x03\x00\x00.{0,4084}\Z
[end]

[begin]
[id]: 25084
[puid]: fmt/463
[name]: JPM (JPEG 2000 part 6)
[mime]: image/jpm
[extension]: jpm
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x0cjP  \r\n\x87\n.{4}ftypjpm
[end]

[begin]
[id]: 25085
[puid]: fmt/529
[name]: JPEG Network Graphics
[mime]: image/x-jng
[extension]: jng
[reg]
[reg_bof]: (?s)\A.{0,0}\x8bJNG\r\n\x1a\n\x00\x00\x00\x10JHDR
[reg_eof]: (?s)IEND\xaeB\x60\x82.{0,0}\Z
[end]

[begin]
[id]: 25086
[puid]: fmt/577
[name]: Image Cytometry Standard
[extension]: ics
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\nics_version\x091\.0
[end]

[begin]
[id]: 25087
[puid]: fmt/578
[name]: Image Cytometry Standard
[extension]: ics
[reg]
[reg_bof]: (?s)\A.{0,0}\x09\nics_version\x092\.0
[end]

[begin]
[id]: 25088
[puid]: fmt/591
[name]: Radiance RGBE Image Format
[extension]: hdr
[reg]
[reg_bof]: (?s)\A.{0,0}#\?RADIANCE\n
[reg]
[reg_bof]: (?s)\A\x49\x53\x63\x28
[end]

[begin]
[id]: 25089
[puid]: fmt/590
[name]: JPEG Extended Range
[extension]: wdp jxr
[reg]
[reg_bof]: (?s)\A.{0,0}II\xbc\x01
[end]

[begin]
[id]: 25090
[puid]: fmt/615
[name]: Gimp Image File Format
[extension]: xcf
[reg]
[reg_bof]: (?s)\A.{0,0}gimp xcf 
[end]

[begin]
[id]: 25091
[puid]: fmt/625
[name]: Apple Disk Copy Image
[extension]: dmg smi img image
[reg]
[reg_bof]: (?s)\A.{80}(?:\x00|\x01|\x02|\x03)(?:\x02|\x12|"|\$|\x96)\x01\x00
[end]

[begin]
[id]: 25092
[puid]: fmt/641
[name]: Epson Raw Image Format
[extension]: erf
[reg]
[reg_bof]: (?s)\A.{0,0}MM\x00\*.{304}EPSON DSC Picture\x00SEIKO EPSON CORP\.\x00R-D1
[end]

[begin]
[id]: 25093
[puid]: fmt/642
[name]: Fujifilm RAW Image Format
[extension]: raf
[reg]
[reg_bof]: (?s)\A.{0,0}FUJIFILMCCD-RAW 
[end]

[begin]
[id]: 25094
[puid]: fmt/645
[name]: Exchangeable Image File Format (Compressed)
[mime]: image/jpeg
[extension]: jpg
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xd8\xff\xe1.{2}Exif\x00\x00MM\x00\*.*\x90\x00\x00\x07\x00\x00\x00\x040221
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[reg]
[reg_bof]: (?s)\A.{0,0}\xff\xd8\xff\xe1.{2}Exif\x00\x00II\*\x00.*\x00\x90\x07\x00\x04\x00\x00\x000221
[reg_eof]: (?s)\xff\xd9.{0,65535}.{0,1}\Z
[end]

[begin]
[id]: 25095
[puid]: fmt/661
[name]: Sigma RAW Image
[extension]: x3f
[reg]
[reg_bof]: (?s)\A.{0,0}FOVb
[end]

[begin]
[id]: 25096
[puid]: fmt/665
[name]: Chasys Draw image file
[extension]: cd5
[reg]
[reg_bof]: (?s)\A.{0,0}_CD5\x10\x00\x00\x00\x1a\x00\x03
[end]

[begin]
[id]: 25097
[puid]: fmt/666
[name]: ART image format
[extension]: art
[reg]
[reg_bof]: (?s)\A.{0,0}JG(?:\x03|\x04)\x0e
[end]

[begin]
[id]: 25098
[puid]: fmt/730
[name]: Digital Negative Format (DNG)
[mime]: image/tiff
[extension]: dng
[reg]
[reg_bof]: (?s)\A.{0,0}MM\x00\*.{0,4080}\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x04\x00\x00
[reg]
[reg_bof]: (?s)\A.{0,0}II\*\x00.{0,4080}\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x04\x00\x00
[reg]
[reg_bof]: (?s)\A.{0,0}II\*\x00
[reg_eof]: (?s)\x12\xc6\x01\x00\x04\x00\x00\x00\x01\x04\x00\x00.{0,4084}\Z
[reg]
[reg_bof]: (?s)\A.{0,0}MM\x00\*
[reg_eof]: (?s)\xc6\x12\x00\x01\x00\x00\x00\x04\x01\x04\x00\x00.{0,4084}\Z
[end]

[begin]
[id]: 25099
[puid]: fmt/217
[name]: PaintShop Pro Browser Cache File
[extension]: jbf
[reg]
[reg_bof]: (?s)\AJASC BROWS FILE\x00
[end]

[begin]
[id]: 25100
[puid]: x-fmt/82
[name]: Lotus 1-2-3 Chart
[extension]: pic
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00\x01\x00\x08\x00D\x00\x00\x00\x00\x0c\x7f\x09\x06
[end]

[begin]
[id]: 25101
[puid]: fmt/193
[name]: Digital Moving Picture Exchange Bitmap
[extension]: dpx
[reg]
[reg_bof]: (?s)\A.{0,0}SDPX.{4}V1\.0
[reg]
[reg_bof]: (?s)\A.{0,0}XPDS.{4}V1\.0
[end]

[begin]
[id]: 25102
[puid]: fmt/541
[name]: Digital Moving Picture Exchange Bitmap
[extension]: dpx
[reg]
[reg_bof]: (?s)\A.{0,0}SDPX.{4}V2\.0
[reg]
[reg_bof]: (?s)\A.{0,0}XPDS.{4}V2\.0
[end]