function script_enemy_big_buzzy_beetle_lezy() {
	if global.pauza=0
	{

	if kill=1
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=s_big_buzzy_beetle
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    } 
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=s_big_buzzy_beetle
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    }    
    
    
    
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {instance_destroy()}
	kick_timer+=1

	if !place_meeting(x,y,obj_mario) && kick_timer>20 {kickable=1}
	if kicked=1
	    {
	    lolo=instance_create(x,y,o_enemy_troopa_leci2)
	    lolo.jaka_grafika=jaka_grafika
	    if obj_mario_anim.size2=-1 {lolo.ixor=-8}
	    if obj_mario_anim.size2=1 {lolo.ixor=8}
	    instance_destroy()
	    }
	if timer>250 {stream+=0.1}
	if timer>320 {stream+=0.5}
	if timer>350 && timer<400 {
	sekwencja=2
	if place_meeting(x,y,obj_wall) {y-=0.5}
	}
	if timer>=400 && sekwencja=2
	    {
	    sekwencja=3
	    iyor=-5
	    }
	if sekwencja=3
	    {
	    globalny_kat=globalny_kat/2
	    y+=iyor
	    iyor+=0.5
	    if place_meeting(x,y,obj_wall)
	        {
	        instance_destroy(); 
	        if jaka_grafika=0 {instance_create(x,y,o_enemy_big_buzzy_beetle)}
	        }
	    }

	timer+=1
	if sekwencja=0{
	if !place_meeting(x+ixor,y,obj_wall) {x+=ixor/2}
	ixor=ixor/1.01
	if place_meeting(x+ixor,y,obj_wall) {x-=ixor/2; ixor=ixor*-1}



	if iyor<0 && !place_meeting(x,y+iyor/2,obj_wall) {y+=iyor/2}
	if iyor>0 {y+=iyor/2}

	if ixor<>0 {iyor+=1}
	if iyor>12 {iyor=12}
	if place_meeting(x,y,obj_wall) && ixor<>0 {iyor=0;ixor=0;part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)}

	if ixor>0 {kierunek=-1}
	if ixor<0 {kierunek=1}
	if globalny_kat<180 && ixor<>0 {globalny_kat+=9}

	obracator+=obracaj_od_uderzenia
	obracaj_od_uderzenia=obracaj_od_uderzenia/1.3
	}
	}



	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
	if jaka_grafika=0 {draw_sprite_ext(s_big_buzzy_beetle,0,x+32,y+30+sin(stream)*2,1,1,globalny_kat*kierunek+obracator,c_white,1)}}



}
