if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(s_goomba_dark_scenery,stream*2,x+sin(degtorad(stream))*odleglosc_chodzenia,y,image_xscale,1,sin(degtorad(stream))*10,c_white,1)
stream+=0.5
if stream>360 {stream=0}
}

