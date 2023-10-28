if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_map_shadow_1,0,x,y,3+sin(koko)/50,1-sin(koko)/50,0,c_white,1)
draw_sprite_ext(s_map_shadow_1,0,x,y,3+sin(koko)/50,1-sin(koko)/50,0,c_white,1)
draw_sprite_ext(s_map_tank_1,0,x,y+sin(koko*5),1+sin(koko)/50,1-sin(koko)/50,sin(koko/10)*5,c_white,1)}
koko+=0.1

