if o_koniec_etapu.local_global=4 && wysun<120 && o_koniec_etapu.timer>=150 {wysun+=2}
if wysun>0
    {
    koko+=0.01
    draw_sprite_ext(s_map_castle_flag_2,0,x+sin(koko)*2,y-70-wysun+sin(koko*2)*5,1+sin(koko*30)/10,1-sin(koko*30)/10,360+sin(koko*25)*10,c_white,1)
    draw_sprite_ext(s_map_castle_3,0,x,y-wysun,1,0.25,0,c_white,1)
    draw_sprite_ext(s_map_castle_point,0,x,y-wysun-100,1,1,0,c_white,1)
    
    }

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1)
    }
    
    

