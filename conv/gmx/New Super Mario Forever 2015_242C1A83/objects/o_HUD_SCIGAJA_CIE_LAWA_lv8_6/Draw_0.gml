draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_set_blend_mode(bm_add)
draw_set_alpha(0.5);draw_text_transformed(x,y,string_hash_to_newline("!!!"),2+abs(sin(degtorad(stream/4))),2+abs(sin(degtorad(stream/4))),0);
draw_set_blend_mode(bm_normal)
draw_set_alpha(1)

draw_sprite_ext(global.gfx_disc_saw_4,0,x,y,1,1,obracator,c_white,1)
draw_sprite_ext(global.gfx_disc_saw_4,0,x,y,1,1,obracator+180,c_white,1)
obracator+=10

karnof=(point_distance(obj_mario.x,obj_mario.y,(157960).x,(157960).y)/20)*global.ekran_size_act
karnof2=(-point_distance(obj_mario.x,obj_mario.y,(157960).x,(157960).y)/20)*global.ekran_size_act

draw_sprite_ext(s_fireball_boom,0,x,y,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,sin(degtorad(stream))*30,c_white,1)
draw_sprite_ext(s_fireball_boom,0,x,y,5+sin(degtorad(stream))/10,5-sin(degtorad(stream))/10,sin(degtorad(stream))*30,c_white,0.5)

draw_sprite_ext(s_fireball_boom,0,karnof2+ixor,y,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,sin(degtorad(stream))*30,c_white,1)
draw_sprite_ext(s_fireball_boom,0,karnof+ixor,y,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,sin(degtorad(stream))*30,c_white,1)

draw_sprite_ext(s_fireball_boom,0,karnof2+ixor,iyor,2+sin(degtorad(stream))/6,2+sin(degtorad(stream))/6,stream*5,c_white,1)
draw_sprite_ext(global.lava_run_hud,0,karnof2+ixor,iyor,1.2+sin(degtorad(stream/3))/6,1.2+sin(degtorad(stream/3))/6,sin(degtorad(stream/5))*20,c_white,1)



draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+karnof+x+(((sin(degtorad(220+kat+globalny_kat))*40/3)*size)),y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat+180))*run_promien*-1+15)*size2+schylak+globalny_kat+40,power_star_kolorek,1*image_alphar)
draw_sprite_ext(global.gfx_mario_leg[anim],0,karnof+x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),y+((cos(degtorad(20+kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat,power_star_kolorek,1*image_alphar)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,karnof+x,sin(degtorad(hamowanie/2))*3+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1*image_alphar)
draw_sprite_ext(global.gfx_mario_chest[anim],0,karnof+x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,power_star_kolorek,1*image_alphar)
draw_sprite_ext(global.gfx_mario_leg[anim],0,karnof+x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),y+((cos(degtorad(-22+kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat,power_star_kolorek,1*image_alphar)
draw_sprite_ext(global.gfx_mario_head[anim],0,karnof+x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,power_star_kolorek,1*image_alphar)
draw_sprite_ext(global.gfx_mario_mrugacz,0,karnof+x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,power_star_kolorek,mrugacz[2]*image_alphar)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+karnof+x+(((sin(degtorad(220+kat+globalny_kat))*40/3)*size)),y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*run_promien*-1+15)*size2+schylak+globalny_kat,power_star_kolorek,1*image_alphar)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,karnof+x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat,power_star_kolorek,1*image_alphar)}

run_kat+=15
run_promien=30
run_pochylenie=-30
kat=-10







ixor=x
iyor=y
stream+=10




//

draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_set_font(global.map_fonts_1)
draw_set_alpha(1);draw_text_transformed(x,y,string_hash_to_newline("!"),1+abs(sin(degtorad(stream/2))),1+abs(sin(degtorad(stream/2))),0);


