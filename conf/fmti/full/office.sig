[begin]
[id]: 20001
[puid]: fmt/40
[name]: Microsoft Word 97-2003 document
[mime]: application/msword
[extension]: doc wbk
[reg]
[reg_bof]: (?s)\A\xD0\xCF\x11\xE0\xA1\xB1\x1A\xE1\x00{16}\x3E\x00\x03\x00\xFE\xFF\x09\x00\x06\x00{11}
[reg_var]: (?s)W\x00o\x00r\x00d\x00D\x00o\x00c\x00u\x00m\x00e\x00n\x00t
[end]

[begin]
[id]: 20002
[puid]: fmt/61
[name]: Microsoft Excel 97-2003 Workbook
[mime]: application/vnd.ms-excel
[extension]: xls xlw
[reg]
[reg_bof]: (?s)\A\xD0\xCF\x11\xE0\xA1\xB1\x1A\xE1\x00{16}\x3E\x00\x03\x00\xFE\xFF\x09\x00\x06\x00{11}
[reg_var]: (?s)W\x00o\x00r\x00k\x00b\x00o\x00o\x00k
[end]

[begin]
[id]: 20003
[puid]: fmt/126
[name]: Microsoft Powerpoint 97-2003 Presentation
[mime]: application/vnd.ms-powerpoint
[extension]: ppt
[reg]
[reg_bof]: (?s)\A\xD0\xCF\x11\xE0\xA1\xB1\x1A\xE1\x00{16}\x3E\x00\x03\x00\xFE\xFF\x09\x00\x06\x00{11}
[reg_var]: (?s)P\x00o\x00w\x00e\x00r\x00P\x00o\x00i\x00n\x00t
[end]

[begin]
[id]: 20011
[puid]: fmt/412
[name]: Microsoft Word 2007+ document
[mime]: application/vnd.openxmlformats-officedocument.wordprocessingml.document
[extension]: docx
[reg]
[reg_bof]: (?s)\A\x50\x4B\x03\x04
#[reg_var]: (?s)document\x2exml\x2erelsPK
[reg_var]: (?s)PK\x03\x04.{26}word/
[end]

[begin]
[id]: 20012
[puid]: fmt/214
[name]: Microsoft Excel 2007+ Workbook
[mime]: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
[extension]: xlsx
[reg]
[reg_bof]: (?s)\A\x50\x4B\x03\x04
#[reg_var]: (?s)workbook\.xml\.relsPK
[reg_var]: (?s)PK\x03\x04.{26}xl/
[end]

[begin]
[id]: 20013
[puid]: fmt/215
[name]: Microsoft Powerpoint 2007+ Presentation
[mime]: application/vnd.openxmlformats-officedocument.presentationml.presentation
[extension]: pptx
[reg]
[reg_bof]: (?s)\A\x50\x4B\x03\x04
#[reg_var]: (?s)presentation\x2exml\x2erelsPK
[reg_var]: (?s)PK\x03\x04.{26}ppt/
[end]

[begin]
[id]: 20250
[puid]: fmt/494
[name]: Microsoft Office Encrypted Document
[extension]: xlsx pptx docx
[reg]
[reg_bof]: (?s)\A\xD0\xCF\x11\xE0\xA1\xB1\x1A\xE1\x00{16}\x3E\x00\x03\x00\xFE\xFF\x09\x00\x06\x00{11}
[reg_var]: (?s)E.n.c.r.y.p.t.e.d.P.a.c.k.a.g.e
[end]
