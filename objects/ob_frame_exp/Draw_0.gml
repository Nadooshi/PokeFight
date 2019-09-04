/// @desc Draw exp bar with frame

draw_sprite_ext(sprFrame, 0, xFrame, yFrame, frameXScale, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprFrame, 1, xFrame + wFrame, yFrame, 1, 1, 0, c_white, image_alpha)

draw_sprite_ext(sprExpbar, 0, xFrame, yFrame + 4, expXScale * expFillPercent, 1, 0, c_white, image_alpha)

draw_self()


