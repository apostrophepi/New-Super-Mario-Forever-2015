if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
draw_sprite_ext(global.mega_winorosl_podwodna,0,x,y,1+sin(degtorad(stream+100))/8,1-sin(degtorad(stream+100))/12,90+sin(degtorad((stream+100)/3))*20+35,c_white,1)
draw_sprite_ext(global.mega_winorosl_podwodna,0,x,y,1+sin(degtorad(stream))/12,1-sin(degtorad(stream))/8,90+sin(degtorad(stream/2))*20-45,c_white,1)

draw_sprite_ext(global.mega_winorosl_podwodna,0,x,y,0.5+sin(degtorad(stream+300))/12,0.5-sin(degtorad(stream+300))/8,90+sin(degtorad(stream/2))*20-25,c_white,1)
draw_sprite_ext(global.mega_winorosl_podwodna,0,x,y,1+sin(degtorad(stream+200))/10,1-sin(degtorad(stream+200))/10,90+sin(degtorad(stream/4))*20,c_white,1)
stream+=0.5}

