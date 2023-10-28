if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(global.gfx_lakitus_1,0,x,y+32,1-sin(stream)/10+efektuj/50,1+sin(stream)/10+efektuj/50,sin(stream/2)*(10+efektuj),c_white,1-sin(stream)/5)
stream+=0.1+efektuj/10
efektuj=efektuj/1.03
}

