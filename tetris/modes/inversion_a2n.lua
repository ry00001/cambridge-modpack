local SurvivalA2Game = require "tetris.modes.survival_a2n"

local InversionGame = SurvivalA2Game:extend()

InversionGame.name = "Inversion A2N"
InversionGame.hash = "InversionA2N"
InversionGame.tagline = "What if the active piece was invisible?"

function InversionGame:new(_, c)
    SurvivalA2Game:new(_, c)
    self.piece_active_time = 0
end

function InversionGame:onPieceEnter()
	if (self.level % 100 ~= 99 and self.level ~= 998) and not self.clear and self.frames ~= 0 then
		self.level = self.level + 1
	end
    self.piece_active_time = 0
end

function InversionGame:onHold()
    self.piece_active_time = 0
end

function InversionGame:whilePieceActive()
    self.piece_active_time = self.piece_active_time + 1
end

function InversionGame:getPieceFadeoutTime()
    return math.ceil(self:getLockDelay() / 4)
end

function InversionGame:drawPiece()
    if self.piece ~= nil then
        self.piece:draw(1 - self.piece_active_time / self:getPieceFadeoutTime(), 1, grid)
    end
end

return InversionGame