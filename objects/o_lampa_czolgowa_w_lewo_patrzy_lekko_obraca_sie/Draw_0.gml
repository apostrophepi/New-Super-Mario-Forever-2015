if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2
    {
    draw_sprite_ext(global.lampa_czolgowa_1,0,x,y,1,1,sin(stream)*10,c_white,1)
    
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.lampa_czolgowa_2,0,x,y,5,5,sin(stream)*10,c_white,0.5)
    draw_set_blend_mode(bm_normal)
    
    stream+=0.025
    }

