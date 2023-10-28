function script_anim_trzymanie_sie_drazka() {
	// TRZYMANIE SIE DRAZKA POZIOMEGO
	// trzymanie sie drazka - zwisanie
	if animacja=13{
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+drazkowanie+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,power_star_kolorek,1+miganie)}
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5+drazkowanie+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+sin(degtorad(strzelanie2*2))*200-sin(degtorad(hamowanie/2))*10)*size2+schylak-100*size2*-1,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,drazkowanie+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,5*size2+x,sin(degtorad(hamowanie/2))*3+drazkowanie+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+30*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,sin(degtorad(hamowanie/2))*3+drazkowanie+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,drazkowanie+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-40-sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*3+drazkowanie+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5+drazkowanie+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,mrugacz[2])
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,sin(degtorad(hamowanie/2))*5+drazkowanie+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+sin(degtorad(hamowanie/2))*10)*size2+schylak+100*size2*-1,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+drazkowanie+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,power_star_kolorek,1+miganie)}


	drazkowanie=-sin(degtorad(hamowanie/2))*10+10
	hamowanie+=5
	kat=0
	//size=1
	run_kat=0
	run_promien=0
	if run_pochylenie>-10 run_pochylenie-=0.3
	run_pochylenie=0

	if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,image_alphar)}
	}



	// trzymanie sie drazka - chodzenie na boki
	if animacja=14{
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+drazkowanie+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+sin(degtorad(hamowanie*2))*18,power_star_kolorek,1+miganie)}
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5+drazkowanie+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+sin(degtorad(strzelanie2*2))*200-sin(degtorad(hamowanie/2))*10)*size2+schylak-100*size2*-1+sin(degtorad(hamowanie*2))*18,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,drazkowanie+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+sin(degtorad(hamowanie/2))*5)*size2+sin(degtorad(hamowanie*2))*18+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,5*size2+x,sin(degtorad(hamowanie/2))*3+drazkowanie+y+sin(degtorad(run_kat))/2,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-sin(degtorad(hamowanie/2))*5)*size2+sin(degtorad(hamowanie*2))*5+30*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,sin(degtorad(hamowanie/2))*3+drazkowanie+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,drazkowanie+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-40-sin(degtorad(hamowanie/2))*5)*size2+sin(degtorad(hamowanie*2))*18,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*3+drazkowanie+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5+drazkowanie+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,power_star_kolorek,mrugacz[2])
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,sin(degtorad(hamowanie/2))*5+drazkowanie+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+sin(degtorad(hamowanie/2))*10)*size2+schylak+100*size2*-1-sin(degtorad(hamowanie*2))*18,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+drazkowanie+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2-sin(degtorad(hamowanie*2))*18,power_star_kolorek,1+miganie)}

	climbing+=1
	if climbing>10 {climbing=0;SXMS_SFX_PlayExt(42,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}


	drazkowanie=-sin(degtorad(hamowanie/2))*10+10
	hamowanie+=5
	kat=0
	//size=1
	run_kat=0
	run_promien=0
	if run_pochylenie>-10 run_pochylenie-=0.3
	run_pochylenie=0

	if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,image_alphar)}
	}



}
