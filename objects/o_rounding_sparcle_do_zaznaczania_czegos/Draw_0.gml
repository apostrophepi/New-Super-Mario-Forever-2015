if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5
    {
    draw_sprite_ext(global.gfx_effect_star,0,x,y,4,4,stream,c_white,1)
    stream+=5
    }

