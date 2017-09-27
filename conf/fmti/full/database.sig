[begin]
[id]: 28001
[puid]: x-fmt/8
[name]: dBASE Database
[extension]: dbf
[reg]
[reg_bof]: (?s)\A\x02.{2}[\x01-\x1c][\x01-\x1f].?.?[\x00-\x03](?:[A-Z]|[a-z]).{10}(?:C|N|L)
[reg]
[reg_bof]: (?s)\A\x02.{2}\x00\x00\x00.?[\x00-\x03](?:[A-Z]|[a-z]).{10}(?:C|N|L)
[end]

[begin]
[id]: 28002
[puid]: x-fmt/9
[name]: dBASE Database
[extension]: dbf
[reg]
[reg_bof]: (?s)\A\x03.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|L|M|N)
[end]

[begin]
[id]: 28003
[puid]: x-fmt/10
[name]: dBASE Database
[mime]: application/dbase
[extension]: dbf
[reg]
[reg_bof]: (?s)\A\x04.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|N)
[reg]
[reg_bof]: (?s)\AC.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|N)
[reg]
[reg_bof]: (?s)\Ac.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|N)
[reg]
[reg_bof]: (?s)\A\xcb.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|M|N)
[reg]
[reg_bof]: (?s)\A\{.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|M|N)
[reg]
[reg_bof]: (?s)\A\x8b.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|M|N)
[reg]
[reg_bof]: (?s)\A\x8e.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|F|L|M|N)
[end]

[begin]
[id]: 28004
[puid]: x-fmt/271
[name]: dBASE Database
[extension]: dbf
[reg]
[reg_bof]: (?s)\A\x83.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:C|D|L|M|N)
[end]

[begin]
[id]: 28005
[puid]: x-fmt/66
[name]: Microsoft Access Database
[extension]: mdb
[reg]
[reg_bof]: (?s)\A\x01\x00\x00\x00
[reg_var]: (?s)AccessVersion.{0,32}02\.[0-9][0-9]
[end]

[begin]
[id]: 28006
[puid]: x-fmt/147
[name]: Paradox Database Table
[extension]: db
[reg]
[reg_bof]: (?s)\A.{2}\x00\x08(?:\x00|\x02)[\x01- ].{51}\x0c.{34}\x00\x00\x00\x00
[end]

[begin]
[id]: 28007
[puid]: fmt/350
[name]: Paradox Database Table
[extension]: db
[reg]
[reg_bof]: (?s)\A.{2}\x00\x08(?:\x00|\x02)[\x01-\x04].{31}\x00\x00\x00\x00.{16}[\x03-\x04]
[end]

[begin]
[id]: 28008
[puid]: fmt/351
[name]: Paradox Database Table
[extension]: db
[reg]
[reg_bof]: (?s)\A.{2}\x00\x08(?:\x00|\x02)[\x01-\x04].{51}[\x05-\x09].{34}\x00\x00\x00\x00
[end]

[begin]
[id]: 28009
[puid]: fmt/352
[name]: Paradox Database Table
[extension]: db
[reg]
[reg_bof]: (?s)\A.{2}\x00\x08(?:\x00|\x02)[\x01- ].{51}(?:\n|\x0b).{34}\x00\x00\x00\x00
[end]

[begin]
[id]: 28010
[puid]: x-fmt/307
[name]: Paradox Database Memo Field (Binary Large Object)
[extension]: dbq mb
[reg]
[reg_bof]: (?s)\A\x00\x01\x00.{8}\x00\x10\x00\x10.{1}\x10@\x00\x00\x08
[end]

[begin]
[id]: 28011
[puid]: x-fmt/318
[name]: FileMaker Pro Database
[mime]: application/x-filemaker
[extension]: fp3 fmp fp fm
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x01\x00\x00\x00\x02\x00\x01\x00\x05\x00\x02\x00\x02\xc0.{527}Pro 3
[end]

