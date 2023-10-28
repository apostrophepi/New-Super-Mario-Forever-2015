function script_przejscie_rurowe() {
	if global.pauza=0
	    {
	    // zakoncz etap strzelania z armaty jezeli Mario sie wystrzelil
	    if strzelani_z_armaty_bonus_end=1 && sekwencja=0 && wisi=0
	        {
	        strzelani_z_armaty_bonus_end=2
	        }
	    if strzelani_z_armaty_bonus_end>=2
	        {
	        strzelani_z_armaty_bonus_end+=1
	        if strzelani_z_armaty_bonus_end=50 {instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)}
	        if strzelani_z_armaty_bonus_end>=200
	            {
	            global.mario_wszedl_do_etapu=2
	            global.mario_completed_stage=1

	            global.map_wgraj_wartosci=1
	            global.delayer=0
	            global.uzyto_stoppera=0 
	            global.chwilowy_stopper=0
    
	            // NAGRAJ PO PRZEGRANEJ WALCE
	            zapis2=hex_open("./data/gfx/beetlee_h.jpg")
	            hex_write(zapis2,global.hex_save_pos+1000+0,global.punkty)
	            hex_write(zapis2,global.hex_save_pos+1000+1,global.zycia)
	            hex_write(zapis2,global.hex_save_pos+1000+2,global.coins)
	            hex_write(zapis2,global.hex_save_pos+1000+3,global.coins_red)
	            hex_write(zapis2,global.hex_save_pos+1000+4,global.magic_stars)
	            hex_write(zapis2,global.hex_save_pos+1000+5,global.map_uzyto_budzika)
	            hex_write(zapis2,global.hex_save_pos+1000+6,global.map_uzyto_gwiazdki)
	            hex_write(zapis2,global.hex_save_pos+1000+7,global.map_item_grzyby)
	            hex_write(zapis2,global.hex_save_pos+1000+8,global.map_item_kwiatki)
	            hex_write(zapis2,global.hex_save_pos+1000+9,global.map_item_listek)
	            hex_write(zapis2,global.hex_save_pos+1000+10,global.map_item_burak)
	            hex_write(zapis2,global.hex_save_pos+1000+11,global.map_item_boomer)
	            hex_write(zapis2,global.hex_save_pos+1000+12,global.map_item_hammer)
	            hex_write(zapis2,global.hex_save_pos+1000+13,global.map_item_duch)
	            hex_write(zapis2,global.hex_save_pos+1000+14,global.map_item_bomber)
	            hex_write(zapis2,global.hex_save_pos+1000+15,global.map_item_tanoki)
	            hex_write(zapis2,global.hex_save_pos+1000+16,global.map_item_latacz)
	            hex_write(zapis2,global.hex_save_pos+1000+17,global.map_item_gwiazdka)
	            hex_write(zapis2,global.hex_save_pos+1000+18,global.map_item_budzik)
	            hex_write(zapis2,global.hex_save_pos+1000+19,global.happy_stars)
    
	            hex_close(zapis2)
	            global.pauza=0
	            room_goto(global.return_name_of_map)
	            }
	        }
	    // ARMATA
    
	    if place_meeting(x,y+10,o_armata) && sekwencja=0 && wisi=0 && armata_shoot_delay=0
	    {
	    armaten=instance_place(x,y+10,o_armata)
	    if keyboard_check(global.ster_down) && armaten.destroying=0
	        {
	        odbijator_armatni=0
	        odbijator_armatni2=0
	        grawitacja=0
	        sekwencja=0
	        zagraj_sampel_wyjscia=0
	        skrot_podazaj_speed=0
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        wisi=1000
	        depth=110000
	        obj_mario_anim.depth=110000
	        obj_mario_anim.animacja=0
	        }
	    }
    
	    if wisi=1000 && timer_skrot<100 && armata_shoot_delay=0
	        {
	        if global.ekran_size_act<1.35 {global.ekran_size_act+=0.01}
	        obj_mario_anim.x=x+16
	        obj_mario_anim.y=y+32
	        timer_skrot+=5
    
	        obj_mario_anim.animacja=0
	        obj_mario_anim.size2=1
	        y+=6
	        if x<armaten.x {x+=2}
	        if x>armaten.x {x-=2}
	        }  
	    if timer_skrot=100
	        {
        
	        if keyboard_check(global.ster_right) && armaten.kieruneczek>-90 {armaten.kieruneczek-=2;armata_sampel+=1;if armata_sampel2=0{armata_sampel2=1;armata_sampel=0}} 
	        if keyboard_check(global.ster_left) && armaten.kieruneczek<90 {armaten.kieruneczek+=2;armata_sampel+=1;if armata_sampel2=0{armata_sampel2=1;armata_sampel=0}}
	        if armata_sampel2=1 {armata_sampel2=2;SXMS_SFX_PlayExt(306,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	        if armata_sampel>20-armata_sampel2*3 {armata_sampel=0;SXMS_SFX_PlayExt(307,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        
	        if !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) {armata_sampel2=0}
         
	        if keyboard_check(global.ster_fire) {if instance_exists(o_duel_ball_life) {strzelani_z_armaty_bonus_end=1;armaten.destroying=1};obj_mario_anim.depth=0;instance_create(x,y,o_dymek_za_mario_armaty);SXMS_SFX_PlayExt(303,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);timer_skrot=101;motion_set(armaten.kieruneczek+90,20);gravity=0.15;instance_create(x+sin(degtorad(armaten.kieruneczek+180))*200,y+cos(degtorad(armaten.kieruneczek+180))*200,o_wystrzal_z_armaty)}
	        global.kierunek_aktualnej_armaty=armaten.kieruneczek
	        }
        
	        // ODBIJANIE - PETLE
	    if wisi=1000 && timer_skrot=101
	        {
	        for (i=0;i<10;i+=1)
	            {
	            if place_meeting(x,y-i*5,o_armata_odbijator)
	                {
	                odbijator_armatni=instance_place(x,y-i*5,o_armata_odbijator)
	                if odbijator_armatni<>odbijator_armatni2
	                    {odbijator_armatni2=odbijator_armatni;odbijator_armatni.pompon=5;SXMS_SFX_PlayExt(305,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                    vspeed=vspeed*-1;if vspeed<0 {vspeed-=3};if hspeed>0 {hspeed+=3}}
	                }
                
	            if place_meeting(x+i*5,y,o_armata_odbijator)
	                {
	                odbijator_armatni=instance_place(x+i*5,y,o_armata_odbijator)
	                if odbijator_armatni<>odbijator_armatni2
	                    {odbijator_armatni2=odbijator_armatni;odbijator_armatni.pompon=5;SXMS_SFX_PlayExt(305,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                    hspeed=hspeed*-1;if hspeed<0 {hspeed-=3};if hspeed>0 {hspeed+=3}}
	                }
	            if place_meeting(x-i*5,y,o_armata_odbijator)
	                {
	                odbijator_armatni=instance_place(x-i*5,y,o_armata_odbijator)
	                if odbijator_armatni<>odbijator_armatni2
	                    {odbijator_armatni2=odbijator_armatni;odbijator_armatni.pompon=5;SXMS_SFX_PlayExt(305,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                    hspeed=hspeed*-1;if hspeed<0 {hspeed-=3};if hspeed>0 {hspeed+=3}}
	                }
            

	            if place_meeting(x,y+i*5,o_armata_odbijator)
	                {
	                odbijator_armatni=instance_place(x,y+i*5,o_armata_odbijator)
	                if odbijator_armatni<>odbijator_armatni2
	                    {odbijator_armatni2=odbijator_armatni;odbijator_armatni.pompon=5;SXMS_SFX_PlayExt(305,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                    vspeed=vspeed*-1;if vspeed<0 {vspeed-=3};if hspeed>0 {hspeed+=3}}
	                }      
            
            
	            }
	      if armaten_anim_powrot>0
	        {armaten_anim_powrot-=1
	                    obj_mario_anim.run_pochylenie=0
	            obj_mario_anim.hamowanie=0
	            obj_mario_anim.kat=0
	            obj_mario_anim.run_kat=0
	            obj_mario_anim.run_promien=0
	            obj_mario_anim.run_pochylenie=0
	            obj_mario_anim.spadajace=0
	            obj_mario_anim.berserk2=0
	            obj_mario_anim.kat=0
	            obj_mario_anim.run_promien=0
	            obj_mario_anim.globalny_kat=0
	            obj_mario_anim.schylak=0
	obj_mario_anim.kat=0
	obj_mario_anim.run_pochylenie=0
	obj_mario_anim.size2=1
	obj_mario_anim.strzelanie2=0
	obj_mario_anim.animacja=1
        
        
	        }      
            


	        if global.ekran_size_act<1.5 {global.ekran_size_act+=0.01}
	        obj_mario_anim.animacja=3
	        obj_mario_anim.x=x+16
	        obj_mario_anim.y=y+32
	        if !place_meeting(x,y,obj_wall) {obliczanie_dotykania_armaty=1}
	        if place_meeting(x,y,obj_wall) && obliczanie_dotykania_armaty=1 && armata_shoot_delay=0
	            {
	            sekwencja=1
	            armaten_anim_powrot=5
	            obj_mario_anim.run_pochylenie=0
	            obj_mario_anim.hamowanie=0
	            obj_mario_anim.kat=0
	            obj_mario_anim.run_kat=0
	            obj_mario_anim.run_promien=0
	            obj_mario_anim.run_pochylenie=0
	            obj_mario_anim.spadajace=0
	            obj_mario_anim.berserk2=0
	            obj_mario_anim.kat=0
	            obj_mario_anim.run_promien=0
	            obj_mario_anim.globalny_kat=0
	            obj_mario_anim.schylak=0
	            obj_mario_anim.kat=0
	            obj_mario_anim.run_pochylenie=0
	            obj_mario_anim.size2=1
	            obj_mario_anim.strzelanie2=0
	            obj_mario_anim.animacja=1



	            // popraw pozycje po zderzeniu
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x+i,y,obj_wall) {x+=i;break}
	                }
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x-i,y,obj_wall) {x-=i;break}
	                }
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x,y+i,obj_wall) {y+=i;break}
	                }  
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x,y-i,obj_wall) {y-=i;break}
	                } 
                
            
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x+i,y+i,obj_wall) {x+=i;y+=i;break}
	                }    
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x-i,y+i,obj_wall) {x-=i;y+=i;break}
	                }      
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x-i,y-i,obj_wall) {x-=i;y-=i;break}
	                }     
	            for(i=0;i<20;i+=1)
	                {
	                if !place_meeting(x+i,y-i,obj_wall) {x+=i;y-=i;break}
	                }      
                
                
                
                
                      
	            // ustaw zmienne po zderzeniu  
	            SXMS_SFX_PlayExt(83,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	            SXMS_SFX_PlayExt(304,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	            instance_create(x,y,o_exp_zderzenie_mario_z_armaty)
	            //x=xprevious
	            //y=yprevious
	            gravity=0
	            motion_set(0,0)
	            armata_shoot_delay=1
	            sekwencja=1
	            grawitacja=0
	            szybkosc=0
	            kierunek=1
	            timer_skrot=102
            
	            obliczanie_dotykania_armaty=0
	            }

	        }
	        if armata_shoot_delay>=1 && armata_shoot_delay<30
	            {
	            armaten.sekwencja=0
	            timer_skrot=0
	            armata_shoot_delay+=1
	            obj_mario_anim.animacja=1
	            if global.ekran_size_act>1+abs(global.scroll_speed_oddalator/100) {global.ekran_size_act-=0.05}
	            if global.ekran_size_act<1+abs(global.scroll_speed_oddalator/100) {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	            }
	        if armata_shoot_delay>=20 {armata_shoot_delay=0;wisi=0}
	        if wisi=1000 {sekwencja=0;grawitacja=0}
        
        
        
	    // PRZEJSCIA RUROWE
	    if place_meeting(x,y,o_door)
	        {
	        door=instance_place(x,y,o_door)
	        slot_zmiennej_drzwi=door.idzie_do_etapu
	        if sekwencja=0 && (keyboard_check(global.ster_down) || keyboard_check(global.ster_up))
	            {
	            skrot_podazaj_speed=0
	            global.pauza=50
	            door.aktywowane=1
	            SXMS_SFX_PlayExt(200,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	            }
	        }
	    }
    

    
    
	    // ALGORYTMY SKROTOW
	if global.pauza=50
	    {
	     animator.miganie-=0.05
	     animator.animacja=6
	     skrot_podazaj_speed+=1
	     if skrot_podazaj_speed>160 {room_goto(slot_zmiennej_drzwi)}
    
    
    
	    }






	if place_meeting(x,y,o_skrot_definiowalny) && global.pauza=0
	    {
	    koko8=instance_place(x,y,o_skrot_definiowalny)
	    if koko8.kierunek_wchodzenia=0 && keyboard_check(global.ster_down)
	        {
	        if room_get_name(room)="save_game_room" {instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)}
	        if koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku<>0 {global.wychodz_z_rury_nastepny_etap=koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku}
	        if koko8.blanker_in<>0
	            {
	            if koko8.blanker_in=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        grawitacja=0
	        sekwencja=0
	        zagraj_sampel_wyjscia=0
	        skrot_podazaj_speed=0
	        podazaj_skrotem=koko8.podazaj
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        global.pauza=1
	        depth=110000
	        music_polecenie=1
	        obj_mario_anim.depth=110000
	        }
	    if koko8.kierunek_wchodzenia=2 && keyboard_check(global.ster_up)
	        {
	        if koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku<>0 {global.wychodz_z_rury_nastepny_etap=koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku}
	        if koko8.blanker_in<>0
	            {
	            if koko8.blanker_in=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        grawitacja=0
	        sekwencja=0
	        zagraj_sampel_wyjscia=0
	        skrot_podazaj_speed=0
	        podazaj_skrotem=koko8.podazaj
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        global.pauza=1
	        depth=110000
	        music_polecenie=1
	        obj_mario_anim.depth=110000
	        }
	    if koko8.kierunek_wchodzenia=1 && keyboard_check(global.ster_right) && !keyboard_check(global.ster_left)
	        {
	        if koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku<>0 {global.wychodz_z_rury_nastepny_etap=koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku}
	        if koko8.blanker_in<>0
	            {
	            if koko8.blanker_in=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        grawitacja=0
	        sekwencja=0
	        zagraj_sampel_wyjscia=0
	        skrot_podazaj_speed=0
	        podazaj_skrotem=koko8.podazaj
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        global.pauza=1
	        depth=110000
	        music_polecenie=1
	        obj_mario_anim.depth=110000
	        obj_mario_anim.size2=1
	        }
	    if koko8.kierunek_wchodzenia=3 && keyboard_check(global.ster_left) && !keyboard_check(global.ster_right)
	        {
	        if koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku<>0 {global.wychodz_z_rury_nastepny_etap=koko8.uzyj_w_nastepnym_etapie_rury_na_poczatku}
	        if koko8.blanker_in<>0
	            {
	            if koko8.blanker_in=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        grawitacja=0
	        sekwencja=0
	        zagraj_sampel_wyjscia=0
	        skrot_podazaj_speed=0
	        podazaj_skrotem=koko8.podazaj
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        global.pauza=1
	        depth=110000
	        music_polecenie=1
	        obj_mario_anim.depth=110000
	        obj_mario_anim.size2=-1
	        }      
        
	    }
	if global.pauza>=1 && global.pauza<10 {
	if global.pauza=1
	    {
	    if timer_skrot=50 && global.change_position_on_map<>0
	        {
	        instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)
	        }
	    if timer_skrot>150 && global.change_position_on_map<>0
	        {
	            global.mario_wszedl_do_etapu=2
	    global.mario_completed_stage=1

	    global.map_wgraj_wartosci=1
	    global.delayer=0
	    global.uzyto_stoppera=0 
	    global.chwilowy_stopper=0
    
	    // NAGRAJ PO PRZEGRANEJ WALCE
	    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
	    hex_write(zapis2,global.hex_save_pos+1000+0,global.punkty)
	    hex_write(zapis2,global.hex_save_pos+1000+1,global.zycia)
	    hex_write(zapis2,global.hex_save_pos+1000+2,global.coins)
	    hex_write(zapis2,global.hex_save_pos+1000+3,global.coins_red)
	    hex_write(zapis2,global.hex_save_pos+1000+4,global.magic_stars)
	    hex_write(zapis2,global.hex_save_pos+1000+5,global.map_uzyto_budzika)
	    hex_write(zapis2,global.hex_save_pos+1000+6,global.map_uzyto_gwiazdki)
	    hex_write(zapis2,global.hex_save_pos+1000+7,global.map_item_grzyby)
	    hex_write(zapis2,global.hex_save_pos+1000+8,global.map_item_kwiatki)
	    hex_write(zapis2,global.hex_save_pos+1000+9,global.map_item_listek)
	    hex_write(zapis2,global.hex_save_pos+1000+10,global.map_item_burak)
	    hex_write(zapis2,global.hex_save_pos+1000+11,global.map_item_boomer)
	    hex_write(zapis2,global.hex_save_pos+1000+12,global.map_item_hammer)
	    hex_write(zapis2,global.hex_save_pos+1000+13,global.map_item_duch)
	    hex_write(zapis2,global.hex_save_pos+1000+14,global.map_item_bomber)
	    hex_write(zapis2,global.hex_save_pos+1000+15,global.map_item_tanoki)
	    hex_write(zapis2,global.hex_save_pos+1000+16,global.map_item_latacz)
	    hex_write(zapis2,global.hex_save_pos+1000+17,global.map_item_gwiazdka)
	    hex_write(zapis2,global.hex_save_pos+1000+18,global.map_item_budzik)
    
	    hex_close(zapis2)
	    global.pauza=0
	    room_goto(global.return_name_of_map)
    
    
	        global.pauza=0
	        global.mario_wszedl_do_etapu=2
	        room_goto(global.return_name_of_map)
	        }
    
        
        
        
	    if place_meeting(x,y,o_skrot_odbijacz) {global.pauza=5}
	    obj_mario_anim.x=x+16
	    obj_mario_anim.y=y+32

	    if koko8.kierunek_wchodzenia=1{
    
	    obj_mario_anim.animacja=0
	    obj_mario_anim.size2=1
	    timer_skrot+=1
	    x+=1
	    if y>koko8.y+1-57{y-=1}
	    if y<koko8.y-1-57{y+=1}
	    if timer_skrot>60 && podazaj_skrotem=0 && global.change_position_on_map=0
	        {
	                // DAJ ZNAC SKRYPTOWI ZMIANY MUZYKI ZE MARIO WSZEDL/WYSZEDL Z RURY I ZMIEN MUZYKE
	    // WYBIERZ MUZYKE KTORA MA SIE GRAC PO WYJSCIU Z RURY
	    if music_polecenie=1
	        {
	        music_polecenie=0
	        if koko8.change_music<>0 {if music_tick_skrot_changer=0 {global.level_music=koko8.change_music-1;music_tick_level=0;music_tick_skrot_changer=1}};

	        }
        
        
	        if koko8.blanker_out<>0
	            {
	            if koko8.blanker_out=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.pauza=2;timer_skrot=0;x=koko8.wyjscie_x-20;y=koko8.wyjscie_y;music_polecenie=1}
    
	    }
    
	    if koko8.kierunek_wchodzenia=3{
    
	    obj_mario_anim.animacja=0
	    obj_mario_anim.size2=-1
	    timer_skrot+=1
	    x-=1
	    if y>koko8.y+1-57{y-=1}
	    if y<koko8.y-1-57{y+=1}
	    if timer_skrot>60 && podazaj_skrotem=0 && global.change_position_on_map=0
	        {
	                // DAJ ZNAC SKRYPTOWI ZMIANY MUZYKI ZE MARIO WSZEDL/WYSZEDL Z RURY I ZMIEN MUZYKE
	    // WYBIERZ MUZYKE KTORA MA SIE GRAC PO WYJSCIU Z RURY
	    if music_polecenie=1
	        {
	        music_polecenie=0
	        if koko8.change_music<>0 {if music_tick_skrot_changer=0 {global.level_music=koko8.change_music-1;music_tick_level=0;music_tick_skrot_changer=1}};

	        }
        
        
	        if koko8.blanker_out<>0
	            {
	            if koko8.blanker_out=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.pauza=2;timer_skrot=0;x=koko8.wyjscie_x-20;y=koko8.wyjscie_y;music_polecenie=1}

	    }
    
    
	    if koko8.kierunek_wchodzenia=2{
	    timer_skrot+=1
	    y-=1
	    if x>koko8.x+1-15{x-=1}
	    if x<koko8.x-1-15{x+=1}
	    if timer_skrot>120 && podazaj_skrotem=0 && global.change_position_on_map=0 
	        {
	                // DAJ ZNAC SKRYPTOWI ZMIANY MUZYKI ZE MARIO WSZEDL/WYSZEDL Z RURY I ZMIEN MUZYKE
	    // WYBIERZ MUZYKE KTORA MA SIE GRAC PO WYJSCIU Z RURY
	    if music_polecenie=1
	        {
	        music_polecenie=0
	        if koko8.change_music<>0 {if music_tick_skrot_changer=0 {global.level_music=koko8.change_music-1;music_tick_level=0;music_tick_skrot_changer=1}};

	        }
        
        
	        if koko8.blanker_out<>0
	            {
	            if koko8.blanker_out=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.pauza=2;timer_skrot=0;x=koko8.wyjscie_x-20;y=koko8.wyjscie_y;music_polecenie=1}
	    }
    
    
	    if koko8.kierunek_wchodzenia=0{
	    timer_skrot+=1
	    y+=1
	    if x>koko8.x+1-15{x-=1}
	    if x<koko8.x-1-15{x+=1}
	    if timer_skrot>120 && podazaj_skrotem=0 && global.change_position_on_map=0
	        {
	                // DAJ ZNAC SKRYPTOWI ZMIANY MUZYKI ZE MARIO WSZEDL/WYSZEDL Z RURY I ZMIEN MUZYKE
	    // WYBIERZ MUZYKE KTORA MA SIE GRAC PO WYJSCIU Z RURY
	    if music_polecenie=1
	        {
	        music_polecenie=0
	        if koko8.change_music<>0 {if music_tick_skrot_changer=0 {global.level_music=koko8.change_music-1;music_tick_level=0;music_tick_skrot_changer=1}};

        
	        }
        
	        if koko8.blanker_out<>0
	            {
	            if koko8.blanker_out=1 {instance_create(x,y,o_FADE_blanker_out)}
	            }
            
	        SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.pauza=2;timer_skrot=0;x=koko8.wyjscie_x-20;y=koko8.wyjscie_y-40;music_polecenie=1}
	    }
	    }
    
	if global.pauza=2 && koko8.level_changer<>0
	    {
	    room_goto(koko8.level_changer)
	    }
      
	if global.pauza=2 && koko8.level_changer=0
	    {
	    if koko8.scrooling_changer=1
	        {
        
	        __view_set( e__VW.WView, 0, 1 );__view_set( e__VW.WView, 0, 1 );global.ekran_size_act=1;global.scroll_kind=1;global.skrot_static_scrooling_x=koko8.scrool_x;global.skrot_static_scrooling_y=koko8.scrool_y}
	    if koko8.scrooling_changer=2 {global.scroll_kind=0}
	    if koko8.scrooling_changer=1000 {global.scroll_kind=1000}
	    if global.background_kind<>koko8.change_background {global.background_kind=koko8.change_background}
	    obj_mario_anim.x=x+16
	    obj_mario_anim.y=y+32
	    if koko8.kierunek_wychodzenia=3 && place_meeting(x,y,obj_wall) {x-=1}
	    if koko8.kierunek_wychodzenia=1 && place_meeting(x,y,obj_wall) {x+=1}
	    if koko8.kierunek_wychodzenia=2 && place_meeting(x,y,obj_wall) {y-=1}
	    if koko8.kierunek_wychodzenia=0 && place_meeting(x,y,obj_wall) {y+=1}
	    if !place_meeting(x,y,obj_wall)
	        {
	        depth=koko8.depth_mario_changer
	        obj_mario_anim.depth=koko8.depth_mario_changer
	        music_tick_skrot_changer=0;sekwencja=0;szybkosc=0;global.pauza=0;if koko8.kill_on_use=1 {with(koko8){instance_destroy()}}}
	    }
	if global.pauza=5
	    {
	    szybkosc=0
	    obj_mario_anim.x=x+16
	    obj_mario_anim.y=y+32
    

        
        
	    if kierunek_podazania=0 {y+=skrot_podazaj_speed}
	    if kierunek_podazania=1 {x+=skrot_podazaj_speed}
	    if kierunek_podazania=2 {y-=skrot_podazaj_speed}
	    if kierunek_podazania=3 {x-=skrot_podazaj_speed}
    
	    if place_meeting(x,y,o_skrot_odbijacz)
	        {
	        koxx=instance_place(x,y,o_skrot_odbijacz)
        
	            {
            
	            if global.rodzaj_mario<>0 {
	            if checked_id_rurowe_przejscie<>koxx {
	            if kierunek_podazania=0
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {y-=2}}}
	            if kierunek_podazania=1
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {x-=2}}}
	            if kierunek_podazania=2
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {y+=2}}}
	            if kierunek_podazania=3
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {x+=2}}} 
	                    checked_id_rurowe_przejscie=koxx} }      
                        
                        
	            if global.rodzaj_mario=0 {
	            if checked_id_rurowe_przejscie<>koxx {
	            if kierunek_podazania=0
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {y-=2}}}
	            if kierunek_podazania=1
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {x-=2}}}
	            if kierunek_podazania=2
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y-80,o_skrot_odbijacz) {y+=2}}}
	            if kierunek_podazania=3
	                {for(i=0;i<skrot_podazaj_speed;i+=1){
	                    if place_meeting(x,y,o_skrot_odbijacz) {x+=2}}} 
	                    checked_id_rurowe_przejscie=koxx} }  
	                    }}
                    
	        if kierunek_podazania=2 && global.rodzaj_mario=0 {
	        if place_meeting(x,y-40,o_skrot_odbijacz)
	        {
	        koxx=instance_place(x,y-40,o_skrot_odbijacz)
	            {  
	            if koxx.opoznienie<>0 {timer_skrot=koxx.opoznienie}
	            skrot_podazaj_speed=koxx.speeduj
	            if koxx.lewo=1 {kierunek_podazania=3}
	            if koxx.prawo=1 {kierunek_podazania=1;}
	            if koxx.gora=1 {kierunek_podazania=2;}
	            if koxx.dol=1 {kierunek_podazania=0;}
	            }
	        }}
        
                  
	        if kierunek_podazania<>2 || global.rodzaj_mario<>0 {
	        if place_meeting(x,y,o_skrot_odbijacz)
	        {
	        koxx=instance_place(x,y,o_skrot_odbijacz)
	            {  
	            if koxx.opoznienie<>0 {timer_skrot=koxx.opoznienie}
	            skrot_podazaj_speed=koxx.speeduj
	            if koxx.lewo=1 {kierunek_podazania=3}
	            if koxx.prawo=1 {kierunek_podazania=1;}
	            if koxx.gora=1 {kierunek_podazania=2;}
	            if koxx.dol=1 {kierunek_podazania=0;}
	            }
	        }}
        
        
        
    
	    if timer_skrot>1 {timer_skrot-=1}
	    if timer_skrot=1
	        {
	        if !place_meeting(x,y,obj_wall) {        
	        depth=koko8.depth_mario_changer
	        obj_mario_anim.depth=koko8.depth_mario_changer;music_tick_skrot_changer=0;global.pauza=0}
	        if zagraj_sampel_wyjscia=0
	            {
	            if kierunek_podazania=0 && !place_meeting(x,y+140,obj_wall) {zagraj_sampel_wyjscia=1;SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	            if kierunek_podazania=1 && !place_meeting(x+100,y,obj_wall) {zagraj_sampel_wyjscia=1;SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	            if kierunek_podazania=2 && !place_meeting(x,y-140,obj_wall) {zagraj_sampel_wyjscia=1;SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	            if kierunek_podazania=3 && !place_meeting(x-100,y,obj_wall) {zagraj_sampel_wyjscia=1;SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
            
            
            
	            }
        
        
        
	        }
	    }
    
    
    
	    }
    

    
	    /*
	    kierunek_wchodzenia=0
	podazaj=0
	wyjscie_x=0
	wyjscie_y=0



/* end script_przejscie_rurowe */
}
