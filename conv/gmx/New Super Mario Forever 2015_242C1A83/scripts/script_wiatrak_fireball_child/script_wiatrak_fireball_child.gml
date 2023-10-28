if global.pauza=0
    {
    stream-=5        
    }
    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1
    draw_sprite_ext(s_fireball_small,0,x,y,1,1,stream,c_white,1)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_fireball_small,0,x,y,1.5,1.5,stream*1.4,c_white,0.25)
    draw_set_blend_mode(bm_normal)
