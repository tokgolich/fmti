[begin]
[id]: 26001
[puid]: x-fmt/136
[name]: Audio Interchange File Format (compressed)
[mime]: audio/x-aiff
[extension]: aifc
[reg]
[reg_bof]: (?s)\AFORM.{4}AIFC
[end]

[begin]
[id]: 26002
[puid]: x-fmt/139
[name]: NeXT/Sun sound
[mime]: audio/basic
[extension]: au
[reg]
[reg_bof]: (?s)\A\.snd\x00\x00\x00.{5}\x00\x00\x00(?:\x01|\x02|\x03|\x04|\x05|\x06|\x07|\x17|\x18|\x19|\x1a|\x1b).{4}\x00\x00\x00
[end]

[begin]
[id]: 26003
[puid]: x-fmt/183
[name]: RealAudio Metafile
[mime]: audio/vnd.rn-realaudio, audio/x-pn-realaudio
[extension]: ram
[reg]
[reg_bof]: (?s)\Artsp://
[end]

[begin]
[id]: 26004
[name]: CD Audio
[mime]: application/x-cdf
[extension]: cda
[reg]
[reg_bof]: (?s)\ARIFF\$\x00\x00\x00CDDAfmt \x18
[end]

[begin]
[id]: 26005
[puid]: x-fmt/230
[name]: MIDI Audio
[mime]: audio/midi
[extension]: mid midi
[reg]
[reg_bof]: (?s)\AMThd\x00\x00\x00\x06\x00[\x00-\x02].{4}MTrk
[end]

[begin]
[id]: 26006
[puid]: x-fmt/278
[name]: RealAudio
[mime]: audio/vnd.rn-realaudio
[extension]: ra
[reg]
[reg_bof]: (?s)\A\.ra\xfd\x00\x03
[end]

[begin]
[id]: 26007
[puid]: fmt/6
[name]: Waveform Audio
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVE.*fmt .{18,}data
[end]

[begin]
[id]: 26008
[puid]: fmt/2
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x01\x00
[end]

[begin]
[id]: 26009
[puid]: fmt/134
[name]: MPEG 1/2 Audio Layer 3
[mime]: audio/mpeg
[extension]: mp3
[priority]: 5
[reg]
[reg_bof]: (?s)\AID3
[reg]
[reg_bof]: (?s)\A\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}\xff\xfb[\x10-\xeb].{46,1439}
[reg]
[reg_bof]: (?s)\A\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}\xff\xf3[\x10-\xeb].{46,1439}
[reg]
[reg_bof]: (?s)\A\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}\xff\xfa[\x10-\xeb].{46,1439}
[reg]
[reg_bof]: (?s)\A\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}\xff\xf2[\x10-\xeb].{46,1439}
[end]

