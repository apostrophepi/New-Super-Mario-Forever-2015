function script_anim_trzymanie_sie_liny() {
	// LINA ZWISAJACA
	// trzymanie sie liny pionowej zwiasjacej

	if animacja=11{

	if size2=1{
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/20-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+globalny_kat+180,power_star_kolorek,1+miganie)}
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(150+kat+globalny_kat))*30/3)*size)),y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*-1-15)*strzelanie+strzelanie2)*size2+globalny_kat+180,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),y+((cos(degtorad(20+kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)

	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),y+((cos(degtorad(-22+kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,power_star_kolorek,mrugacz[2])
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(220+kat+globalny_kat))*40/3)*size)),y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*-1+15)*size2+globalny_kat+180,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat+180,power_star_kolorek,1+miganie)}

	}
	if size2=-1{
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(-150-kat+globalny_kat))*30/3)*size)),y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien*-1-15)*strzelanie+strzelanie2)*size2+globalny_kat+180,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/20-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+globalny_kat+180,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-20-kat+globalny_kat))*35/3)*size),y+((cos(degtorad(-20-kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+22-kat+globalny_kat))*30/3)*size),y+((cos(degtorad(+22-kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,power_star_kolorek,mrugacz[2])
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(-220-kat+globalny_kat))*40/3)*size)),y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*run_promien*-1+15)*size2+globalny_kat+180,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat+180,power_star_kolorek,1+miganie)}

	}
	run_promien=0
	run_pochylenie=0

	if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,1+miganie)}

	}

	if animacja=12{
	climbing+=1
	if climbing>10 {climbing=0;SXMS_SFX_PlayExt(42,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	globalny_kat+=sin(degtorad(linowanie/2))*10

	// trzymanie sie liny pionowej zwiasjacej - WSPINANIE SIE
	if size2=1{
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/20-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+globalny_kat+180+sin(degtorad(linowanie))*22-45,power_star_kolorek,1+miganie)}
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(150+kat+globalny_kat))*30/3)*size)),y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*-1-15)*strzelanie+strzelanie2)*size2+globalny_kat+180+sin(degtorad(linowanie))*22-45,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),y+((cos(degtorad(20+kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)

	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),y+((cos(degtorad(-22+kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,power_star_kolorek,mrugacz[2])
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(220+kat+globalny_kat))*40/3)*size)),y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*-1+15)*size2+globalny_kat+180-sin(degtorad(linowanie))*22-45,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat+180-sin(degtorad(linowanie))*22-45,power_star_kolorek,1+miganie)}

	}
	if size2=-1{
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(-150-kat+globalny_kat))*30/3)*size)),y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien*-1-15)*strzelanie+strzelanie2)*size2+globalny_kat+180+sin(degtorad(linowanie))*22+25,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/20-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+globalny_kat+180+sin(degtorad(linowanie))*22+25,power_star_kolorek,1+miganie)}
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-20-kat+globalny_kat))*35/3)*size),y+((cos(degtorad(-20-kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat+60*size2,power_star_kolorek+ogon_uderzak+sin(degtorad(ogon_merda))*20,1+miganie)
	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+22-kat+globalny_kat))*30/3)*size),y+((cos(degtorad(+22-kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+miganie)*size2+globalny_kat+bujanie_nogami,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,power_star_kolorek,mrugacz[2])
	if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(-220-kat+globalny_kat))*40/3)*size)),y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*run_promien*-1+15)*size2+globalny_kat+180-sin(degtorad(linowanie))*22+25,power_star_kolorek,1+miganie)}
	if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat+180-sin(degtorad(linowanie))*22+25,power_star_kolorek,1+miganie)}

	}
	run_pochylenie=0
	run_promien=0
	if keyboard_check(global.ster_up) {linowanie+=10}
	if keyboard_check(global.ster_down) {linowanie-=10}

	if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,1+miganie)}
	}



}
