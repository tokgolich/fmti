[begin]
[id]: 21001
[puid]: x-fmt/263
[name]: ZIP Format
[mime]: application/zip
[extension]: zip
[priority]: 8
[reg]
[reg_bof]: (?s)\A.{0,4}PK\x03\x04
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

