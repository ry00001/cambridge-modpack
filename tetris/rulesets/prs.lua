local SRS = require 'tetris.rulesets.standard'

local PRS = SRS:extend()

PRS.name = "Permissive Rotation System"
PRS.hash = "PRS"
PRS.world = true

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