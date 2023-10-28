draw_sprite_ext(s_boo_glow,0,x,y,wielkosc,wielkosc,0,c_white,image_alpha)

wielkosc=wielkosc/1.13
image_alpha=image_alpha/1.11
if image_alpha<=0.1 {instance_destroy()}

