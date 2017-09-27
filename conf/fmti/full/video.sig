[begin]
[id]: 27001
[puid]: x-fmt/385
[name]: MPEG-1 Program Stream
[mime]: video/mpeg
[extension]: mpeg mpg
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x01\xba.{8,12}\x00\x00\x01\xbb
[end]

[begin]
[id]: 27002
[puid]: x-fmt/386
[name]: MPEG-2 Program Stream
[mime]: video/mpeg
[extension]: mpeg mpg
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x01\xba.{8,12}\x00\x00\x01\xbb.{8,65535}\x00\x00\x01\xb3.{8,128}\x00\x00\x01\xb5
[end]

[begin]
[id]: 27003
[puid]: fmt/649
[name]: MPEG-1 Elementary Stream
[extension]: mpg mpeg m1v
[reg]
[reg_bof]: (?s)\A\x00\x00\x01\xb3.{8}\x00\x00\x01\xb8
[end]

[begin]
[id]: 27004
[puid]: fmt/640
[name]: MPEG-2 Elementary Stream
[extension]: mpg mpeg m2v
[reg]
[reg_bof]: (?s)\A.{0,0}\x00\x00\x01\xb3.{8,256}\x00\x00\x01\xb5.{6,256}\x00\x00\x01\xb8
[end]

[begin]
[id]: 27005
[puid]: fmt/585
[name]: MPEG-2 Transport Stream
[extension]: m2t ts m2ts
[reg]
[reg_bof]: (?s)\A.{0,0}G.{187}G.{187}G.{187}G.{187}G.{187}G.{187}G.{187}G
[end]

[begin]
[id]: 27006
[puid]: fmt/199
[name]: MPEG-4 Media File
[extension]: mp4 m4v m4a f4v f4a
[reg]
[reg_bof]: (?s)\A.{4}ftyp.{0,64}(?:mp42|mp41|isom|iso2).{4,64}(?:moov|mdat|cmov)
[end]

[begin]
[id]: 27007
[puid]: fmt/415
[name]: Cinema 4D
[extension]: c4d
[reg]
[reg_bof]: (?s)\A.{0,0}FORM.{4}MC4D
[end]

[begin]
[id]: 27008
[puid]: fmt/540
[name]: Cinema 4D
[extension]: c4d
[reg]
[reg_bof]: (?s)\A.{0,0}MC50.{4}(?:PRF5|DOK5|CAT5|FCV5)
[end]

[begin]
[id]: 27009
[puid]: x-fmt/382
[name]: Macromedia FLV
[mime]: video/x-flv
[extension]: flv
[reg]
[reg_bof]: (?s)\AFLV\x01
[end]

[begin]
[id]: 27010
[puid]: x-fmt/384
[name]: Quicktime
[mime]: video/quicktime
[extension]: mov qtm
[reg]
[reg_bof]: (?s)\A.{4}moov.{4}mvhd
[reg]
[reg_bof]: (?s)\A.{4}mdat.*moov.{4}mvhd
[reg]
[reg_bof]: (?s)\A.{4}moov.{4}cmov.{4}dcom
[reg]
[reg_bof]: (?s)\A.{4}mdat.*moov.{4}cmov.{4}dcom
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x08wide.{4}mdat.*moov.{4}mvhd
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x08wide.{4}mdat.*moov.{4}cmov.{4}dcom
[reg]
[reg_bof]: (?s)\A.{4}mdat
[reg]
[reg_bof]: (?s)\A\x00\x00\x00.{1}ftypqt  
[reg]
[reg_bof]: (?s)\A.{0,20}wide.{1,20}mvhd
[reg]
[reg_bof]: (?s)\A.{4}free\x00.*ftyp
[reg]
[reg_bof]: (?s)\A.{4}free\x00.*moov
[end]

[begin]
[id]: 27011
[puid]: fmt/131
[name]: Advanced Systems Format
[mime]: application/vnd.ms-asf
[extension]: asf
[reg]
[reg_bof]: (?s)\A0&\xb2u\x8ef\xcf\x11\xa6\xd9\x00\xaa\x00b\xcel.{12}\x01\x02
[end]

