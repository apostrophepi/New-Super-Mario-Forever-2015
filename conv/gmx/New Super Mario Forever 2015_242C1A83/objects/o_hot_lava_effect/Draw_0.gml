if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {


draw_sprite_ext(s_lava_glow_1,0,x,y,3+sin(stream*20)/10,3-sin(stream*20)/10,stream*80,c_white,abs(sin(stream)/2))
stream+=0.01
}}

