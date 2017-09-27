[begin]
[id]: 23001
[puid]: fmt/14
[name]: Acrobat PDF 1.0 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.0
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23002
[puid]: fmt/15
[name]: Acrobat PDF 1.1 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.1
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23003
[puid]: fmt/16
[name]: Acrobat PDF 1.2 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.2
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23004
[puid]: fmt/17
[name]: Acrobat PDF 1.3 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.3
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23005
[puid]: fmt/18
[name]: Acrobat PDF 1.4 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.4
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23006
[puid]: fmt/19
[name]: Acrobat PDF 1.5 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.5
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23007
[puid]: fmt/20
[name]: Acrobat PDF 1.6 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.6
[reg_eof]: (?s)%%EOF.{0,1024}\Z
[end]

[begin]
[id]: 23008
[puid]: fmt/95
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.4
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)1(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')A(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23009
[puid]: fmt/144
[name]: Acrobat PDF/X - Portable Document Format - Exchange 1:1999
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-
[reg_var]: (?s)/GTS_PDFXVersion.{0,1}\(CGATS\.12/1-1999\)
[end]

[begin]
[id]: 23010
[puid]: fmt/145
[name]: Acrobat PDF/X - Portable Document Format - Exchange 1:2001
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.3
[reg_var]: (?s)/GTS_PDFXVersion.{0,1}\(PDF/X-1:2001\)
[end]

[begin]
[id]: 23011
[puid]: fmt/146
[name]: Acrobat PDF/X - Portable Document Format - Exchange 1a:2003
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.4
[reg_var]: (?s)/GTS_PDFXVersion.{0,1}\(PDF/X-1a:2003\)
[end]

[begin]
[id]: 23012
[puid]: fmt/147
[name]: Acrobat PDF/X - Portable Document Format - Exchange 2:2003
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.4
[reg_var]: (?s)/GTS_PDFXVersion.{0,1}\(PDF/X-2:2003\)
[end]

[begin]
[id]: 23013
[puid]: fmt/148
[name]: Acrobat PDF/X - Portable Document Format - Exchange 3:2003
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.4
[reg_var]: (?s)/GTS_PDFXVersion.{0,1}\(PDF/X-3:2003\)
[end]

[begin]
[id]: 23014
[puid]: fmt/157
[name]: Acrobat PDF/X - Portable Document Format - Exchange 1a:2001
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.3
[reg_var]: (?s)/GTS_PDFXConformance.{0,1}\(PDF/X-1a:2001\)
[end]

[begin]
[id]: 23015
[puid]: fmt/158
[name]: Acrobat PDF/X - Portable Document Format - Exchange 3:2002
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.3
[reg_var]: (?s)/GTS_PDFXVersion.{0,1}\(PDF/X-3:2002\)
[reg]
[reg_bof]: (?s)\A%PDF-1\.3
[reg_var]: (?s)\x3cpdfx:GTS_PDFXVersion\x3ePDF/X-3:2002
[end]

[begin]
[id]: 23016
[puid]: fmt/276
[name]: Acrobat PDF 1.7 - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.7
[reg_eof]: (?s)%%EO(?:F|F\n|F\r|F\r\n|F\r\x00).{0,1024}\Z
[end]

[begin]
[id]: 23017
[puid]: fmt/354
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A.{0,144}%PDF-1\.(?:3|4|5|6|7)
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)1(?:"|'|\x3c/pdfaid:part\x3e).{0,13}pdfaid:conformance(?:\x3e|="|=')B(?:"|'|\x3c/pdfaid:conformance\x3e)
[reg]
[reg_bof]: (?s)\A.{0,144}%PDF-1\.(?:3|4|5|6|7)
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:conformance(?:\x3e|="|=')B(?:"|'|\x3c/pdfaid:conformance\x3e).{0,20}pdfaid:part(?:="|='|\x3e)1(?:"|'|\x3c/pdfaid:part\x3e)
[end]

[begin]
[id]: 23018
[puid]: fmt/476
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)2(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')A(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23019
[puid]: fmt/477
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)2(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')B(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23020
[puid]: fmt/478
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)2(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')U(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23021
[puid]: fmt/479
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)3(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')A(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23022
[puid]: fmt/480
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)3(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')B(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23023
[puid]: fmt/481
[name]: Acrobat PDF/A - Portable Document Format
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)xmlns:pdfaid=(?:"|')http://www\.aiim\.org/pdfa/ns/id.*pdfaid:part(?:="|='|\x3e)3(?:"|'|\x3c/pdfaid:part\x3e).{0,11}pdfaid:conformance(?:\x3e|="|=')U(?:"|'|\x3c/pdfaid:conformance\x3e)
[end]

[begin]
[id]: 23024
[puid]: fmt/488
[name]: Acrobat PDF/X - Portable Document Format - Exchange PDF/X-4
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A.{0,0}%PDF-1\.[0-7]
[reg_var]: (?s)\x3cpdfxid:GTS_PDFXVersion\x3ePDF/X-4\x3c/pdfxid:GTS_PDFXVersion\x3e
[end]

[begin]
[id]: 23025
[puid]: fmt/489
[name]: Acrobat PDF/X - Portable Document Format - Exchange PDF/X-4p
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A.{0,0}%PDF-1\.[0-7]
[reg_var]: (?s)\x3cpdfxid:GTS_PDFXVersion\x3ePDF/X-4p\x3c/pdfxid:GTS_PDFXVersion\x3e
[end]

[begin]
[id]: 23026
[puid]: fmt/490
[name]: Acrobat PDF/X - Portable Document Format - Exchange PDF/X-5g
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)\x3cpdfxid:GTS_PDFXVersion\x3ePDF/X-5g\x3c/pdfxid:GTS_PDFXVersion\x3e
[end]

[begin]
[id]: 23027
[puid]: fmt/491
[name]: Acrobat PDF/X - Portable Document Format - Exchange PDF/X-5pg
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)\x3cpdfxid:GTS_PDFXVersion\x3ePDF/X-5pg\x3c/pdfxid:GTS_PDFXVersion\x3e
[end]

[begin]
[id]: 23028
[puid]: fmt/492
[name]: Acrobat PDF/X - Portable Document Format - Exchange PDF/X-5n
[mime]: application/pdf
[extension]: pdf
[reg]
[reg_bof]: (?s)\A%PDF-1\.[0-7]
[reg_var]: (?s)\x3cpdfxid:GTS_PDFXVersion\x3ePDF/X-5n\x3c/pdfxid:GTS_PDFXVersion\x3e
[end]

[begin]
[id]: 23029
[puid]: fmt/493
[name]: Acrobat PDF/E - Portable Document Format for Engineering PDF/E-1
[extension]: pdf
[reg]
[reg_bof]: (?s)\A.{0,0}%PDF-1\.[0-7]
[reg_var]: (?s)\x3cpdfe:ISO_PDFEVersion\x3ePDF/E-1\x3c/pdfe:ISO_PDFEVersion\x3e
[end]
