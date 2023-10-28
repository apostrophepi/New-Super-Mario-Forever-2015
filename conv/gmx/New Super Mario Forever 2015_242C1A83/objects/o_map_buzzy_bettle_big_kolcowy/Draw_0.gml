if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if kierunek=1 {x+=0.5}
if kierunek=-1 {x-=0.5}
if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=0.1


draw_sprite_ext(s_map_shadow_1,0,x+16,y+20-20+sin(stream)*2,1,0.5,sin(stream)*5+360,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+17-6*kierunek,y+10-20,kierunek/1.80,0.8,sin(stream*2)*20,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+17+6*kierunek,y+10-20,kierunek/1.80,0.8,sin(-stream*2)*20,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+17+12*kierunek,y+10-20,kierunek/1.80,0.8,sin(stream*2)*20,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+17-12*kierunek,y+10-20,kierunek/1.80,0.8,sin(-stream*2)*20,c_white,1)
draw_sprite_ext(s_big_buzzy_beetle_3,0,x+16,y-3+sin(stream)*2-20,kierunek/2,1/2,sin(stream)*5+360,c_white,1)


}

