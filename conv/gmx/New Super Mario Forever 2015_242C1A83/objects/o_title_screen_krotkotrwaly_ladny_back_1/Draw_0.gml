/*zaczyna_sie+=10

if zaczyna_sie>400 {if dzielnik<1000 {dzielnik+=0.01+dzielnik/500}}
if dzielnik>=1000 {instance_destroy()}
x=view_xview[0]
y=view_yview[0]

draw_sprite_ext(global.title_back_1,0,x,y,1*global.ekran_size_act,1*global.ekran_size_act,0,c_white,1/dzielnik)

draw_set_blend_mode(bm_add)
draw_sprite_ext(global.title_glowwing,0,x,y+300*global.ekran_size_act,10*global.ekran_size_act,15*global.ekran_size_act,0,c_white,0.75/dzielnik+sin(degtorad(losower))/10/dzielnik)
draw_sprite_ext(global.title_glowwing,0,x+800*global.ekran_size_act,y+600*global.ekran_size_act,5*global.ekran_size_act,5*global.ekran_size_act,0,c_white,0.75/dzielnik+sin(degtorad(losower))/10/dzielnik)

draw_sprite_ext(global.title_glowwing_sparcle,0,x+800*global.ekran_size_act,y+600*global.ekran_size_act,15*global.ekran_size_act,15*global.ekran_size_act,losower/50,c_white,0.15/dzielnik+sin(degtorad(losower))/10/dzielnik)
draw_sprite_ext(global.title_glowwing_sparcle,0,x+800*global.ekran_size_act,y+600*global.ekran_size_act,25*global.ekran_size_act,25*global.ekran_size_act,losower/50+180,c_white,0.15/dzielnik+sin(degtorad(losower))/10/dzielnik)



draw_set_blend_mode(bm_normal)

losower+=5







/* */
/*  */