[begin]
[id]: 26010
[puid]: fmt/132
[name]: Windows Media Audio
[mime]: audio/x-ms-wma
[extension]: wma asf
[reg]
[reg_bof]: (?s)\A0&\xb2u\x8ef\xcf\x11\xa6\xd9\x00\xaa\x00b\xcel.{12}\x01\x02
[reg_var]: (?s).{30}\x91\x07\xdc\xb7\xb7\xa9\xcf\x11\x8e\xe6\x00\xc0\x0c Se.{8}@\x9ei\xf8M\[\xcf\x11\xa8\xfd\x00\x80_\\D\+.{38}(?:a\x01|b\x01|c\x01)
[end]

[begin]
[id]: 26011
[puid]: fmt/1
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x00\x00
[end]

[begin]
[id]: 26012
[puid]: fmt/141
[name]: Waveform Audio (PCMWAVEFORMAT)
[mime]: audio/x-wav
[extension]: wav wav
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVEfmt \x10\x00\x00\x00\x01\x00.{14,1000}data
[end]

[begin]
[id]: 26013
[puid]: fmt/142
[name]: Waveform Audio (WAVEFORMATEX)
[mime]: audio/x-wav
[extension]: wav wave
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVEfmt [^\x10].{3}(?!\xfe\xff).{16,1000}data
[end]

[begin]
[id]: 26014
[puid]: fmt/143
[name]: Waveform Audio (WAVEFORMATEXTENSIBLE)
[mime]: audio/x-wav
[extension]: wav wave
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVEfmt .{4}\xfe\xff.{38,1000}data
[end]

[begin]
[id]: 26015
[puid]: fmt/198
[name]: MPEG Audio Stream, Layer II
[mime]: audio/mpeg
[extension]: mp2 mpw mpa
[reg]
[reg_bof]: (?s)\A\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{45,1726}
[reg]
[reg_bof]: (?s)\A\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{45,1726}
[reg]
[reg_bof]: (?s)\A\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{45,1726}
[reg]
[reg_bof]: (?s)\A\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{45,1726}
[reg]
[reg_bof]: (?s)\AID3
[reg_eof]: (?s)\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{45,1726}\xff\xfc[\x10-\xeb].{7,500}\x00\x00\x00.{36,1426}\Z
[reg]
[reg_bof]: (?s)\AID3
[reg_eof]: (?s)\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{45,1726}\xff\xfd[\x10-\xeb].{7,500}\x00\x00\x00.{36,1426}\Z
[reg]
[reg_bof]: (?s)\AID3
[reg_eof]: (?s)\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{45,1726}\xff\xf4[\x10-\xeb].{7,500}\x00\x00\x00.{36,1426}\Z
[reg]
[reg_bof]: (?s)\AID3
[reg_eof]: (?s)\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{45,1726}\xff\xf5[\x10-\xeb].{7,500}\x00\x00\x00.{36,1426}\Z
[end]

[begin]
[id]: 26016
[puid]: fmt/203
[name]: Ogg Vorbis Codec Compressed Multimedia File
[mime]: audio/ogg
[extension]: ogg
[reg]
[reg_bof]: (?s)\AOggS\x00\x02.{23}vorbis\x00\x00\x00\x00.{19}OggS
[end]

[begin]
[id]: 26017
[puid]: fmt/279
[name]: FLAC (Free Lossless Audio Codec)
[extension]: flac
[reg]
[reg_bof]: (?s)\A.{0,4}fLaC\x00\x00\x00"
[end]

[begin]
[id]: 26018
[puid]: fmt/314
[name]: Play SID Audio
[mime]: audio/prs.sid
[extension]: dxr psid
[reg]
[reg_bof]: (?s)\APSID\x00\x01\x00v
[end]

[begin]
[id]: 26019
[puid]: fmt/315
[name]: Play SID Audio
[mime]: audio/prs.sid
[extension]: sid psid
[reg]
[reg_bof]: (?s)\APSID\x00(?:\x01|\x02)\x00\|
[end]

[begin]
[id]: 26020
[puid]: fmt/316
[name]: Real SID Audio
[mime]: audio/prs.sid
[extension]: sid
[reg]
[reg_bof]: (?s)\ARSID\x00\x02\x00\|.{4}\x00\x00
[end]

[begin]
[id]: 26021
[puid]: fmt/323
[name]: Extended Module Audio File
[mime]: audio/xm
[extension]: xm
[reg]
[reg_bof]: (?s)\AExtended Module: .{20}\x1a
[end]

[begin]
[id]: 26022
[puid]: fmt/347
[name]: MPEG 1/2 Audio Layer I
[mime]: audio/mpeg
[extension]: mp1
[reg]
[reg_bof]: (?s)\A\xff\xf6[\x10-\xeb].{29,769}\xff\xf6[\x10-\xeb].{29,769}\xff\xf6[\x10-\xeb].{29,769}\xff\xf6[\x10-\xeb].{29,769}
[reg]
[reg_bof]: (?s)\A\xff\xf7[\x10-\xeb].{29,769}\xff\xf7[\x10-\xeb].{29,769}\xff\xf7[\x10-\xeb].{29,769}\xff\xf7[\x10-\xeb].{29,769}
[reg]
[reg_bof]: (?s)\A\xff\xfe[\x10-\xeb].{29,769}\xff\xfe[\x10-\xeb].{29,769}\xff\xfe[\x10-\xeb].{29,769}\xff\xfe[\x10-\xeb].{29,769}
[reg]
[reg_bof]: (?s)\A\xff\xff[\x10-\xeb].{29,769}\xff\xff[\x10-\xeb].{29,769}\xff\xff[\x10-\xeb].{29,769}\xff\xff[\x10-\xeb].{29,769}
[end]

[begin]
[id]: 26023
[puid]: fmt/356
[name]: Adaptive Multi-Rate Audio
[mime]: audio/amr
[extension]: amr
[reg]
[reg_bof]: (?s)\A#\!AMR\n
[end]

[begin]
[id]: 26024
[puid]: fmt/404
[name]: RealAudio
[extension]: ra
[reg]
[reg_bof]: (?s)\A\.ra\xfd\x00\x04\x00\x00\.ra4
[end]

[begin]
[id]: 26025
[puid]: fmt/414
[name]: Audio Interchange File Format
[extension]: aif aiff
[reg]
[reg_bof]: (?s)\AFORM.{4}AIFF
[end]

[begin]
[id]: 26026
[puid]: fmt/416
[name]: Apple Core Audio Format
[extension]: caf
[reg]
[reg_bof]: (?s)\A.{0,0}caff\x00\x01\x00\x00desc
[end]

[begin]
[id]: 26027
[puid]: fmt/527
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x02\x00
[end]

[begin]
[id]: 26028
[puid]: fmt/596
[name]: Apple Lossless Audio Codec
[extension]: m4a mp4
[reg]
[reg_bof]: (?s)\A.{4}ftypM4A 
[reg_var]: (?s)alac.{0,72}alac
[end]

[begin]
[id]: 26029
[puid]: fmt/703
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x00\x00.*fmt .{4}\x01\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}\x01\x00.*bext.{350}\x00\x00
[end]

