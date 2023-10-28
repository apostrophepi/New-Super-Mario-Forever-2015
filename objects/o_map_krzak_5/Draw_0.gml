if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1 {
draw_sprite_ext(s_map_krzak_7,0,x,y,1+sin(koko)/10,1-sin(koko)/10,360+sin(koko)*5,c_white,1)}
koko+=0.1

