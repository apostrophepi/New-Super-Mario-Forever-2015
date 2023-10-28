if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_set_blend_mode_ext(bm_zero,bm_inv_src_alpha)
draw_sprite_ext(sprite_index,0,x,y,0.2+wielkosc,0.4+wielkosc,image_angle,c_white,image_alpha/1.1)
draw_set_blend_mode(bm_normal)

image_angle+=2
speed=speed/1.02
if speed<2 {image_alpha-=0.05}
if image_alpha<=0 {instance_destroy()}
wielkosc+=0.002}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}

