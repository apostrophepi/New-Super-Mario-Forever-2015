if global.pauza=0
    {
    stream-=1       
    }
    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
    draw_sprite_ext(s_wiatrak_kolec,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
