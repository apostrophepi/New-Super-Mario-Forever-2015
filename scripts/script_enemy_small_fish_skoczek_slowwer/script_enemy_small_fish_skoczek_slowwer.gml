function script_enemy_small_fish_skoczek_slowwer() {
	if global.pauza=0{


	seened=1
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*2 {instance_destroy()}


	    {
	    if !place_meeting(x,y,o_water_define) && plusknie=0 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=1; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
	    if place_meeting(x,y,o_water_define) && plusknie=1 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=0; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
    
	    if kierunek=-1 {direction=iyor*5; x-=ixor}
	    if kierunek=1 {direction=-iyor*5; x+=ixor}
	    y+=iyor
	    iyor+=0.0.5
	    }

	// obrywanie
	if energy<=0 {kill=10}

	if kill=1
	    {
	    SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=6
	    instance_destroy()
	    }
    
    
	if kill=10
	    {
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=6
	    instance_destroy()
	    }
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=6
	    instance_destroy()
	    } 
	// gfx
	stream+=0.1
	}


	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
	    {
    
	    draw_sprite_ext(global.gfx_enemy_big_fish[image_index],0,x,y+sin(stream)*5,-kierunek-sin(stream/2)/50,1+sin(stream/2)/50,sin(stream/4)*4+direction,c_white,1)
	    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek,y+sin(stream)*5,-kierunek/3-sin(stream/2)/50,1/3+sin(stream/2)/50,sin(stream/2+iyor*10)*40+direction,c_white,1)

	    }




}
