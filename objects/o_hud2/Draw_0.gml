draw_set_font(global.font)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_valign(fa_center)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+32,string_hash_to_newline("Mario"),0,0,1,1,0)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+62,string_hash_to_newline("FPS:_"+string(fps)),0,0,1,1,0)
draw_set_blend_mode(bm_normal)
draw_set_valign(fa_left)
