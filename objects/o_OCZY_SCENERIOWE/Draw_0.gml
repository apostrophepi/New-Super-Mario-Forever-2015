if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
{

    draw_sprite_ext(s_map_oczy,0,x,y,1.5,1.5-oczys*1.5,0,c_white,1)
    
    if random(100)>99 {oczys=1}
    if oczys>0 {oczys=oczys/1.3}
    
}

