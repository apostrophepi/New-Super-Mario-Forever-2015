if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(s_crystals_caveniung,0,x+20,y,1,1,sin(degtorad(stream+10))*20,kolor,1)

    
    stream+=0.075
    }

