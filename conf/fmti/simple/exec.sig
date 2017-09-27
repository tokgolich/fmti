[begin]
[id]: 24001
[puid]: x-fmt/409
[name]: MS-DOS Executable
[extension]: exe
[reg]
[reg_bof]: (?s)\AMZ
[end]

[begin]
[id]: 24010
[puid]: x-fmt/411
[name]: Windows Dynamic Link Library
[mime]: application/octet-stream
[extension]: dll
[priority]: 15
[reg]
[reg_bof]: (?s)\AMZ.*PE\x00\x00.{19}[\x20-\x3f]
[end]

[begin]
[id]: 24002
[puid]: x-fmt/410
[name]: Windows New Executable
[extension]: exe
[reg]
[reg_bof]: (?s)\AMZ.*NE
[end]

[begin]
[id]: 24003
[puid]: x-fmt/411
[name]: Windows Portable Executable
[mime]: application/octet-stream
[extension]: exe dll sys
[reg]
[reg_bof]: (?s)\AMZ.*PE\x00\x00
[end]

[begin]
[id]: 24004
[puid]: fmt/688
[name]: Executable and Linkable Format
[extension]: elf o
[reg]
[reg_bof]: (?s)\A.{0,0}\x7fELF\x01\x01\x01
[end]

[begin]
[id]: 24005
[puid]: fmt/689
[name]: Executable and Linkable Format
[extension]: elf o
[reg]
[reg_bof]: (?s)\A.{0,0}\x7fELF\x01\x02\x01
[end]

[begin]
[id]: 24006
[puid]: fmt/690
[name]: Executable and Linkable Format
[extension]: elf o
[reg]
[reg_bof]: (?s)\A.{0,0}\x7fELF\x02\x01\x01
[end]

[begin]
[id]: 24007
[puid]: fmt/691
[name]: Executable and Linkable Format
[extension]: elf o
[reg]
[reg_bof]: (?s)\A.{0,0}\x7fELF\x02\x02\x01
[end]
