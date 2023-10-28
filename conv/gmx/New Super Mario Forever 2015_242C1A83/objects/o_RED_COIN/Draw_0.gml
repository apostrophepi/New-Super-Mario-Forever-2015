if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 && global.coins_red_time>0
    {
    draw_sprite_ext(sprite_index,0,x,y,1+sin(stream)/50,1-sin(stream)/50,sin(stream)*5,c_white,1)
    stream+=0.1
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprite_index,0,x,y,1+sin(stream)/20,1-sin(stream)/20,sin(stream)*5,c_white,sin(stream))
    draw_set_blend_mode(bm_normal)
    
    }

