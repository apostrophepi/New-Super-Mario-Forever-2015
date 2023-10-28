draw_sprite_ext(global.gfx_coin,0,x+12,y+12,0.85+sin(kont)/20,1,0,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_coin,0,x+12,y+12,0.85+sin(kont)/20,1,0,c_white,sin(kont)/2)
draw_set_blend_mode(bm_normal)
kont+=0.1