[begin]
[id]: 26030
[puid]: fmt/704
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x01\x00.*fmt .{4}\x01\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}\x01\x00.*bext.{350}\x01\x00
[end]

[begin]
[id]: 26031
[puid]: fmt/705
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x02\x00.*fmt .{4}\x01\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}\x01\x00.*bext.{350}\x02\x00
[end]

[begin]
[id]: 26032
[puid]: fmt/706
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x00\x00.*fmt .{4}P\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}P\x00.*bext.{350}\x00\x00
[end]

[begin]
[id]: 26033
[puid]: fmt/707
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x01\x00.*fmt .{4}P\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}P\x00.*bext.{350}\x01\x00
[end]

[begin]
[id]: 26034
[puid]: fmt/708
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x02\x00.*fmt .{4}P\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}P\x00.*bext.{350}\x02\x00
[end]

[begin]
[id]: 26035
[puid]: fmt/709
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav rf64
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}\xfe\xff.*bext.{350}\x00\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x00\x00.*fmt .{4}\xfe\xff
[end]

[begin]
[id]: 26036
[puid]: fmt/710
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav rf64
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}\xfe\xff.*bext.{350}\x01\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x01\x00.*fmt .{4}\xfe\xff
[end]

[begin]
[id]: 26037
[puid]: fmt/711
[name]: Broadcast WAVE
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*fmt .{4}\xfe\xff.*bext.{350}\x02\x00
[reg]
[reg_bof]: (?s)\A.{0,0}RIFF.{4}WAVE.*bext.{350}\x02\x00.*fmt .{4}\xfe\xff
[end]

[begin]
[id]: 26038
[puid]: fmt/712
[name]: RF64
[extension]: wav rf64
[reg]
[reg_bof]: (?s)\A.{0,0}RF64\xff\xff\xff\xffWAVEds64
[end]

[begin]
[id]: 26039
[puid]: fmt/713
[name]: RF64 Multichannel Broadcast Wave format
[extension]: wav rf64
[reg]
[reg_bof]: (?s)\A.{0,0}RF64\xff\xff\xff\xffWAVEds64.*bext
[end]

[begin]
[id]: 26040
[puid]: fmt/714
[name]: Extensible Music Format
[extension]: xmf mxmf
[reg]
[reg_bof]: (?s)\A.{0,0}XMF_
[end]

[begin]
[id]: 26041
[puid]: fmt/715
[name]: Impulse Tracker Module
[extension]: it
[reg]
[reg_bof]: (?s)\A.{0,0}IMPM
[end]

[begin]
[id]: 26042
[puid]: fmt/716
[name]: MOD Audio Module
[extension]: mod
[reg]
[reg_bof]: (?s)\A.{1080}M\.K\.
[end]

[begin]
[id]: 26043
[puid]: fmt/722
[name]: Oktalyzer Audio file
[extension]: okt
[reg]
[reg_bof]: (?s)\A.{0,0}OKTASONG
[end]

[begin]
[id]: 26044
[puid]: x-fmt/389
[name]: Exchangeable Image File Format (Audio)
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVE.*fmt .{4}(?:\x01|\x07|\x11)\x00.*LIST.{4}exifever.{4}0210.*data
[end]

[begin]
[id]: 26045
[puid]: x-fmt/396
[name]: Exchangeable Image File Format (Audio)
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVE.*fmt .{4}(?:\x01|\x07|\x11)\x00.*LIST.{4}exifever.{4}0220.*data
[end]

[begin]
[id]: 26046
[puid]: x-fmt/397
[name]: Exchangeable Image File Format (Audio)
[mime]: audio/x-wav
[extension]: wav
[reg]
[reg_bof]: (?s)\ARIFF.{4}WAVE.*fmt .{4}(?:\x01|\x07|\x11)\x00.*LIST.{4}exifever.{4}0200.*data
[end]
