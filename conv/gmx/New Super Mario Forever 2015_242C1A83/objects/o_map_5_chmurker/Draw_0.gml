if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(sprite_index,0,x+sin(stream)*15,y+sin(stream/20)*15,sin(stream)/40+image_xscale,-sin(stream)/20+image_yscale,0,c_white,image_alpha)
stream+=0.01}

