function script_player_wrogowanie() {
	if global.pauza=0 && global.title_screen_activated=0 {



	// wplywanie na otoczenie

	if place_meeting(x,y,o_bones_scenery)
	    {
	    kozo=instance_place(x,y,o_bones_scenery)
	    if kozo.x<x {kozo.ixor-=0.75;kozo.iyor-=0.75}
	    if kozo.x>=x {kozo.ixor+=0.75;kozo.iyor-=0.75}
    
	    }
    
    
	// rozwalanie przeciwnikow z ARMATY
	if wisi=1000 {
	    if place_meeting(x,y,o_enemy_goomba)
	        {
	        jojo=instance_place(x,y,o_enemy_goomba); with(jojo){kill=1000}
	        }}
        
        
	// rozdeptywanie wrogow


	if sekwencja=0 {global.get_lives_by_jumping_on_enemies=0}
	if sekwencja=0 && power_star_time<=0 && wisi<>1000
	    {
	    if grawitacja>0 || grawitacja<=0
	        {
	        for(i=0;i<ceil(13);i+=1)
	            {
	            if place_meeting(x,y+i,o_enemy_goomba)
	                {
	                lolo=instance_place(x,y+i,o_enemy_goomba)
	                if place_meeting(x,y+i,o_bulpon_laczony) {global.get_lives_by_jumping_on_enemies=0}
	                    {
	                    if y+64<lolo.y+10 && lolo.rozdeptywalny=1
	                        {
	                        wiatraczkuje_sie=0
	                        jump_enemies_scored=1
	                        global.get_lives_by_jumping_on_enemies+=1
	                        with(lolo) {kill=1};
	                        grawitacja=-8;
	                        sekwencja=1
	                        break;
	                        }
	                    }
	                }

	            }
	        }
	    }
    
	if sekwencja<>0 && power_star_time<=0 && wisi<>1000
	    {
	    if grawitacja>0 || grawitacja<=0
	        {
	        for(i=0;i<ceil(grawitacja);i+=1)
	            {
	            if place_meeting(x,y+i,o_enemy_goomba)
	                {
	                lolo=instance_place(x,y+i,o_enemy_goomba)
	                if place_meeting(x,y+i,o_bulpon_laczony) {global.get_lives_by_jumping_on_enemies=0}
	                    {
	                    if y+64<lolo.y+10 && lolo.rozdeptywalny=1
	                        {
	                        wiatraczkuje_sie=0
	                        jump_enemies_scored=1
	                        global.get_lives_by_jumping_on_enemies+=1
	                        with(lolo) {kill=1};
	                        grawitacja=-8;
	                        break;
	                        }
	                    }
	                }

	            }
	        }
	    }
	    if shield_skuszenia>0 {shield_skuszenia-=1}
    
    
    
	    // obrywanie od POCISKOW - PARENT : o_pirania_fireball
	             if place_meeting(x,y,o_pirania_fireball) && power_star_time<=0 && wisi<>1000 && kluczowanie=0 && !instance_exists(obj_mario_duch) && statued=0
	                {
                
	                kafel=0
	                lolo=instance_place(x,y,o_pirania_fireball)
	                 { {
                    
	                    if  shield_skuszenia<=0
	                        {
	                        if global.rodzaj_mario=0 {SXMS_C_Stop();
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario=1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=3000;global.rodzaj_mario=0;shield_skuszenia=200;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario>1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=2000;shield_skuszenia=200;obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=1;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
                        
	                        }
                        
	                    }
                    
	                    }
                    
	                }
                
                
                
	                kafel=0
                
                
	// obrywanie od przeciwników
	             if place_meeting(x,y,o_enemy_goomba) && power_star_time<=0 && wisi<>1000 && kluczowanie=0 && !instance_exists(obj_mario_duch) && statued=0
	                {
                
	                kafel=0
	                lolo=instance_place(x,y,o_enemy_goomba)
	                with(lolo) {if variable_local_exists("nie_zabijaj_mario") {if nie_zabijaj_mario>=1 {obj_mario.kafel=1}}}
	                if kafel=1 {if lolo.nie_zabijaj_mario>40 {
                    
	                    if y+64>lolo.y+10 && lolo.rozdeptywalny=1 && shield_skuszenia<=0
	                        {
	                        if global.rodzaj_mario=0 {SXMS_C_Stop();
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario=1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=3000;global.rodzaj_mario=0;shield_skuszenia=200;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario>1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=2000;shield_skuszenia=200;obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=1;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
                        
	                        }
	                    if lolo.rozdeptywalny=0 && shield_skuszenia<=0
	                        {
	                        if global.rodzaj_mario=0 {SXMS_C_Stop();
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario=1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=3000;global.rodzaj_mario=0;shield_skuszenia=200;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario>1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=2000;shield_skuszenia=200;obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=1;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
                        
	                        }
                        
	                    }
                    
	                    }
                    
                    
	                if kafel=0
	                    {
	                    if y+64>lolo.y+10 && lolo.rozdeptywalny=1 && shield_skuszenia<=0 && kluczowanie=0
	                        {
	                        if global.rodzaj_mario=0 {SXMS_C_Stop();
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario=1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=3000;global.rodzaj_mario=0;shield_skuszenia=200;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario>1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=2000;shield_skuszenia=200;obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=1;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
                        
	                        }
	                    if lolo.rozdeptywalny=0 && shield_skuszenia<=0
	                        {
	                        if global.rodzaj_mario=0 {SXMS_C_Stop();
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario=1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=3000;global.rodzaj_mario=0;shield_skuszenia=200;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        if global.rodzaj_mario>1 {wiatraczkuje_sie=0;animator.anim_mario_zmiana=2000;shield_skuszenia=200;obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=1;SXMS_SFX_PlayExt(125,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	                        }
                        
	                    }
	                }
	// kuszenie od dziur
	    if (place_meeting(x,y,o_dziura_1) || place_meeting(x,y,o_lava_define) || place_meeting(x,y,o_pink_plasma_define)) && !instance_exists(obj_mario_duch) && statued=0
	        {
	        if place_meeting(x,y,o_lava_define) {lavuj=30}
	        part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;wiwi=instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        wiwi.iyor=-18
	        }
	    if y>global.level_death_pit && !instance_exists(o_nie_zabijaj_mario_jak_wygra_duel)
	        {
	        part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;wiwi=instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        wiwi.iyor=-18
	        }
	    if instance_number(o_mario_dies)>0 {SXMS_C_Stop()}
	  // kuszenie od czasu
	  if global.time<=0 && o_koniec_etapu.local_global=0
	    {
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;wiwi=instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    wiwi.iyor=-13
	    }          
    
    

    
    
    
    
    
    
	if global.get_lives_by_jumping_on_enemies=1 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=100
	    global.punkty+=100
	    }  
      
	if global.get_lives_by_jumping_on_enemies=2 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=200
	    global.punkty+=200
	    }   
	if global.get_lives_by_jumping_on_enemies=3 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=500
	    global.punkty+=500
	    }      
	if global.get_lives_by_jumping_on_enemies=4 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=800
	    global.punkty+=800
	    }  
	if global.get_lives_by_jumping_on_enemies=5 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=1000
	    global.punkty+=1000
	    } 
	if global.get_lives_by_jumping_on_enemies=6 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=2000
	    global.punkty+=2000
	    }    
	if global.get_lives_by_jumping_on_enemies=7 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=5000
	    global.punkty+=5000
	    }   
	if global.get_lives_by_jumping_on_enemies=8 && jump_enemies_scored=1
	    {
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.wartosc=10000
	    global.punkty+=10000
	    }        
	if global.get_lives_by_jumping_on_enemies>8 && jump_enemies_scored=1
	    {
	    SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    jump_enemies_scored=0
	    lolor=instance_create(x,y,o_cyferkownia)
	    lolor.napis="1UP!"
	    global.zycia+=1
	    global.punkty+=10000
	    }     
            
	    } // koniec pauzy
    
    
	   /* 
    
	if sekwencja<>0
	    {
	    if grawitacja>0 && place_meeting(x,y,o_enemy_goomba)
	        {
	        lolo=instance_place(x,y,o_enemy_goomba)
	        for(i=0;i<ceil(grawitacja);i+=1)
	            {
	            if y+64<lolo.y+20 && lolo.rozdeptywalny=1
	                {
	                with(lolo) {kill=1};
	                grawitacja=-8;
	                break;
	                }
	            }
	        }
	    }
    
	// rozdeptywanie wlatujacych wrogow od dolu

	if sekwencja=0 && grawitacja=0 && place_meeting(x,y,o_hammer_bros)
	    {
	    lolo=instance_place(x,y,o_enemy_goomba)
	    if y+64<lolo.y+20 && lolo.rozdeptywalny=1
	        {
	        with(lolo) {kill=1};
	        grawitacja=-8;
	        if sekwencja<>2 {sekwencja=1};
	        break;
	        }
    
    
	    }
    
    
    
    
    
    
	    } // koniec pauzy


/* end script_player_wrogowanie */
}
