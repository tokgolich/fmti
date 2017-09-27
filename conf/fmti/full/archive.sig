[begin]
[id]: 21001
[puid]: x-fmt/263
[name]: ZIP Format
[mime]: application/zip
[extension]: zip
[priority]: 8
[reg]
[reg_bof]: (?s)\A.{0,4}PK\x03\x04.{2}
[reg_eof]: (?s)PK\x01.{43,65531}PK\x05\x06.{18,65531}\Z
[end]

[begin]
[id]: 21031
[name]: ZIP Encrypt Format
[mime]: application/zip
[extension]: zip
[priority]: 9
[reg]
[reg_bof]: (?s)\A.{0,4}PK\x03\x04.{2}[\x09|\x01]
[reg_eof]: (?s)PK\x01.{43,65531}PK\x05\x06.{18,65531}\Z
[end]

[begin]
[id]: 21002
[puid]: fmt/484
[name]: 7Zip format
[extension]: 7z
[reg]
[reg_bof]: (?s)\A7z\xbc\xaf'\x1c
[end]

[begin]
[id]: 21003
[puid]: x-fmt/266
[name]: GZIP Format
[mime]: application/x-gzip
[extension]: gz z
[reg]
[reg_bof]: (?s)\A\x1f\x8b\x08
[end]

[begin]
[id]: 21004
[puid]: x-fmt/267
[name]: BZIP Compressed Archive
[extension]: bz
[reg]
[reg_bof]: (?s)\ABZ0
[end]

[begin]
[id]: 21005
[puid]: x-fmt/268
[name]: BZIP2 Compressed Archive
[mime]: application/x-bzip2
[extension]: bz2
[reg]
[reg_bof]: (?s)\ABZh.?1AY&SY
[end]

[begin]
[id]: 21006
[name]: xz compressed container
[extension]: xz
[reg]
[reg_bof]: (?s)\A\xFD\x37\x7A\x58\x5A\x00
[end]

[begin]
[id]: 21007
[name]: ALZip compressed archive
[extension]: alz
[reg]
[reg_bof]: (?s)\A\x41\x4C\x5A\x01
[end]

[begin]
[id]: 21008
[puid]: x-fmt/264
[name]: RAR Archive
[mime]: application/x-rar-compressed
[extension]: rar
[reg]
[reg_bof]: (?s)\ARar\!\x1a\x07\x00.{2}s.{34}\x14
[end]

[begin]
[id]: 21009
[puid]: fmt/411
[name]: RAR Archive
[mime]: application/x-rar-compressed
[extension]: rar
[reg]
[reg_bof]: (?s)\ARar\!\x1a\x07\x00.{2}s.{34}\x1d
[end]

[begin]
[id]: 21010
[puid]: fmt/613
[name]: RAR Archive
[mime]: application/x-rar-compressed
[extension]: rar
[reg]
[reg_bof]: (?s)\A.{0,0}Rar\!\x1a\x07\x01\x00
[end]

[begin]
[id]: 21011
[puid]: fmt/600
[name]: eXtensible ARchive format
[extension]: xar
[reg]
[reg_bof]: (?s)\A.{0,0}xar\!\x00\x1c
[end]

[begin]
[id]: 21012
[puid]: x-fmt/265
[name]: Tape Archive Format
[mime]: application/x-tar
[extension]: tar
[reg]
[reg_bof]: (?s)\A[\!-\xef].{104}[0-7][ -7]\x00.{5}[0-7][ -7]\x00.{5}[0-7][ -7]\x00.{10}[0-7](?:\x00| ).{10}[0-7](?:\x00| ).{5}[0-7][\x00-7](?:\x00| )
[end]

[begin]
[id]: 21013
[puid]: x-fmt/412
[name]: Java Archive Format
[mime]: application/java-archive
[extension]: jar
[reg]
[reg_bof]: (?s)\APK\x03\x04.*META-INF/MANIFEST\.MF
[reg_eof]: (?s)PK\x05\x06.{18,65531}\Z
[end]

[begin]
[id]: 21014
[puid]: fmt/482
[name]: Apple iBook format
[mime]: application/x-ibooks+zip
[extension]: ibooks
[reg]
[reg_bof]: (?s)\A.{0,0}PK\x03\x04.{26}mimetypeapplication/x-ibooks\+zip
[end]

[begin]
[id]: 21015
[puid]: fmt/483
[name]: ePub format
[mime]: application/epub+zip
[extension]: epub
[reg]
[reg_bof]: (?s)\A.{0,0}PK\x03\x04.{26}mimetypeapplication/epub\+zip
[end]

[begin]
[id]: 21016
[name]: EGG compressed archive
[extension]: egg
[priority]: 5
[reg]
[reg_bof]: (?s)\A\x45\x47\x47\x41\x00\x01
[end]

[begin]
[id]: 21017
[puid]: x-fmt/219
[name]: Internet Archive
[mime]: application/x-internet-archive
[extension]: arc
[reg]
[reg_bof]: (?s)\Afiledesc://.{1,132} .{1,3}\..{1,3}\..{1,3}\..{1,3} .{14} text/plain .{1,16}\n1 0 .*\nURL IP-address Archive-date Content-type Archive-length
[end]

[begin]
[id]: 21018
[puid]: fmt/410
[name]: Internet Archive
[extension]: arc
[reg]
[reg_bof]: (?s)\Afiledesc://.{1,132} .{1,3}\..{1,3}\..{1,3}\..{1,3} .{14} text/plain .{1,16}\n1 1 .*\nURL IP-address Archive-date Content-type Archive-length
[end]

[begin]
[id]: 21019
[puid]: x-fmt/269
[name]: ZOO Compressed Archive
[extension]: zoo
[reg]
[reg_bof]: (?s)\A.{20}\xdc\xa7\xc4\xfd
[reg_eof]: (?s)\xfc\x83\Z
[end]

[begin]
[id]: 21020
[puid]: x-fmt/429
[name]: Microsoft Web Archive
[mime]: message/rfc822, multipart/related
[extension]: mht mhtml
[reg]
[reg_bof]: (?s)\AFrom:.{2,100}Subject:.*Date:.*MIME.?Version:.*Content.?Type:.?multipart/related;
[end]

[begin]
[id]: 21021
[puid]: fmt/329
[name]: Shell Archive Format
[mime]: application/x-sh, application/x-shar
[extension]: shar
[reg]
[reg_bof]: (?s)\A.{0,1936}#\!.{0,1}/bin/sh\n# This is a shell archive
[reg]
[reg_bof]: (?s)\A# This is a shell archive
[end]

[begin]
[id]: 21022
[puid]: fmt/399
[name]: Stuffit X Archive File
[extension]: sitx
[reg]
[reg_bof]: (?s)\AStuffIt\!\xa16\xf7\xdc\n\xa2\xa2\x9b\xddB\x15\xf7\xdc\n\xa2\xa23\x99
[reg_eof]: (?s)\x02\x02U\Z
[end]

[begin]
[id]: 21023
[puid]: fmt/639
[name]: Stuffit Archive File
[extension]: sit
[reg]
[reg_bof]: (?s)\A.{0,0}StuffIt 
[end]

[begin]
[id]: 21024
[puid]: fmt/610
[name]: ARJ File Format
[extension]: arj
[reg]
[reg_bof]: (?s)\A.{0,0}\x60\xea
[end]
