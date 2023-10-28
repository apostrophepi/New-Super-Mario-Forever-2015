    draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, 0 )+400*global.ekran_size_act,__view_get( e__VW.YView, 0 )+200*global.ekran_size_act,3+sin(stream)/8,3-sin(stream)/8,sin(stream)*2,c_white,abs(sin(stream)))
    stream+=0.005

