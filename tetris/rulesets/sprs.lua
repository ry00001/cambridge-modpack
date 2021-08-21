local PRS = require 'tetris.rulesets.prs'

local SPRS = PRS:extend()

SPRS.name = "Super P.R.S"
SPRS.hash = "SuperPRS"
SPRS.world = true

function SPRS:attemptWallkicks(piece, newpiece, rot_dir, grid)
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
    for y=0,-5,-1 do
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

return SPRS