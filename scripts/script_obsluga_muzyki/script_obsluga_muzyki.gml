function script_obsluga_muzyki() {
	// o_koniec_etapu.local_global=0 - czyli pokonanie etapu


	SXMS_C_Volume(global.glosnosc_muzyki/global.sciszacz_sekwencyjny_muzyki)
	SXMS_WAP_Volume(0,global.glosnosc_muzyki/global.sciszacz_sekwencyjny_muzyki) 
	if sciszaj_muzyke=1 {if global.glosnosc_muzyki>0 {global.glosnosc_muzyki-=2}}
	if sciszaj_muzyke=0 {global.glosnosc_muzyki=global.aktual_music_volume}

	// sprawdz najpierw czy Mario nie przeszedl etapu (zeby nie bylo tak ze przejdzie i zaraz muzyka sie odpali
	if o_koniec_etapu.local_global=0 {
	if music_tick_level=0 {/*SXMS_C_Stop();SXMS_WAP_Stop()*/}
	if global.level_music=0 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_prime.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=1 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_jaskinia.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=2 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_grzyby.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=3 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_zameczek.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=4 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_boomboom.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=5 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_duchownia.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=6 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_duel.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=7 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_palace.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=8 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_ship.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=9 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_boss_1.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=10 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_desert.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=11 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_zameczek.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=12 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_water_ship.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=13 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/underwater_music.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=14 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_secret.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=15 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_chasing.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=16 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_cloudy.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=17 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_zameczek_3.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=18 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_chase.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=19 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_fastbeater.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=20 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_fastbeater2.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=21 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_fastbeater3.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=22 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_tanks.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=30 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Stop();SXMS_WAP_Play("./data/m/boss.psf");music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=31 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/save_game.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=132 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/intro.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=100 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_WAP_Play("./data/m/bonus_toad_house_1.PSF");music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=101 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_WAP_Play("./data/m/bonus_toad_house_2.psf");music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=102 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_WAP_Play("./data/m/bonus_armaten_shooten.psf2");music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=32 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/level_cloudy_2.mp3",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}
	if global.level_music=103 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/waiting.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}

	if global.level_music=104 && music_tick_level=0 && global.zostaw_ta_sama_muzyke_w_nast_etapie<>global.level_music {SXMS_C_Play("./data/m/title_screen.ogg",0,0,0,0,0,0,0,0,0);music_tick_level=1;global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music}





	if global.zostaw_ta_sama_muzyke_w_nast_etapie=global.level_music {music_tick_level=1}

	if global.level_music=17
	    {
	    if SXMS_C_Time()>42000
	        {
	        SXMS_S_Position(150000)
        
        
	        }
	    }
    
    
	// TRIGGER
	if (global.coins_red_time>0 || murek_change_collected>0) && music_tick=0 {SXMS_C_Play("./data/m/BGM_SWITCH.mp3",0,0,0,0,0,0,0,0,0);music_tick=1}
	if global.coins_red_time<=0 && music_tick=1 && murek_change_collected<=0 {music_tick=0;music_tick_level=0;music_tick=0;music_tick_level=0 ;global.zostaw_ta_sama_muzyke_w_nast_etapie=8714917489}

	// STARMAN
	if music_tick=2 {SXMS_C_Play("./data/m/starman.mp3",0,0,0,0,0,0,0,0,0);music_tick=3;}
	if music_tick=3 && power_star_time<=0 {music_tick=0;music_tick_level=0 ;global.zostaw_ta_sama_muzyke_w_nast_etapie=8714917489}
	// TIMEUP

	if global.time<=100 && time_up_trigger=0 && global.sequence_level_completed=0
	    {
	    o_HUD_tworzony_przez_gracza.timeup=1
	    time_up_trigger=1
	    SXMS_C_Stop()
	    SXMS_C_Play("./data/m/time_up.mp3",0,0,0,0,0,0,0,0,0)
	    }
	    if time_up_trigger>=1 && time_up_trigger<=190
	        {
	        time_up_trigger+=1
	        }
	    if time_up_trigger=191
	        {
	        time_up_trigger=192
	        music_tick_level=0
	        music_tick=0;music_tick_level=0 ;global.zostaw_ta_sama_muzyke_w_nast_etapie=8714917489
	        }


	}


	if global.pauza<>0 && music_tick_pausing=0 && music_tick=1 {SXMS_C_Pause(0);music_tick_pausing=1}
	if global.pauza=0 && music_tick_pausing=1 && music_tick=1 {SXMS_C_Pause(0);music_tick_pausing=0}



}
