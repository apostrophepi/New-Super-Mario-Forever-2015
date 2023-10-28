if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(global.underworld_crystals_2,0,x+20,y,0.5,0.5,sin(degtorad(stream+10))*20-45,c_red,1)
    draw_sprite_ext(global.underworld_crystals_2,0,x-20,y,0.5,0.5,sin(degtorad(stream+20))*20+45,c_red,1)
    
    
    draw_sprite_ext(global.underworld_crystals_2,0,x,y,1,1,sin(degtorad(stream))*20,c_red,1)
    
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.underworld_crystals_2,0,x,y,1,1,sin(degtorad(stream))*20,c_red,sin(stream)/5)
        draw_sprite_ext(global.underworld_crystals_2,0,x+20,y,0.5,0.5,sin(degtorad(stream+10))*20-45,c_red,sin(stream+100)/5)
    draw_sprite_ext(global.underworld_crystals_2,0,x-20,y,0.5,0.5,sin(degtorad(stream+20))*20+45,c_red,sin(stream+200)/5)
    draw_set_blend_mode(bm_normal)
    
    stream+=0.075
    }

