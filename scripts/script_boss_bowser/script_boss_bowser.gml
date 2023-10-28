function script_boss_bowser() {
	if global.pauza=0 {


	if oberwanie_energy<>energy {oberwanie_energy=energy;oberwanie=1}
	if oberwanie>0 {oberwanie=oberwanie/1.03}

	// APPEARING SEQVENCE
	if sekwencja=0 {timer+=1; if timer>200{sekwencja=1;SXMS_SFX_PlayExt(152+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}
	if sekwencja=1 {y=-300;animacja=6; grawitacja=0; sekwencja=2; if x<800 {x=obj_mario.x+300};if x>=800 {x=obj_mario.x-300};}
	if sekwencja=2
	    {
	    y+=grawitacja; if grawitacja<20 {grawitacja+=0.5}
	    if place_meeting(x,y,obj_wall) {SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);animacja=0;global.earth_quake=50;grawitacja=0;sekwencja=3;timer=0; for (i=0;i<30;i+=1){if place_meeting(x,y,obj_wall) {y-=1}}}
	    }
	if sekwencja=3
	    {
	    timer+=1
	    if timer>40 {sekwencja=4;animacja=3;SXMS_SFX_PlayExt(151,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    }
	if sekwencja=4
	    {
	    if ryk_sekwencja=1 {sekwencja=5}
	    }
	if sekwencja=5 && ryk_sekwencja=0 {sekwencja=6;timer=0;}
	if sekwencja=6 {timer+=1; animacja=0; if timer>100 {sekwencja=-10;sekwencja_wykonal_ruch=1}}

	// ZARZADZANIE TECHNIKAMI

	if sekwencja_wykonal_ruch=1 {sekwencja_wykonal_ruch=2

	global_sekwencja+=1



	if global_sekwencja=1 {sekwencja=10/*10*/;animacja=0;timer=0;sek_jumps_numb=2}
	if global_sekwencja=2 {sekwencja=11/*12*/;animacja=0;timer=0;sek_jumps_numb=1}
	if global_sekwencja=3 {sekwencja=12;animacja=0;timer=0}
	if global_sekwencja=4 {sekwencja=13;animacja=0;timer=0}
	if global_sekwencja=5 {sekwencja=20;animacja=0;timer=0}
	if global_sekwencja=6 {sekwencja=30;animacja=0;timer=0}
	if global_sekwencja=7 {sekwencja=40;animacja=0;timer=0}
	if global_sekwencja=8 {sekwencja=50;animacja=0;timer=0}
	if global_sekwencja=9 {sekwencja=60;animacja=0;timer=0}
	if global_sekwencja=10 {sekwencja=70;animacja=0;timer=0}
	if global_sekwencja=11 {global_sekwencja=1;animacja=0;timer=0}

	}




	// IDZ NA SRODEK I NAPIERDALAJ KULA

	if sekwencja>=70{
	if sekwencja=70
	    {
	    timer+=1
	    if timer>100{
	    if x>820 {kierunek=-1; animacja=2; x-=5}
	    if x<780 {kierunek=1; animacja=2; x+=5}}
	    if x>=780 && x<=820 {sekwencja=71;SXMS_SFX_PlayExt(157,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    ;SXMS_SFX_PlayExt(158,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    }
	if sekwencja=71
	    {
	    animacja=4
	    sekwencja=72
	    grawitacja=-5
	    sek_jumps_numb=600
	    sek_jumping=0
	    sek_jump_speed=0
	    sek_high=5
	    timer=0
	    }
	if sekwencja=72
	    {
	    timer+=1
	    if kierunek=1 {x+=sek_jump_speed}
	    if kierunek=-1 {x-=sek_jump_speed}
	    if timer<500 && sek_jump_speed<20 {sek_jump_speed+=0.1}
	    if timer>500 {sek_jump_speed=sek_jump_speed/1.03;sek_high=sek_high/1.01}
	    if timer>500 && sek_jump_speed<=1 {sekwencja=73}
    
	    if x<100 {kierunek=1}
	    if x>1500 {kierunek=-1}
    
	    if sek_jumping=0{
	    y+=grawitacja
	    grawitacja+=0.5}
	    if place_meeting(x,y,obj_wall) {sek_jumping=1;SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if sek_jumping=1
	        {
	        repeat(3){part_particles_create(global.particle_map_sterring,x,y+100,global.part_BOOMBOOM_smoke2,1);part_particles_create(global.particle_map_sterring,x,y+100,global.part_BOOMBOOM_smoke3,1)}
	        repeat(3){part_particles_create(global.particle_map_sterring,x+random(50)-random(50),y+100,global.part_BOOMBOOM_smoke4,1)}
            
	        for(i=0;i<50;i+=1)
	            {
	            if place_meeting(x,y,obj_wall) {y-=1}
	            if !place_meeting(x,y,obj_wall) {break;break}
	            }
	        grawitacja=-sek_high; sek_jumping=0;if sek_high<22 && timer<500 {sek_high+=5}
        
	        }
    
	    }
	if sekwencja=73
	    {
	    timer=0
	    animacja=40
	    sekwencja=74
	    }
	if sekwencja=74
	    {
	    timer+=1
	    if timer>20 {sekwencja=75; grawitacja=0; sekwencja=75;sek_jumping=0}
	    }
	if sekwencja=75
	    {
	    y+=grawitacja
	    grawitacja+=0.5
	    if place_meeting(x,y,obj_wall) {sek_jumping=1;}
	    if sek_jumping=1
	        {
	        repeat(2){part_particles_create(global.particle_map_sterring,x,y+100,global.part_BOOMBOOM_smoke2,1);part_particles_create(global.particle_map_sterring,x,y+100,global.part_BOOMBOOM_smoke3,1)}
	        repeat(2){part_particles_create(global.particle_map_sterring,x+random(50)-random(50),y+100,global.part_BOOMBOOM_smoke4,1)}
            
	        for(i=0;i<50;i+=1)
	            {
	            if place_meeting(x,y,obj_wall) {y-=1}
	            if !place_meeting(x,y,obj_wall) {break;break}
	            sekwencja=76
	            }
        
	        }
	    }
	if sekwencja=76
	    {
	    lolok=instance_create(x,y+50,o_bowser_fala_uderzeniowa);lolok.kierunek=1;lolok=instance_create(x,y+50,o_bowser_fala_uderzeniowa);lolok.kierunek=-1
	    sekwencja_wykonal_ruch=1
    
	    }}
    
    

	// IDZIE NA PRAWO I STRZELA DO MARIO POTROJNIE

	if sekwencja=60
	    {
	    timer+=1
	    if x<1400 {x+=2; animacja=1;kierunek=1}
	    if timer>100 {sekwencja=61;timer=0;}
	    if x>=1400 {timer=0;sekwencja_wykonal_ruch=1;sekwencja=0}
	    }
	if sekwencja=61
	    {
	    if x>obj_mario.x {kierunek=-1;animacja=0;sekwencja=62}
	    if x<obj_mario.x {kierunek=1;animacja=0;sekwencja=62}
	    }
	if sekwencja=62
	    {   
	    timer+=1
	    if timer>60
	        {
	        sek_is_fireballs=2
	        timer=0;
	        animacja=8;
	        if ryk_sekwencja=-10 {sekwencja=60;timer=0;ryk_sekwencja=0}
	        }
	    }
    
    
    
	// IDZIE NA LEWO I STRZELA DO MARIO POTROJNIE

	if sekwencja=50
	    {
	    timer+=1
	    if x>300 {x-=2; animacja=1;kierunek=-1}
	    if timer>100 {sekwencja=51;timer=0;}
	    if x<=300 {timer=0;sekwencja_wykonal_ruch=1;sekwencja=0}
	    }
	if sekwencja=51
	    {

	    if x>obj_mario.x {kierunek=-1;animacja=0;sekwencja=52}
	    if x<obj_mario.x {kierunek=1;animacja=0;sekwencja=52}
	    }
	if sekwencja=52
	    {   
	    timer+=1
	    if timer>50
	        {
	        sek_is_fireballs=2
	        timer=0;
	        animacja=8;
	        if ryk_sekwencja=-10 {sekwencja=50;timer=0;ryk_sekwencja=0}
	        }
	    }





	// MEGA ZIANIE OGNIEM - IDZIE NA PRAWO

	if sekwencja=40 {timer+=1;if timer>20 {sekwencja=41;timer=0}}
	if sekwencja=41 && x<1300 {kierunek=1;x+=8;animacja=2; }
	if sekwencja=41 {if x>=1300 {sekwencja=42;animacja=0}}
	if sekwencja=42 {kierunek=-1; timer+=1; animacja=0; if timer>100 {sekwencja=43;timer=0;zianie_direction=180}}
	if sekwencja=43
	    {
	    wafelkos=SXMS_SFX_PlayExt(159,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    sekwencja=44;animacja=5;ryk_sekwencja=0;ogien=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fire_mark)}
	if sekwencja=44
	    {
	    if SXMS_SFX_Position(1,wafelkos,0)>80000 {SXMS_SFX_Position(0,wafelkos,30000)}
	    ogien.image_angle=sin(stream/4)*30+90+180
	    zianie_direction=sin(stream/4)*30+180
	    ogien.x=x+sin(degtorad(115*kierunek))*65
	    ogien.y=y+sin(stream)*10+cos(degtorad(115*kierunek))*65
	    if ogien.image_yscale<20 {ogien.image_yscale+=1;ogien.image_xscale=5}
	    if random(100)>80 {part_particles_create(global.particle_map_sterring,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,global.part_bowser_zianie,1)}
	    if random(100)>1 {part_particles_create(global.particle_map_sterring,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,global.part_bowser_zianie2,1)}
	    part_type_speed(global.part_bowser_zianie2,20,35,-0.5,0)
	    part_type_direction(global.part_bowser_zianie2,180+sin(stream/4+0.5)*30,180+sin(stream/4+0.5)*30,0,0)
	    part_type_life(global.part_bowser_zianie2,30,50);
	    part_type_blend(global.part_bowser_zianie2,1)
	    part_type_size(global.part_bowser_zianie2,0.5,0.5,0.0215,0);
    
	    if ryk_sekwencja>350 {timer=0;sekwencja_wykonal_ruch=1;ryk_sekwencja=0;sekwencja=35;animacja=0;with(ogien){instance_destroy()}}
	    }
    
    
	// MEGA ZIANIE OGNIEM - IDZIE NA LEWO

	if sekwencja=30 {timer+=1;if timer>50 {sekwencja=31;timer=0}}
	if sekwencja=31 && x>300 {kierunek=-1;x-=2;animacja=1; }
	if sekwencja=31 {if x<=300 {sekwencja=32;animacja=0}}
	if sekwencja=32 {kierunek=1; timer+=1; animacja=0; if timer>50 {sekwencja=33;timer=0;zianie_direction=0}}
	if sekwencja=33 
	    {
	    wafelkos=SXMS_SFX_PlayExt(159,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    sekwencja=34;animacja=5;ryk_sekwencja=0;ogien=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fire_mark)}
	if sekwencja=34
	    {
	    if SXMS_SFX_Position(1,wafelkos,0)>80000 {SXMS_SFX_Position(0,wafelkos,30000)}
	    ogien.image_angle=sin(stream/4)*30+90
	    zianie_direction=sin(stream/4)*30
	    ogien.x=x+sin(degtorad(115*kierunek))*65
	    ogien.y=y+sin(stream)*10+cos(degtorad(115*kierunek))*65
	    if ogien.image_yscale<20 {ogien.image_yscale+=1;ogien.image_xscale=5}
	    if random(100)>80 {part_particles_create(global.particle_map_sterring,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,global.part_bowser_zianie,1)}
	    if random(100)>1 {part_particles_create(global.particle_map_sterring,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,global.part_bowser_zianie2,1)}
	    part_type_speed(global.part_bowser_zianie2,20,35,-0.5,0)
	    part_type_direction(global.part_bowser_zianie2,sin(stream/4+0.5)*30,sin(stream/4+0.5)*30,0,0)
	    part_type_life(global.part_bowser_zianie2,50,50);
	    part_type_blend(global.part_bowser_zianie2,1)
	    part_type_size(global.part_bowser_zianie2,0.5,0.5,0.0215,0);
    
	    if ryk_sekwencja>350 {timer=0;sekwencja_wykonal_ruch=1;ryk_sekwencja=0;sekwencja=35;animacja=0;with(ogien){instance_destroy()}}
	    }
    
    
    
    
	// ZAMIANA W KULE I LATANIE PO PODLODZE
	if sekwencja=20
	    {
	    timer+=1
	    if timer>50 {SXMS_SFX_PlayExt(157,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);SXMS_SFX_PlayExt(158,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    timer=0;sekwencja=21;animacja=4;
	                kula_armatnia=0
	                kula_sekwencja=0
	                kula_speed=0
	                slide=0
	                slide2=0}
	    }
	if sekwencja=21
	    {
	    draw_sprite_ext(s_spikey_10,0,x,y,(1+abs(slide)/5),8,0,c_white,0.5)
	    draw_sprite_ext(s_spikey_10,0,x,y,(1+abs(slide)/2),4,0,c_white,0.5)
    
	    draw_sprite_ext(s_spikey_10,0,x,y,(-1+slide2/5),8,0,c_white,0.5)
	    draw_sprite_ext(s_spikey_10,0,x,y,(-1+slide2/2),4,0,c_white,0.5)
    
	    if kula_sekwencja<>4{
	    if kula_speed>0 && slide<kula_speed {slide+=1}
	    if kula_speed<0 {slide=slide/1.03}
	    if kula_speed<0 && slide2>kula_speed {slide2-=1}
	    if kula_speed>0 {slide2=slide/1.03}}
	    if kula_sekwencja=4 {slide=slide/1.1;slide2=slide2/1.1}
    
    
	    x+=kula_speed
	    if kula_sekwencja=0 && kula_speed<10 {kula_speed+=0.5;kierunek=1}
	    if kula_sekwencja=0 && x>room_width+300 {kula_sekwencja=1;kula_speed=-10;kierunek=-1;SXMS_SFX_PlayExt(158,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if kula_sekwencja=1 && x<-300 {kula_sekwencja=2;kula_speed=30;kierunek=1;SXMS_SFX_PlayExt(158,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if kula_sekwencja=2 && x>room_width+300 {kula_sekwencja=3;kula_speed=-20;kierunek=-1;SXMS_SFX_PlayExt(158,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if kula_sekwencja=3 && x<-300 {kula_speed=20;kierunek=1;kula_sekwencja=4;SXMS_SFX_PlayExt(158,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) }
	    if kula_sekwencja=4 {if x>300 {kula_speed=kula_speed/1.1;animacja=40}}
	    if kula_sekwencja=4 && kula_speed>-0.1 && kula_speed<0.1 {sekwencja_wykonal_ruch=1;sekwencja=0}
	    }
	// PRAWDZIWA WALKA SIE ZACZYNA
	if sekwencja=10
	    {
    
	    if x>obj_mario.x {kierunek=-1}
	    if x<obj_mario.x {kierunek=1}
    
	    // uderz lapa jak mario jest za blisko
	    /*
	    if x>obj_mario.x-200 && x<obj_mario.x+200 && y<obj_mario.y+200 && y>obj_mario.y-200 && animacja<>7 {animacja=7;timer=0}
	    if x<=obj_mario.x-200 && animacja=0 || x>=obj_mario.x+200 || y>obj_mario.y+200 || y<obj_mario.y-200  {timer+=1}*/
    
	    timer+=1
	    if timer>=100 {sekwencja=11;sek_jumps_numb=3}
	    }
    
	// skocz na MARIO
	if sekwencja=11
	    {
	    if x>obj_mario.x {kierunek=-1}
	    if x<obj_mario.x {kierunek=1}
    
	    if sek_jumps_numb>0 && sek_jumping=0 {sek_jumps_numb-=1;sek_jumping=1
	    animacja=6
	    grawitacja=-30;SXMS_SFX_PlayExt(152+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if sek_jumps_numb<=0 && sek_jumping=0 {sekwencja_wykonal_ruch=1;timer=0}
    
    
	    if sek_jumping=1
	        {
	        y+=grawitacja
	        grawitacja+=0.5
	        if grawitacja<0 && sek_jump_speed<6 {sek_jump_speed+=0.15}
	        if grawitacja>0 && sek_jump_speed>0 {sek_jump_speed-=0.05}
	        if x<obj_mario.x-20 {x+=sek_jump_speed}
	        if x>obj_mario.x+20 {x-=sek_jump_speed}
	        if place_meeting(x,y,obj_wall) {SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);sek_jumping=2;grawitacja=0;timer=0;global.earth_quake=50;quake.distance=20}
	        }
	    if sek_jumping=2
	        {
        
	        timer+=1
	        if timer>20 {sek_jumping=0;timer=0}
	        for (i=0;i<50;i+=1)
	            {
	            if place_meeting(x,y,obj_wall) {y-=1}
	            if !place_meeting(x,y,obj_wall) {break;break;}
	            }
	        }
	    }
    
	// INITIALIZACJA PLUCIA FIREBALLAMI
	if sekwencja=12
	    {
	    sek_fireballs_numb=3
	    sek_is_fireballs=1
	    timer=0
	    sekwencja=13
	    }
	if sekwencja=13
	    {
	    timer+=1
	    if timer>50 && sek_fireballs_numb>0 {animacja=8;sek_fireballs_numb-=1;timer=0;ryk_sekwencja=0;SXMS_SFX_PlayExt(154+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) }
	    if timer>50 && sek_fireballs_numb<=0 {sekwencja_wykonal_ruch=1;sekwencja=-10}
	    }
    
    
	/*
	sek_fireballs=0
	sek_is_fireballs=0
	sek_fireballs_numb=3
	*/



	}
	// PLUNIECIE OGNIEM
	if animacja=8{
	stream+=0.1

	//
	if ryk_sekwencja=0 {ryk_sekwencja=1}
	if ryk_sekwencja=1 && ryk_dziabniecie<30 {ryk_dziabniecie+=4;}
	if ryk_sekwencja=1 && ryk_dziabniecie>=30 {ryk_sekwencja=2}
	if ryk_sekwencja>=2 && ryk_sekwencja<=20
	    {
	    if ryk_sekwencja=10 && sek_is_fireballs=1 {kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=10;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)}
	    if ryk_sekwencja=10 && sek_is_fireballs=2
	        {
	        SXMS_SFX_PlayExt(154+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=2;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)
        
        
	        kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=4;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)-15
	        kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=4;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)+15
        
	        kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=8;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)
	        kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=8;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)-30
	        kokon=instance_create(x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,o_bowser_fireball);kokon.speed=8;kokon.direction=point_direction(kokon.x,kokon.y,obj_mario.x,obj_mario.y-32)+30
	        }
    
	    ryk_sekwencja+=1
	    if ryk_kat<5 {ryk_kat+=5}
	    }
	if ryk_sekwencja=21 {ryk_sekwencja=101}
	if ryk_sekwencja=101 {ryk_dziabniecie=ryk_dziabniecie/1.3; ryk_kat=0}
	if ryk_sekwencja=101 && ryk_dziabniecie<=1 {ryk_dziabniecie=0;ryk_sekwencja=-10}

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)+sin(stream),c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*2,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)-sin(stream),c_white,1)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-ryk_dziabniecie*kierunek,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+ryk_dziabniecie*kierunek,c_white,1)
	}

	// UDERZENIE LAPA
	if animacja=7{

	if kierunek=1 {part_type_scale(global.part_bowser_swing2,0.5,1)}
	if kierunek=-1 {part_type_scale(global.part_bowser_swing2,-0.5,1)}

	if uderz_sek=-1 {uderz_sek=0;part_particles_create(global.particle_map_sterring,x+160*kierunek,y,global.part_bowser_swing,1);part_particles_create(global.particle_map_sterring,x+160*kierunek,y,global.part_bowser_swing2,1)}
	if uderz_sek=0 {uderz_anim+=20;if uderz_anim>=180 {uderz_sek=1;part_particles_create(global.particle_map_sterring,x+160*kierunek,y,global.part_bowser_swing,1);part_particles_create(global.particle_map_sterring,x+160*kierunek,y,global.part_bowser_swing2,1)}}
	if uderz_sek=1 && uderz_anim>0 {uderz_anim=uderz_anim/1.1}
	if uderz_sek=1 && uderz_anim<=10 {uderz_sek=-1;animacja=0}
	//

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2+sin(stream*10)*ryk_kat,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50+uderz_anim/10*kierunek,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)+sin(stream),c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x+uderz_anim/20*kierunek,y+sin(stream)*10,kierunek,1,sin(stream)*2+sin(stream*10)*ryk_kat/3,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60-uderz_anim/10*kierunek,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)-sin(stream),c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65+uderz_anim/10*kierunek,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-ryk_dziabniecie+sin(stream*10)*ryk_kat,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65+uderz_anim/10*kierunek,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+ryk_dziabniecie-sin(stream*10)*ryk_kat,c_white,1)


	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30+uderz_anim/2*kierunek,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek+uderz_anim/450*kierunek,1+uderz_anim/450,-sin(stream)*10+sin(stream)*2+sin(stream*10)*ryk_kat+uderz_anim*kierunek,c_white,1)
	}





	// SKOK
	if animacja=6{
	stream+=0.1


	//

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2-grawitacja*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)+sin(stream)+grawitacja,c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*2-grawitacja,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)-sin(stream)+grawitacja,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-grawitacja,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4-grawitacja,c_white,1)


	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*2-grawitacja*2,c_white,1)
	}





	// ZIANIE OGNIEM
	if animacja=5{
	stream+=0.1

	//

	if ryk_sekwencja=0 {ryk_sekwencja=1}
	if ryk_sekwencja=1 && ryk_dziabniecie<30 {ryk_dziabniecie+=4;}
	if ryk_sekwencja=1 && ryk_dziabniecie>=30 {ryk_sekwencja=2}
	if ryk_sekwencja>=2 && ryk_sekwencja<=399
	    {
	    ryk_sekwencja+=1
	    if ryk_kat<5 {ryk_kat+=5}
	    }
	if ryk_sekwencja=400 {ryk_sekwencja=401}
	if ryk_sekwencja=401 {ryk_dziabniecie=ryk_dziabniecie/1.3; ryk_kat=0}
	if ryk_sekwencja=401 && ryk_dziabniecie<=1 {ryk_kat=0;ryk_dziabniecie=0;ryk_sekwencja-=1}

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2+sin(stream*10)*ryk_kat,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)+sin(stream),c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*2+sin(stream*10)*ryk_kat/3,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)-sin(stream),c_white,1)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*2+sin(stream*10)*ryk_kat,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-ryk_dziabniecie*kierunek+sin(stream*10)*ryk_kat*-kierunek,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+ryk_dziabniecie*kierunek-sin(stream*10)*ryk_kat*-kierunek,c_white,1)


	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2+sin(stream*10)*ryk_kat,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)+sin(stream),c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*2+sin(stream*10)*ryk_kat/3,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)-sin(stream),c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*2+sin(stream*10)*ryk_kat,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-ryk_dziabniecie*kierunek+sin(stream*10)*ryk_kat*-kierunek,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+ryk_dziabniecie*kierunek-sin(stream*10)*ryk_kat*-kierunek,c_white,oberwanie)
	draw_set_blend_mode(bm_normal)
	}

	}




	// POWROT KULA ARMATNIA
	if animacja=40{
	stream+=0.1
	kula_obrot=kula_obrot/1.09
	kula_alphar=kula_alphar/1.4


	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek*1.2,1.2,kula_obrot*-kierunek/2,c_white,kula_alphar/10)
	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek/1.2,1/1.3,-kula_obrot*-kierunek/2,c_white,kula_alphar/10)


	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10+kula_obrot*-kierunek,c_white,1/kula_alphar)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+kula_obrot*-kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0+kula_obrot*kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2+kula_obrot*-kierunek,c_white,1/kula_alphar)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+kula_obrot*-kierunek,c_white,1/kula_alphar)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4+kula_obrot*-kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+kula_obrot*-kierunek,c_white,1/kula_alphar)



	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek*1.2,1.2,kula_obrot*-kierunek/2,c_white,oberwanie/10)
	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek/1.2,1/1.3,-kula_obrot*-kierunek/2,c_white,oberwanie/10)


	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0+kula_obrot*kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)
	draw_set_blend_mode(bm_normal)
	}

	}


	// KULA ARMATNIA
	if animacja=4{
	stream+=0.1
	kula_obrot+=10
	kula_alphar+=0.01+kula_alphar/20

	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek*1.2,1.2,kula_obrot*-kierunek/2,c_white,kula_alphar/10)
	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek/1.2,1/1.3,-kula_obrot*-kierunek/2,c_white,kula_alphar/10)


	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10+kula_obrot*-kierunek,c_white,1/kula_alphar)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+kula_obrot*-kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0+kula_obrot*kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2+kula_obrot*-kierunek,c_white,1/kula_alphar)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+kula_obrot*-kierunek,c_white,1/kula_alphar)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4+kula_obrot*-kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+kula_obrot*-kierunek,c_white,1/kula_alphar)


	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek*1.2,1.2,kula_obrot*-kierunek/2,c_white,oberwanie/10)
	draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek/1.2,1/1.3,-kula_obrot*-kierunek/2,c_white,oberwanie/10)


	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0+kula_obrot*kierunek,c_white,1/kula_alphar)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+kula_obrot*-kierunek,c_white,oberwanie/kula_alphar)

	draw_set_blend_mode(bm_normal)
	}

	}



	// RYK
	if animacja=3{
	stream+=0.1

	//

	if ryk_sekwencja=0 {ryk_sekwencja=1}
	if ryk_sekwencja=1 && ryk_dziabniecie<30 {ryk_dziabniecie+=4;}
	if ryk_sekwencja=1 && ryk_dziabniecie>=30 {ryk_sekwencja=2}
	if ryk_sekwencja>=2 && ryk_sekwencja<=100
	    {
	    ryk_sekwencja+=1
	    if ryk_kat<5 {ryk_kat+=5}
	    quake.distance=random(10)
	    }
	if ryk_sekwencja=100 {ryk_sekwencja=101}
	if ryk_sekwencja=101 {ryk_dziabniecie=ryk_dziabniecie/1.3; ryk_kat=0}
	if ryk_sekwencja=101 && ryk_dziabniecie<=1 {ryk_dziabniecie=0;ryk_sekwencja=0}

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+sin(stream)*2,c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*2,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2-sin(stream)*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-ryk_dziabniecie+sin(stream*10)*ryk_kat,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+ryk_dziabniecie-sin(stream*10)*ryk_kat,c_white,1)



	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*2,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+sin(stream)*2,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*2,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2-sin(stream)*2,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*2,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4-ryk_dziabniecie+sin(stream*10)*ryk_kat,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+ryk_dziabniecie-sin(stream*10)*ryk_kat,c_white,oberwanie)

	draw_set_blend_mode(bm_normal)
	}
	}


	// BIEGANIE
	if animacja=2{
	stream+=0.2
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*40,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+sin(stream)*40,c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*10,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2-sin(stream)*40,c_white,1)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*40,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4,c_white,1)


	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*40,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+sin(stream)*40,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*10,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2-sin(stream)*40,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*40,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4,c_white,oberwanie)

	draw_set_blend_mode(bm_normal)
	}

	}


	// CHODZENIE
	if animacja=1{
	stream+=0.1
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*20,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+sin(stream)*20,c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*5,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2-sin(stream)*20,c_white,1)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*20,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4,c_white,1)


	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10-sin(stream)*20,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+sin(stream)*20,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,sin(stream)*5,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2-sin(stream)*20,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+sin(stream)*20,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4,c_white,oberwanie)


	draw_set_blend_mode(bm_normal)
	}


	}


	// STANIE W MIEJSCU
	if animacja=0{
	stream+=0.1
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10,c_white,1)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5,c_white,1)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2,c_white,1)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10,c_white,1)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4,c_white,1)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4,c_white,1)

	if oberwanie>0
	    {
	    draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0,c_white,1)
	draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10,c_white,oberwanie)

	draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4,c_white,oberwanie)
	draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4,c_white,oberwanie)


	draw_set_blend_mode(bm_normal)
	}


	}







}
