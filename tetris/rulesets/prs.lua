local SRS = require 'tetris.rulesets.standard'

local PRS = SRS:extend()

PRS.name = "Permissive Rotation System"
PRS.hash = "PRS"
PRS.world = true

function PRS:attemptRotate(new_inputs, piece, grid, initial)
	local rot_dir = 0
	
	if (new_inputs["rotate_left"] or new_inputs["rotate_left2"]) then
		rot_dir = 3
	elseif (new_inputs["rotate_right"] or new_inputs["rotate_right2"]) then
		rot_dir = 1
	elseif (new_inputs["rotate_180"]) then
		rot_dir = self:get180RotationValue()
	end

	if rot_dir == 0 then return end
	
    if config.gamesettings.world_reverse == 3 or (self.world and config.gamesettings.world_reverse == 2) then
        rot_dir = 4 - rot_dir
    end

	local new_piece = piece:withRelativeRotation(rot_dir)
	self:attemptWallkicks(piece, new_piece, rot_dir, grid)
end

function PRS:attemptWallkicks(piece, newpiece, rot_dir, grid)
    for y=0,5 do
        for x=0,5 do
            local offset = {x=x, y=y}
            kicked_piece = newpiece:withOffset(offset)
            if grid:canPlacePiece(kicked_piece) then
                piece:setRelativeRotation(rot_dir)
                piece:setOffset(offset)
                self:onPieceRotate(piece, grid)
                return
            end
        end
        for x=0,5 do
            local offset = {x=-x, y=y}
            kicked_piece = newpiece:withOffset(offset)
            if grid:canPlacePiece(kicked_piece) then
                piece:setRelativeRotation(rot_dir)
                piece:setOffset(offset)
                self:onPieceRotate(piece, grid)
                return
            end
        end
    end
end

return PRS