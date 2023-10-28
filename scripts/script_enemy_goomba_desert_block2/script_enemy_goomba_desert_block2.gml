function script_enemy_goomba_desert_block2() {
	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

	seened=1
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

	    {
	    x+=jumper_x*kierunek
	    if place_meeting(x,y,obj_wall) {y-=1}
	    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {y+=1}
	    }

	if place_meeting(x+kierunek,y-1,obj_wall)
	    {
	    kierunek=kierunek*-1
	    }


        
        
        
    
	if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {sekwencja=1}
	if sekwencja=1
	    {
	    if global.is_subplatforms=1
	        {
	        for (i=0;i<ceil(grawitacja);i+=1)
	            {
	            if collision_rectangle(x,y+39+i,x+32,y+40+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
	            }
	        }
	    if grawitacja<12 {grawitacja+=0.5}
	    if grawitacja<0 && !place_meeting(x,y-16,obj_wall) {y+=grawitacja};
	    if grawitacja<0 && place_meeting(x,y-16,obj_wall) {grawitacja=0};
	    if grawitacja>0 && !place_meeting(x,y,obj_wall) {y+=grawitacja};
	    }
	if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
	if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0;part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1);part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1);part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1);part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)}



      
	if sekwencer=1 {jump_reducer+=0.1} // sprawdzaj czas odbijania sie miedzy scianami i zmniejszaj wysokosc odbijania wzgledem tego czasu - 
	//yby byla stala wartosc odejmujaca czas pomiedzy odbijaniami to kolcozwierz wytracilby cala sile skoku gdyby znajdowal sie pomiedzy blokamd
	if place_meeting(x+jumper_x+1,y,obj_wall)
	    {
	    kierunek=-1
	    if sekwencer=1
	        {
	        sekwencja=1
	        grawitacja=-grawiton
	        grawiton-=round(jump_reducer)
	        if grawiton<=0 {sekwencer=0;timer=0; jumper_x=0}
	        }
	    }
	if place_meeting(x-jumper_x-1,y,obj_wall)
	    {
	    kierunek=1
	    if sekwencer=1
	        {
	        sekwencja=1
	        grawitacja=-grawiton
	        grawiton-=round(jump_reducer)
	        if grawiton<=0 {sekwencer=0;timer=0; jumper_x=0}
	        }
	    }   
    




	timer+=2

	if timer>=100 && timer<200
	    {
	    animacjuj+=5
	    }


	if timer>200 && sekwencer=0
	    {
	    animacjuj=0
	    sekwencer=1
	    sekwencja=1
	    grawitacja=-16
	    jumper_x=3
	    grawiton=12
	    SXMS_SFX_PlayExt(79+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    }
	if sekwencer=1 && sekwencja=0
	    {
	    sekwencja=1
	    grawitacja=-grawiton
	    grawiton-=4
	    if grawiton<=0 {sekwencer=0;timer=0; jumper_x=0}
    
	    }




	// kill
    
	if energy<=0 {kill=10}

	if kill=1
	    {
	    SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x+20,y+20,o_enemy_kill);
	    lolo.grafika=global.mini_goomba
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    repeat(20) {part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_falling_brick,1)
	    part_type_orientation(global.part_falling_brick,0,360,random(15)-random(15),0,0)}
	    }
    
	if kill=10
	    {
	    SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x+20,y+20,o_enemy_kill);
	    lolo.grafika=global.mini_goomba
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    repeat(20) {part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_falling_brick,1)
	    part_type_orientation(global.part_falling_brick,0,360,random(15)-random(15),0,0)}
	    }
	if kill=1000
	    {
	    SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    obj_mario.power_star_combo+=1
	    lolo=instance_create(x+20,y+20,o_enemy_kill);
	    lolo.grafika=global.mini_goomba
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    repeat(20) {part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_falling_brick,1)
	    part_type_orientation(global.part_falling_brick,0,360,random(15)-random(15),0,0)}
	    } 
    
    
	// gfx
	stream+=0.1}}



	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
	draw_sprite_ext(global.mini_goomba,0,x+18,y+20+sin(degtorad(stream*100)),1-sin(degtorad(stream*100))/10,1+sin(degtorad(stream*100))/10,0,c_white,1)

	if sekwencer=0 {draw_sprite_ext(global.gfx_point_brick_alone,0,x+16+3,y+18-7+sin(stream)*2-abs(sin(degtorad(animacjuj)))*20,1,1,grawitacja,c_white,1)}
	if sekwencer<>0 {draw_sprite_ext(global.gfx_point_brick_alone,0,x+16+3,y+18-7,1,1,grawitacja,c_white,1)}}



}
