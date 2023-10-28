if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(s_domek_grzybkowy_2,0,x,y,1-sin(degtorad(stream))/20,1+sin(degtorad(stream))/15,sin(degtorad(stream/2))*10,c_white,1)
    stream+=6
    
    
    
    }