[begin]
[id]: 28012
[puid]: x-fmt/319
[name]: FileMaker Pro Database
[extension]: fp5 fmp fp fm
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x01\x00\x00\x00\x02\x00\x01\x00\x05\x00\x02\x00\x02\xc0.{527}Pro 5
[end]

[begin]
[id]: 28013
[puid]: fmt/194
[name]: FileMaker Pro Ver. 7+ Database Document
[extension]: fp7
[reg]
[reg_bof]: (?s)\A.{14}\xc0HBAM7.{505}HBAM2101OCT99\xc1\x02H\x07Pro 7\.0\xc0\xc0
[end]

[begin]
[id]: 28014
[puid]: x-fmt/150
[name]: Visual FoxPro Database Container File
[extension]: dcx
[reg]
[reg_bof]: (?s)\A\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\n\x00[^\x00].{1009}\x03\x00\x02\x00\xff\xff\xff\xff\xff\xff\xff\xff.{1}\x01\xff\xff.{2}\x0f\x0f.{491}[A-Z]\x00\n.{502}\+\x00[\x0b-\x0f]\x00\x00\x00\+\x00.{512}[^\x00]\x00[^\x00]\x00\xff\xff\xff\xff\xff\xff\xff\xff
[end]

[begin]
[id]: 28015
[puid]: x-fmt/238
[name]: Microsoft Access Database
[extension]: mdb
[reg]
[reg_bof]: (?s)\A\x00\x01\x00\x00Standard Jet DB\x00\x00\x00\x00\x00
[reg_var]: (?s)AccessVersion.{0,1024}06\.[0-9][0-9]
[end]

[begin]
[id]: 28016
[puid]: x-fmt/239
[name]: Microsoft Access Database
[extension]: mdb
[reg]
[reg_bof]: (?s)\A\x00\x01\x00\x00Standard Jet DB\x00\x00\x00\x00\x00
[reg_var]: (?s)AccessVersion.{0,1024}07\.[0-9][0-9]
[end]

[begin]
[id]: 28017
[puid]: x-fmt/240
[name]: Microsoft Access Database
[extension]: mdb
[reg]
[reg_bof]: (?s)\A\x00\x01\x00\x00Standard Jet DB\x00\x01\x00\x00\x00
[reg_var]: (?s)A\x00c\x00c\x00e\x00s\x00s\x00V\x00e\x00r\x00s\x00i\x00o\x00n.{0,2048}0\x008\x00\.\x00[0-9]\x00[0-9]
[end]

[begin]
[id]: 28018
[puid]: x-fmt/241
[name]: Microsoft Access Database
[extension]: mdb
[reg]
[reg_bof]: (?s)\A\x00\x01\x00\x00Standard Jet DB\x00\x01\x00\x00\x00
[reg_var]: (?s)A\x00c\x00c\x00e\x00s\x00s\x00V\x00e\x00r\x00s\x00i\x00o\x00n.{0,2048}0\x009\x00\.\x00[0-9]\x00[0-9]
[end]

[begin]
[id]: 28019
[puid]: fmt/140
[name]: OpenDocument Database Format
[extension]: odb
[reg]
[reg_bof]: (?s)\APK\x03\x04.{26}mimetypeapplication/vnd\.sun\.xml\.base.*office:version="1\.0
[end]

[begin]
[id]: 28020
[puid]: fmt/275
[name]: Microsoft Access Database
[extension]: accdb
[reg]
[reg_bof]: (?s)\A\x00\x01\x00\x00Standard ACE DB\x00\x02\x00\x00\x00
[reg_var]: (?s)A\x00c\x00c\x00e\x00s\x00s\x00V\x00e\x00r\x00s\x00i\x00o\x00n.{0,2048}0\x009\x00\.\x00[0-9]\x00[0-9]
[end]

[begin]
[id]: 28021
[puid]: fmt/161
[name]: SIARD (Software-Independent Archiving of Relational Databases)
[extension]: siard
[reg]
[reg_bof]: (?s)\APK\x03\x04.*PK\x03\x04.*xmlns="http://www\.bar\.admin\.ch/xmlns/siard/1\.0/metadata\.xsd"
[reg_eof]: (?s)PK\x01.{43,65531}PK\x05\x06.{18,65531}\Z
[end]

