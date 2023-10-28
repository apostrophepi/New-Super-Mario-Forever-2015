if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_tank_wheel,0,x,y,1,1,stream,c_white,1)}
if __view_get( e__VW.XView, 0 )<room_width-800*global.ekran_size_act {stream+=2}

