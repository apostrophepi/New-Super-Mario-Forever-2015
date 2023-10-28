if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
draw_sprite_ext(global.spider_web,0,x,y,image_xscale,image_xscale,image_angle,c_white,1)
draw_sprite_ext(global.spider_web,0,x,y,image_xscale,-image_xscale,image_angle,c_white,1)
}