[begin]
[id]: 28022
[puid]: fmt/373
[name]: FoxPro Database
[extension]: dbf
[reg]
[reg_bof]: (?s)\A\xf5.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:B|C|D|I|L|M|N|P|T|Y)
[end]

[begin]
[id]: 28023
[puid]: fmt/374
[name]: Microsoft Visual FoxPro Database Table File
[extension]: dbf
[priority]: 9
[reg]
[reg_bof]: (?s)\A0.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:B|C|D|I|L|M|N|P|T|Y)
[reg]
[reg_bof]: (?s)\A1.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:B|C|D|I|L|M|N|P|T|Y)
[reg]
[reg_bof]: (?s)\A2.?[\x01-\x0c][\x01-\x1f].{28}(?:[A-Z]|[a-z]).{10}(?:B|C|D|I|L|M|N|P|T|Y)
[end]

[begin]
[id]: 28024
[puid]: fmt/382
[name]: Microsoft Visual FoxPro database container (table files)
[extension]: dbc
[reg]
[reg_bof]: (?s)\A0.?[\x01-\x0c][\x01-\x1f].{4}\(\x02\xa5.{21}(?:[A-Z]|[a-z]).{10}(?:B|C|D|I|L|M|N|P|T|Y).{508} \x01\x00\x00\x00\x01\x00\x00(?:[A-Z]|[a-z])
[end]

[begin]
[id]: 28025
[puid]: fmt/384
[name]: Microsoft Visual FoxPro database container (memo files)
[extension]: dct
[reg]
[reg_bof]: (?s)\A\x00\x00.{2}\x00\x00\x00@.{504}\x00\x00\x00\x01\x00\x00\x00.{1}\x0b\x00\x00\x00\x01\x00\x18\x00
[end]

[begin]
[id]: 28026
[puid]: fmt/729
[name]: SQLite Database File Format
[mime]: application/x-sqlite3
[extension]: sqlite db db3 sqlite3
[reg]
[reg_bof]: (?s)\A.{0,0}SQLite format 3\x00
[end]

[begin]
[id]: 28027
[puid]: fmt/572
[name]: Domino XML Database Export
[extension]: dxl
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version=(?:"|')1\.0(?:"|').{1,64}\x3c\!DOCTYPE database.{1,64}\x3cdatabase xmlns="http://www\.lotus\.com/dxl"
[reg]
[reg_bof]: (?s)\A.{0,0}\x3c\?xml version=(?:"|')1\.0(?:"|') .{1,64}\x3cdocument xmlns=(?:"|')http://www\.lotus\.com/dxl(?:"|')
[end]

[begin]
[id]: 28028
[puid]: fmt/741
[name]: ClarisWorks Database
[extension]: cwk
[reg]
[reg_bof]: (?s)\A.{0,0}\x04.{3}BOBO.{248}\x03
[end]

[begin]
[id]: 28029
[puid]: fmt/746
[name]: ClarisWorks/AppleWorks Database
[extension]: cwk
[reg]
[reg_bof]: (?s)\A.{0,0}\x05.{3}BOBO.{260}\x03
[end]

[begin]
[id]: 28030
[puid]: fmt/751
[name]: AppleWorks Database
[extension]: cwk
[reg]
[reg_bof]: (?s)\A.{0,0}\x06.{3}BOBO.{270}\x03
[end]

[begin]
[id]: 28031
[puid]: fmt/571
[name]: Domino XML Document Export
[extension]: dxl
[reg]
[reg_bof]: (?s)\A.{0,0}\x3cdocument form=(?:"|').{0,32}(?:"|')\x3e.{0,32}\x3cnoteinfo noteid=(?:"|').{0,32}(?:"|').{0,32}unid=(?:"|').{32}(?:"|')
[end]
