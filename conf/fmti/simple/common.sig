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
[reg_bof]: (?s)\A\{\\rt(?:f|f1)
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
[id]: 10019
[puid]: x-fmt/414
[name]: Windows Cabinet File
[extension]: cab
[reg]
[reg_bof]: (?s)\AMSCF.{20}\x03\x01
[end]

[begin]
[id]: 10022
[puid]: x-fmt/428
[name]: Microsoft Windows Shortcut
[extension]: lnk
[reg]
[reg_bof]: (?s)\AL\x00\x00\x00\x01\x14\x02\x00\x00\x00\x00\x00\xc0\x00\x00\x00\x00\x00\x00F
[end]

