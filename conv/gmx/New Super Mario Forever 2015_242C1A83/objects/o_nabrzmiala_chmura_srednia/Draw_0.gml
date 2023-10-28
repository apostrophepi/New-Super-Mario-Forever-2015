if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_set_blend_mode(bm_normal)
draw_sprite_ext(s_map_cloud_300,0,x,y+32,0.75-sin(stream)/10+efektuj/50,0.75+sin(stream)/10+efektuj/50,sin(stream/2)*(10+efektuj/20),c_white,0.75)
stream+=0.1+efektuj/20
efektuj=efektuj/1.03
}

