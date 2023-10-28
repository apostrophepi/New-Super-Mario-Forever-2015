draw_sprite_ext(s_changer,0,x,y,efekter/20,efekter/20,0,c_white,efekter/20)

efekter=efekter/1.1-0.1
if efekter<=0 {instance_destroy()}

