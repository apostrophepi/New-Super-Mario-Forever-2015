if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {
draw_sprite_ext(global.cogweel2,0,x+60-100-60,y-105+30,20,1,0,c_white,1)


draw_sprite_ext(global.cogweel2,0,x+80-180,y-105+20,sin(degtorad(kat))*odleglosc/1.3/10+9,1,-90,c_white,1)
draw_sprite_ext(global.cogweel2,0,x+280-180,y-105+20,sin(degtorad(kat+180))*odleglosc/1.3/10+9,1,-90,c_white,1)


draw_sprite_ext(global.cogweel,0,x-100,y-80,1,1,kreciuj2,c_white,1)
draw_sprite_ext(global.cogweel,0,x+100,y-80,1,1,kreciuj2,c_white,1)



}

