function script_anim_schylanie() {
	if animacja=2{
	// schylanie
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15+schylanie/5)*strzelanie+strzelanie2)*size2-240*size2,power_star_kolorek,1+miganie)}
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2+schylak,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,schylanie/5+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1-schylanie*2+strzelanie2/10)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,schylanie/5+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie*3+strzelanie2/5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,schylanie/5+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22+schylanie)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie*3-strzelanie2/10)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie*3)*size2,power_star_kolorek,mrugacz[2])

	if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2+schylanie,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,image_alphar)}

	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2+schylak,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(schylanie/5+180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,power_star_kolorek,1+miganie)}
	if schylanie<50 {schylanie+=5;run_pochylenie-=5}
	if schylanie>50 {schylanie=50}
	if run_pochylenie<=-50 {run_pochylenie=-50}
	run_promien=0
	}



}