[begin]
[id]: 27012
[puid]: fmt/133
[name]: Windows Media Video
[mime]: video/x-ms-wmv
[extension]: asf wmv
[reg]
[reg_bof]: (?s)\A0&\xb2u\x8ef\xcf\x11\xa6\xd9\x00\xaa\x00b\xcel.{12}\x01\x02
[reg_var]: (?s).{30}\x91\x07\xdc\xb7\xb7\xa9\xcf\x11\x8e\xe6\x00\xc0\x0c Se.{8}\xc0\xef\x19\xbcM\[\xcf\x11\xa8\xfd\x00\x80_\\D\+.{65}WMV(?:1|2|3)
[end]

[begin]
[id]: 27013
[puid]: x-fmt/419
[name]: DVD data file and backup data file
[extension]: ifo bup
[reg]
[reg_bof]: (?s)\ADVDVIDEO-V(?:MG|TS)
[end]

[begin]
[id]: 27014
[puid]: fmt/337
[name]: MJ2 (Motion JPEG 2000)
[mime]: video/mj2
[extension]: mj2 mjp2
[reg]
[reg_bof]: (?s)\A\x00\x00\x00\x0cjP  \r\n\x87\n.{4}ftypmjp2
[end]

[begin]
[id]: 27015
[puid]: fmt/425
[name]: Video Object File (MPEG-2 subset)
[extension]: vob
[reg]
[reg_bof]: (?s)\A\x00\x00\x01\xba.{8,11}\x00\x00\x01(?:\xbb|\xbd|\xbe|\xe0)
[reg_var]: (?s)\x00\x00\x01\xbf\x03\xd4\x00.{979}\x00\x00\x01\xbf\x03\xfa\x01
[end]

[begin]
[id]: 27016
[puid]: fmt/441
[name]: Windows Media Video 9 Advanced Profile (WVC1)
[extension]: wmv
[reg]
[reg_bof]: (?s)\A0&\xb2u\x8ef\xcf\x11\xa6\xd9\x00\xaa\x00b\xcel.{12}\x01\x02
[reg_var]: (?s).{30}\x91\x07\xdc\xb7\xb7\xa9\xcf\x11\x8e\xe6\x00\xc0\x0c Se.{8}\xc0\xef\x19\xbcM\[\xcf\x11\xa8\xfd\x00\x80_\\D\+.{65}WVC1
[end]

[begin]
[id]: 27017
[puid]: fmt/528
[name]: Multiple-image Network Graphics
[mime]: video/x-mng
[extension]: mng
[reg]
[reg_bof]: (?s)\A.{0,0}\x8aMNG\r\n\x1a\n\x00\x00\x00\x1cMHDR
[reg_eof]: (?s)MEND\! \xf7\xd5.{0,0}\Z
[end]

[begin]
[id]: 27018
[puid]: fmt/573
[name]: WebM
[mime]: video/webm
[extension]: webm
[reg]
[reg_bof]: (?s)\A.{0,0}\x1aE\xdf\xa3.{0,32}B\x82\x84webmB\x87
[end]

[begin]
[id]: 27019
[puid]: fmt/731
[name]: Bink Video format
[extension]: bik
[reg]
[reg_bof]: (?s)\A.{0,0}BIK(?:b|d|f|g|h|i)
[end]

[begin]
[id]: 27020
[puid]: fmt/732
[name]: Bink Video format
[extension]: bik2 bk2
[reg]
[reg_bof]: (?s)\A.{0,0}KB2(?:a|d|f|g|h|i)
[end]

[begin]
[id]: 27021
[puid]: x-fmt/190
[name]: RealMedia
[mime]: application/vnd.rn-realmedia
[extension]: rm rmvb
[reg]
[reg_bof]: (?s)\A\.RMF\x00\x00\x00(?:\x10|\x12)
[end]

[begin]
[id]: 27022
[puid]: fmt/584
[name]: Windows Media Metafile
[extension]: wmx wax wvx asx
[reg]
[reg_bof]: (?s)\A.{0,1}\x3c(?:asx|ASX) (?:version|VERSION).{0,1}=.{0,3}3.{0,64}\x3e
[end]

[begin]
[id]: 27023
[puid]: fmt/648
[name]: Media View Pro
[extension]: mpcatalog
[reg]
[reg_bof]: (?s)\A.{4}030i
[reg_eof]: (?s)SVar.{8,34}030i.{8}\Z
[end]

[begin]
[id]: 27024
[puid]: fmt/569
[name]: Matroska
[extension]: mkv mk3d mka mks
[reg]
[reg_bof]: (?s)\A.{0,0}\x1aE\xdf\xa3.{0,32}B\x82\x88matroskaB\x87
[end]

[begin]
[id]: 27025
[puid]: fmt/5
[name]: Audio/Video Interleaved Format
[mime]: video/x-msvideo
[extension]: avi
[reg]
[reg_bof]: (?s)\ARIFF.{4}AVI .*LIST.{4}hdrlavih.*LIST.{4}movi
[end]

[begin]
[id]: 27026
[puid]: fmt/357
[name]: 3GPP Audio/Video File
[mime]: audio/3gpp, video/3gpp
[extension]: 3gp 3gpp
[reg]
[reg_bof]: (?s)\A.{4}ftyp3g(?:e|g|h|p|r|s|t)[4-9]\x00\x00[\x00-\x03]\x00
[end]

[begin]
[id]: 27028
[puid]: x-fmt/137
[name]: Electronic Arts Music
[extension]: asf
[reg]
[reg_bof]: (?s)\A.{0,0}SCHl.{4}PT
[end]