local Sequence = require 'tetris.randomizers.fixed_sequence'

local PowerOnSequence = Sequence:extend()

function PowerOnSequence:initialize()
    self.super:initialize()
    self.sequence = "TITIIJILSJOZZJLSJISLZZZJIJJJOLZJSILTLJOIOOTJTOSZZO" ..
                    "ISLZTOJJLSJOIIZZZJSIIZLZZOIOOTSZZSSSTJOZITZOSLLTZJ" ..
                    "JZZJJIZOSOJLOZLZJLJIIOTTOOIZSJSSSTLZLJTZOLLOOILTSZ" ..
                    "TTOILZOJISLTILLZTSLISTTIIJSSZTTLLILJZOOZTIISZTIJIJ" ..
                    "TSOLTTLIITIOLTSJILIOOJSOZZLZZLLSZJZOSZLLLZZJITZTSL" ..
                    "OISOLLOSOOZLJSJOZJZISZSLLJITTISJZIIOOOOTJZZIOJOZOJ" ..
                    "JJSZJTJTJJSJSSSILOTLOITJISSZJIOOOZOISTSJLSTTSLLOSL" ..
                    "ZJSOLIJJLIZSTJISSSTTIJOJZJIOLLLIIOIZSLTOOLOOZJOJSS" ..
                    "LJSTZTZJLZITZTSJLIZSZSTITJZTJOJIJSJJLTOOSZLIOSIJOI" ..
                    "OOLSZJLSLJIZLSJIIJITSTLSISLZZOJZSSIOZTLZTJZIZSJTOT" ..
                    "TLOTSTTJLILJSOOJOLTLOILTSIJIJTZJLZIITIOOLZLLTIIJTZ" ..
                    "TLSITLSSISTTTLILISLTLTTTITLTJTJLLSIITLZLTSZJZOISOS" ..
                    "IOTSOJLJJSSZJOSOTOISLSTJLZSLZZSLISLJZTJLJSZZLSSSII" ..
                    "JTOJJSZLJLIZOIJSSJLSTSJOSJTOLLTTSTIJLZTOTZLSZLJTOL" ..
                    "SSTTLTIOSTTILSJZTLILIZIOTTZSOJLILSJOOIJOZIJJISIOII" ..
                    "OIZZLOIITTZTTIZTLIILSITTOSZOTZSSTJZOJJLOOSJZJLOIJS" ..
                    "TOZTZZTOZLOLOLJOZLOIISLJZIOZTTTZISOTOIIZZZLITSLTIZ" ..
                    "ZISZSJTIOZLZOLOSJSLIJLILOJTZJOJLTOLSOLIZJJOZIILTIT" ..
                    "IZZJTSTSTITILTSTLOJZZOLZOZLJJJOTITLTSSZTOSTZSTOTJJ" ..
                    "LZSIIZZSISJSSSZIJIIOIOZOIZJTJIJOIISTTJJTTTJITTITSI"
end

return PowerOnSequence