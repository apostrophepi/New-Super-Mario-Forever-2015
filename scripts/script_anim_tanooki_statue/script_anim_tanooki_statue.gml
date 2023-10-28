function script_anim_tanooki_statue() {
	if animacja=120
	    {
	    if tanooki_sizer>0 {tanooki_sizer=tanooki_sizer/1.2}
	    draw_sprite_ext(s_tanooki_statue,0,x,y+32,1+tanooki_sizer,1+tanooki_sizer,sin(degtorad(tanooki_sizer*360*2))*15,power_star_kolorek,1)
	    }
	if animacja<>120 && tanooki_sizer<0.5 {tanooki_sizer=0.5}

	// kladzenie bomby
	if animacja=20{

	draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2+schylak/1.65,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,schylanie/5+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1-schylanie*2+strzelanie2/10)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_chest[anim],0,x,schylanie/5+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie*3+strzelanie2/5)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22+schylanie)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie*3-strzelanie2/10)*size2,power_star_kolorek,1+miganie)
	draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie*3)*size2,power_star_kolorek,mrugacz[2]+miganie)
	draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2+schylak,power_star_kolorek,1+miganie)
	if schylak_sek=0 
	    {
	    if schylanie<40 {schylanie+=2.5;run_pochylenie-=2.5}
	    if schylanie>40 {schylanie=40}
	    if run_pochylenie<=-40 {run_pochylenie=-40}
	    if schylak>-40 && size2=-1 {schylak-=1}
	    if schylak<40 && size2=1 {schylak+=1}
	    run_promien=0
	    if schylak<=-40 || schylak>=40 {schylak_sek=1;instance_create(obj_mario.x+16,obj_mario.y+50,o_super_bomb)}
	    }
	if schylak_sek=1
	    {
	    schylak=schylak/1.3
	    schylanie=schylanie/1.03
	    run_pochylenie=run_pochylenie/1.06
	    if run_pochylenie>-1 && run_pochylenie<1 {animacja=6; run_pochylenie=0; obj_mario.wyrywanie=0;}
	    }

	}



}
