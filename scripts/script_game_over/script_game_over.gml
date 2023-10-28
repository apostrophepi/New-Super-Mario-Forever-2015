function script_game_over() {
	if sampel_gameover>=1 {sampel_gameover+=1}
	if sampel_gameover=50 {SXMS_SFX_PlayExt(138,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}

	if global.zycia<0
	    {
	    game_over[0]+=1
	    }
	if game_over[0]>=100 && game_over[1]=0
	    {
	    game_zabierz_przedmiotow=round((global.map_item_grzyby+global.map_item_kwiatki+global.map_item_listek+global.map_item_burak+global.map_item_boomer+global.map_item_hammer+global.map_item_duch+global.map_item_bomber+global.map_item_tanoki+global.map_item_latacz+global.map_item_gwiazdka+global.map_item_budzik)/3)
	    game_over[1]=1
	    game_over[2]=-800
	    SXMS_SFX_PlayExt(142,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
	    sampel_gameover=1
	    }
    
	if game_over[1]=1
	    {
	    //
	    draw_sprite_ext(s_map_hud_element,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,game_over[4],game_over[4],0,c_white,1)
	    if game_over[4]<0.3 {game_over[4]+=0.01}
    
	    o_map_player_1.animacja=6
	    draw_set_font(global.map_fonts_1)
	    draw_set_color(c_white)
	    draw_set_alpha(1)
	    draw_set_halign(fa_center)
	    draw_set_valign(fa_middle)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2],string_hash_to_newline("GAME OVER"),1,1,0)
	    game_over[2]+=game_over[3]
	    if game_over[2]<0 {game_over[3]+=1}
	    if game_over[2]>=0 {game_over[3]=game_over[3]/1.8*-1}
	    }
	if game_over[0]>=300 && game_over[1]=1
	    {
	    game_over[1]=2
	    }
	if game_over[1]=2
	    {
	    draw_set_halign(fa_center)
	    draw_set_valign(fa_middle)
	    //
	    draw_sprite_ext(s_map_hud_element,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,game_over[4],game_over[4],0,c_white,1)
	    if game_over[4]<0.4 {game_over[4]+=0.001}
    
	    o_map_player_1.animacja=6
	    draw_set_font(global.map_fonts_1)
	    draw_set_color(c_white)
	    draw_set_alpha(1-game_over[6])
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2]-game_over[5],string_hash_to_newline("GAME OVER"),1,1,0)
	    draw_set_alpha(1)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2]-30,string_hash_to_newline("CONTINUE"),game_over[6]+sin(degtorad(game_over[8]))*game_over[9]/10,game_over[6]+sin(degtorad(game_over[8]))*game_over[9]/10,0)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2]+30,string_hash_to_newline("QUIT"),game_over[6]+sin(degtorad(game_over[8]))*game_over[10]/10,game_over[6]+sin(degtorad(game_over[8]))*game_over[10]/10,0)
	    game_over[2]+=game_over[3]
	    if game_over[2]<0 {game_over[3]+=1}
	    if game_over[2]>=0 {game_over[3]=game_over[3]/1.8*-1}
	    //
	    if game_over[5]<100 {game_over[5]+=1}
	    if game_over[6]<1 {game_over[6]+=0.04}
	    game_over[8]+=15
    
	    if game_over[8]>100
	        {
	        if game_over[11]=0 && game_over[9]<1 {game_over[9]+=0.1}
	        if game_over[11]<>0 && game_over[9]>0 {game_over[9]=game_over[9]/1.3}
        
	        if game_over[11]=1 && game_over[10]<1 {game_over[10]+=0.1}
	        if game_over[11]<>1 && game_over[10]>0 {game_over[10]=game_over[10]/1.3}
	        }
	    if game_over[11]<0 {game_over[11]=1}
	    if game_over[11]>1 {game_over[11]=0}
    
	     if keyboard_check(global.ster_left) || keyboard_check(global.ster_up) && game_over_click=0 {game_over_click=1;game_over[11]-=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	     if keyboard_check(global.ster_right) || keyboard_check(global.ster_down) && game_over_click=0 {game_over_click=1;game_over[11]+=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)} 
	     if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) && !keyboard_check(vk_space) && !keyboard_check(vk_enter) && !keyboard_check(global.ster_jump) && !keyboard_check(global.ster_fire) {game_over_click=0}
       
	    if (keyboard_check(vk_space) || keyboard_check(vk_enter) || keyboard_check(global.ster_jump) || keyboard_check(global.ster_fire)) && game_over_click=0 
	        {
	        SXMS_SFX_PlayExt(143,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
	        game_over_click=1
	        if game_over[11]=0 {game_over[1]=3}
	        if game_over[11]=1 {game_over[1]=4}
	        }
	    }
	if game_over[1]>=3
	    {
	    draw_set_halign(fa_center)
	    draw_set_valign(fa_middle)
	    draw_sprite_ext(s_map_hud_element,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,game_over[4],game_over[4],0,c_white,1/game_over_oddalacz)
	    draw_set_font(global.map_fonts_1)
	    draw_set_color(c_white)
	    draw_set_alpha(1/game_over_oddalacz)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2]-game_over[5],string_hash_to_newline("GAME OVER"),1,1,0)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2]-30,string_hash_to_newline("CONTINUE"),game_over[6]+sin(degtorad(game_over[8]))*game_over[9]/10,game_over[6]+sin(degtorad(game_over[8]))*game_over[9]/10,0)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+game_over[2]+30,string_hash_to_newline("QUIT"),game_over[6]+sin(degtorad(game_over[8]))*game_over[10]/10,game_over[6]+sin(degtorad(game_over[8]))*game_over[10]/10,0)
	    game_over_oddalacz+=1+game_over_oddalacz/10
	    draw_set_alpha(1)
    
	    if game_over[1]=3
	        {
	        if game_over_zabierz_przedmioty_sekwencja=0 {game_over_zabierz_przedmioty_time+=1}
        
	        if game_over_zabierz_przedmioty_time>30 {game_over_zabierz_przedmioty_sekwencja=1;item_selecting=1;}
	        if game_over_zabierz_przedmioty_sekwencja=1
	            {
            
	            game_over_zabierz_przedmioty_time+=1
            
	            if game_over_zabierz_przedmioty_time>20 && game_zabierz_przedmiotow>0
	                {
	                for(i=0;i<1000;i+=1)
	                    {
	                    lolo=round(random(11))
	                    sampel_zabierzitem=1
	                    if lolo=0 && global.map_item_grzyby>0 {global.map_item_grzyby-=1;game_over_tworz_efekt=1;fofox=0;fofoy=0;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=1 && global.map_item_kwiatki>0 {global.map_item_kwiatki-=1;game_over_tworz_efekt=1;fofox=120;fofoy=0;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=2 && global.map_item_listek>0 {global.map_item_listek-=1;game_over_tworz_efekt=1;fofox=240;fofoy=0;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=3 && global.map_item_burak>0 {global.map_item_burak-=1;game_over_tworz_efekt=1;fofox=360;fofoy=0;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=4 && global.map_item_boomer>0 {global.map_item_boomer-=1;game_over_tworz_efekt=1;fofox=480;fofoy=0;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=5 && global.map_item_hammer>0 {global.map_item_hammer-=1;game_over_tworz_efekt=1;fofox=600;fofoy=0;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=6 && global.map_item_duch>0 {global.map_item_duch-=1;game_over_tworz_efekt=1;fofox=0;fofoy=120;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=7 && global.map_item_bomber>0 {global.map_item_bomber-=1;game_over_tworz_efekt=1;fofox=120;fofoy=120;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=8 && global.map_item_tanoki>0 {global.map_item_tanoki-=1;game_over_tworz_efekt=1;fofox=240;fofoy=120;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=9 && global.map_item_latacz>0 {global.map_item_latacz-=1;game_over_tworz_efekt=1;fofox=360;fofoy=120;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=10 && global.map_item_gwiazdka>0 {global.map_item_gwiazdka-=1;game_over_tworz_efekt=1;fofox=480;fofoy=120;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    if lolo=11 && global.map_item_budzik>0 {global.map_item_budzik-=1;game_over_tworz_efekt=1;fofox=600;fofoy=120;game_over_zabierz_przedmioty_time=0;game_zabierz_przedmiotow-=1;break;break;break}
	                    }
	                }
	                if sampel_zabierzitem=1 {sampel_zabierzitem=0;SXMS_SFX_PlayExt(144,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
                

	            if game_zabierz_przedmiotow<=0 {game_dodawaj_zycia+=1}
	/*SAMPEL - dodaj zycie*/                    if game_dodawaj_zycia>30 && global.zycia<4 {SXMS_SFX_PlayExt(22,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0);game_dodawaj_zycia=0;global.zycia+=1;o_map_player_1.efekt_straty_zycia=60}
	/*SAMPEL - zabierz przedmiot*/              if game_zabierz_przedmiotow<=0 && global.zycia>=4 && game_dodawaj_zycia>30 {SXMS_SFX_PlayExt(19,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0);o_map_player_1.podskocznix=-10;o_map_player_1.podskocz_po_gameover=1;o_map_player_1.animacja=7;gracz_wylacza_menu=1;klicknieto2=1;global.game_over=2;game_over[0]=0;game_over[1]=0;game_over[2]=0;game_over[3]=0;game_over[4]=0;game_over[5]=0;game_over[6]=0
	                                                    game_over[7]=0;game_over[8]=0;game_over[9]=0;game_over[10]=0;game_over[11]=0;game_over[12]=0;game_over_oddalacz=1;game_over_zabierz_przedmioty=0;game_over_zabierz_przedmioty_time=0;game_over_zabierz_przedmioty_sekwencja=0;game_over_tworz_efekt=0;game_zabierz_przedmiotow=0}  
                                            
	            if game_over_tworz_efekt=1
	                {
	                game_over_tworz_efekt=0
                
	                pozx=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
	                pozy=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2
                
	                part_system_depth(global.particle_map_overscreen,-99999999)
	                repeat(3) {part_particles_create(global.particle_map_overscreen,pozx-300+fofox+random(40)-random(40),pozy+fofoy-60+random(40)-random(40),global.part_effect_smoker_mapmini,1)}
	                repeat(3) {part_particles_create(global.particle_map_overscreen,pozx-300+fofox+random(40)-random(40),pozy+fofoy-60+random(40)-random(40),global.part_effect_smoker_map,1)}
	                repeat(2) {part_particles_create(global.particle_map_overscreen,pozx-300+fofox+random(40)-random(40),pozy+fofoy-60+random(40)-random(40),global.part_effect_zabierz_bonus,1)}
	                repeat(3) {part_particles_create(global.particle_map_overscreen,pozx-300+fofox+random(40)-random(40),pozy+fofoy-60+random(40)-random(40),global.part_effect_water_sparkle,1)}
                
	                }
            
            
            
	            }

        
	        }
	    }
    
    
	    if global.game_over=2 && o_map_player_1.podskocz_po_gameover=0 {global.game_over=0;o_map_music.po_gameover_odtwarza=1;}
    
	    draw_set_halign(fa_left)
	    draw_set_valign(fa_top)
    

    
	/*
	// wyswietl i wybieraj przedmioty        
        
	        if keyboard_check(global.ster_left) && klickersus=0 && global.game_over=0 {selecting-=1;klickersus=1}
	        if keyboard_check(global.ster_right) && klickersus=0 && global.game_over=0 {selecting+=1;klickersus=1}
	        if keyboard_check(global.ster_up) && klickersus=0 && global.game_over=0 {selecting-=6;klickersus=1}
	        if keyboard_check(global.ster_down) && klickersus=0 && global.game_over=0 {selecting+=6;klickersus=1}
	        if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) && !keyboard_check(global.ster_jump) && !keyboard_check(global.ster_fire) && !keyboard_check(vk_enter) {klickersus=0}
        
	        if selecting>=0 && selecting<=5 {klik_dodajnik_x=selecting*120;klik_dodajnik_y=0}
	        if selecting>=6 && selecting<=11 {klik_dodajnik_x=(selecting-6)*120;klik_dodajnik_y=120}
        
	        if selecting=12 {selecting=0}
	        if selecting=-1 {selecting=11}
        
	        if selecting<0 {selecting+=12}
	        if selecting>11 {selecting-=12}
        
        
        

	    draw_sprite_ext(s_map_selector,0,pozx-300+sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60-sin(degtorad(animowanie))*5,1,-1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    draw_sprite_ext(s_map_selector,0,pozx-300+sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60+sin(degtorad(animowanie))*5,1,1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    draw_sprite_ext(s_map_selector,0,pozx-300-sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60+sin(degtorad(animowanie))*5,-1,1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    draw_sprite_ext(s_map_selector,0,pozx-300-sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60-sin(degtorad(animowanie))*5,-1,-1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
    

    
    
	            if global.map_item_grzyby>0 && selecting=0 && wybrano_przedmiot[0]=0 {if global.rodzaj_mario=0 {global.rodzaj_mario=1} ; wybrano_przedmiott=1;wybrano_przedmiot[0]=1;global.map_item_grzyby-=1;stworz_efekt_uzycia=1}
	            if global.map_item_kwiatki>0 && selecting=1 && wybrano_przedmiot[1]=0 {global.rodzaj_mario=2;wybrano_przedmiott=1;wybrano_przedmiot[1]=1;global.map_item_kwiatki-=1;stworz_efekt_uzycia=1}
	            if global.map_item_listek>0 && selecting=2 && wybrano_przedmiot[2]=0 {global.rodzaj_mario=8;wybrano_przedmiott=1;wybrano_przedmiot[2]=1;global.map_item_listek-=1;stworz_efekt_uzycia=1}
	            if global.map_item_burak>0 && selecting=3 && wybrano_przedmiot[3]=0 {global.rodzaj_mario=3;wybrano_przedmiott=1;wybrano_przedmiot[3]=1;global.map_item_burak-=1;stworz_efekt_uzycia=1}
	            if global.map_item_boomer>0 && selecting=4 && wybrano_przedmiot[4]=0 {global.rodzaj_mario=4;wybrano_przedmiott=1;wybrano_przedmiot[4]=1;global.map_item_boomer-=1;stworz_efekt_uzycia=1}
	            if global.map_item_hammer>0 && selecting=5 && wybrano_przedmiot[5]=0 {global.rodzaj_mario=6;wybrano_przedmiott=1;wybrano_przedmiot[5]=1;global.map_item_hammer-=1;stworz_efekt_uzycia=1}
	            if global.map_item_duch>0 && selecting=6 && wybrano_przedmiot[6]=0 {global.rodzaj_mario=5;wybrano_przedmiott=1;wybrano_przedmiot[6]=1;global.map_item_duch-=1;stworz_efekt_uzycia=1}
	            if global.map_item_bomber>0 && selecting=7 && wybrano_przedmiot[7]=0 {global.rodzaj_mario=7;wybrano_przedmiott=1;wybrano_przedmiot[7]=1;global.map_item_bomber-=1;stworz_efekt_uzycia=1}
	            if global.map_item_tanoki>0 && selecting=8 && wybrano_przedmiot[8]=0 {global.rodzaj_mario=9;wybrano_przedmiott=1;wybrano_przedmiot[8]=1;global.map_item_tanoki-=1;stworz_efekt_uzycia=1}
	            if global.map_item_latacz>0 && selecting=9 && wybrano_przedmiot[9]=0 {global.rodzaj_mario=10;wybrano_przedmiott=1;wybrano_przedmiot[9]=1;global.map_item_latacz-=1;stworz_efekt_uzycia=1}
	            if global.map_item_gwiazdka>0 && selecting=10 && wybrano_przedmiot[10]=0 {global.map_uzyto_gwiazdki=1;wybrano_przedmiott=1;wybrano_przedmiot[10]=1;global.map_item_gwiazdka-=1;stworz_efekt_uzycia=1}
	            if global.map_item_budzik>0 && selecting=11 && wybrano_przedmiot[11]=0 {global.map_uzyto_budzika=1;wybrano_przedmiott=1;wybrano_przedmiot[11]=1;global.map_item_budzik-=1;stworz_efekt_uzycia=1}

            
            
            
	game_over_zabierz_przedmioty=0
	game_over_zabierz_przedmioty_time=0
	game_over_zabierz_przedmioty_sekwencja=0



	item_selecting=1



	if (keyboard_check(global.ster_jump) || keyboard_check(global.ster_fire) || keyboard_check(vk_enter)) && klickersus=0 && wybrano_przedmiott=0


	        if keyboard_check(global.ster_left) && klickersus=0 {selecting-=1;klickersus=1}
	        if keyboard_check(global.ster_right) && klickersus=0 {selecting+=1;klickersus=1}
	        if keyboard_check(global.ster_up) && klickersus=0 {selecting-=6;klickersus=1}
	        if keyboard_check(global.ster_down) && klickersus=0 {selecting+=6;klickersus=1}
        
        
        
	game_over[0]=0
	game_over[1]=0
	game_over[2]=0
	game_over[3]=0
	game_over[4]=0
	game_over[5]=0
	game_over[6]=0


/* end script_game_over */
}
