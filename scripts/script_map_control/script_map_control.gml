function script_map_control() {
	// ciemny efekt na mrocznej mapie


	if global.map_number=7
	    {
    
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(180+53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(180+53-__view_get( e__VW.Angle, 0 )))*(boczki+200),2+boczki_alpha,2+boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,1+sin(migacz_przyciskow/4)/2)
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(180-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(180-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),-2-boczki_alpha,2+boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,1+sin(migacz_przyciskow/2)/2)
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(53-__view_get( e__VW.Angle, 0 )))*(boczki+200),-2-boczki_alpha,-2-boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,1+sin(migacz_przyciskow/3)/2)
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),2+boczki_alpha,-2-boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,1+sin(migacz_przyciskow/1.5)/2)

	    }


	//

	if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) && !keyboard_check(global.ster_jump) && !keyboard_check(global.ster_fire) && !keyboard_check(vk_enter) {klickersus=0}


	if global.game_over=0 && item_selecting<>10 {
	if !item_selecting=1 {draw_sprite_ext(s_map_napis_1,0,__view_get( e__VW.XView, 0 )+150*testvar,__view_get( e__VW.YView, 0 )+540*testvar,1*testvar,1*testvar,0,c_white,0.7/boczki_przyciemniaj_hud+sin(migacz_przyciskow)/5/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_napis_2,0,__view_get( e__VW.XView, 0 )+70*testvar,__view_get( e__VW.YView, 0 )+540*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,0,c_white,1/boczki_przyciemniaj_hud)}
	if item_selecting=1 {draw_sprite_ext(s_map_napis_1,0,__view_get( e__VW.XView, 0 )+150*testvar,__view_get( e__VW.YView, 0 )+540*testvar,1*testvar,1*testvar,0,c_white,(0.7/boczki_przyciemniaj_hud+sin(migacz_przyciskow)/5/boczki_przyciemniaj_hud)/przyciemniacz_przedmiotowy)
	draw_sprite_ext(s_map_napis_2,0,__view_get( e__VW.XView, 0 )+70*testvar,__view_get( e__VW.YView, 0 )+540*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,0,c_white,(1/boczki_przyciemniaj_hud)/przyciemniacz_przedmiotowy)}


	if global.map_completed[0]<>0 {draw_sprite_ext(s_map_napis_1,0,__view_get( e__VW.XView, 0 )+650*testvar,__view_get( e__VW.YView, 0 )+540*testvar-50,-1*testvar,1*testvar,0,c_white,0.7/boczki_przyciemniaj_hud/przyciemniacz_przedmiotowy+sin(migacz_przyciskow)/5/boczki_przyciemniaj_hud/przyciemniacz_przedmiotowy)
	draw_sprite_ext(s_map_napis_7,0,__view_get( e__VW.XView, 0 )+740*testvar,__view_get( e__VW.YView, 0 )+540*testvar-50,1*testvar+sin(migacz_przyciskow)/10*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,0,c_white,1/boczki_przyciemniaj_hud/przyciemniacz_przedmiotowy/przyciemniacz_przedmiotowy)}
	draw_sprite_ext(s_map_napis_1,0,__view_get( e__VW.XView, 0 )+650*testvar,__view_get( e__VW.YView, 0 )+540*testvar,-1*testvar,1*testvar,0,c_white,0.7/boczki_przyciemniaj_hud+sin(migacz_przyciskow)/5/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_napis_3,0,__view_get( e__VW.XView, 0 )+740*testvar,__view_get( e__VW.YView, 0 )+540*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,0,c_white,1/boczki_przyciemniaj_hud)}
	draw_sprite_ext(s_map_napis_6,0,__view_get( e__VW.XView, 0 )+110*testvar,__view_get( e__VW.YView, 0 )+100*testvar,1*testvar,1*testvar,0,c_white,0.7/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_head_mario,0,__view_get( e__VW.XView, 0 )+70*testvar,__view_get( e__VW.YView, 0 )+105*testvar,1*testvar,1*testvar,0,c_white,1/boczki_przyciemniaj_hud)



	if global.game_over=0 && item_selecting<>10 {
	draw_set_font(global.map_fonts_1)
	draw_set_color(c_white)
	draw_set_alpha(1/boczki_przyciemniaj_hud/przyciemniacz_przedmiotowy)
	{draw_text_transformed(__view_get( e__VW.XView, 0 )+110*testvar,__view_get( e__VW.YView, 0 )+520*testvar,string_hash_to_newline("MAP"),1*testvar,1*testvar,0)}
	if global.map_completed[0]<>0  {draw_text_transformed(__view_get( e__VW.XView, 0 )+610*testvar,__view_get( e__VW.YView, 0 )+520*testvar-50,string_hash_to_newline("MAPS"),1*testvar,1*testvar,0)}
	if !item_selecting=1 {draw_text_transformed(__view_get( e__VW.XView, 0 )+610*testvar,__view_get( e__VW.YView, 0 )+520*testvar,string_hash_to_newline("ITEMS"),1*testvar,1*testvar,0)}
	draw_set_alpha(przyciemniacz_przedmiotowy/10)
	if item_selecting=1 {draw_text_transformed(__view_get( e__VW.XView, 0 )+610*testvar,__view_get( e__VW.YView, 0 )+520*testvar,string_hash_to_newline("EXIT"),1*testvar,1*testvar,0)}}

	draw_set_font(global.map_fonts_2)
	draw_set_alpha(1/boczki_przyciemniaj_hud)
	if global.zycia<=9 {draw_text_transformed(__view_get( e__VW.XView, 0 )+110*testvar,__view_get( e__VW.YView, 0 )+50*testvar+sin(degtorad(o_map_player_1.efekt_straty_zycia2))*o_map_player_1.efekt_straty_zycia,string_hash_to_newline("/"+string(max(0,global.zycia))),1*testvar,1*testvar,0)}
	if global.zycia>9 && global.zycia<=99 {draw_text_transformed(55+__view_get( e__VW.XView, 0 )+50*testvar,__view_get( e__VW.YView, 0 )+60*testvar+sin(degtorad(o_map_player_1.efekt_straty_zycia2))*o_map_player_1.efekt_straty_zycia,string_hash_to_newline("/"+string(global.zycia)),0.80*testvar,0.80*testvar,0)}
	if global.zycia>99 && global.zycia<=999 {draw_text_transformed(55+__view_get( e__VW.XView, 0 )+50*testvar,__view_get( e__VW.YView, 0 )+70*testvar+sin(degtorad(o_map_player_1.efekt_straty_zycia2))*o_map_player_1.efekt_straty_zycia,string_hash_to_newline("/"+string(global.zycia)),0.6*testvar,0.6*testvar,0)}
	if global.zycia>999 && global.zycia<=99999 {draw_text_transformed(50+__view_get( e__VW.XView, 0 )+55*testvar,__view_get( e__VW.YView, 0 )+80*testvar+sin(degtorad(o_map_player_1.efekt_straty_zycia2))*o_map_player_1.efekt_straty_zycia,string_hash_to_newline("/"+string(999)),0.5*testvar,0.5*testvar,0)}
	if global.zycia>99999 {global.zycia=-1;draw_text_transformed(__view_get( e__VW.XView, 0 )+110*testvar,__view_get( e__VW.YView, 0 )+50*testvar+sin(degtorad(o_map_player_1.efekt_straty_zycia2))*o_map_player_1.efekt_straty_zycia,string_hash_to_newline("/"+string(0)),1*testvar,1*testvar,0)}
	draw_set_alpha(1)
	migacz_przyciskow+=0.1


	// wyswietl strzalki przegladania mapy
	if global.mapa_sterownosc=1 && global.game_over=0
	    {
	    draw_sprite_ext(s_map_napis_4,0,__view_get( e__VW.XView, 0 )+750*testvar+sin(migacz_przyciskow)*30*testvar,__view_get( e__VW.YView, 0 )+300*testvar,1,1,0,c_white,1)
	    draw_sprite_ext(s_map_napis_4,0,__view_get( e__VW.XView, 0 )+50*testvar+sin(-migacz_przyciskow)*30*testvar,__view_get( e__VW.YView, 0 )+300*testvar,-1,1,0,c_white,1)
	    draw_sprite_ext(s_map_napis_4,0,__view_get( e__VW.XView, 0 )+400*testvar,__view_get( e__VW.YView, 0 )+50*testvar+sin(-migacz_przyciskow)*30*testvar,1,1,90,c_white,1)
	    draw_sprite_ext(s_map_napis_4,0,__view_get( e__VW.XView, 0 )+400*testvar,__view_get( e__VW.YView, 0 )+550*testvar+sin(migacz_przyciskow)*30*testvar,1,1,270,c_white,1)
	    }
    
    
	// RAMKA MAPY

	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(180+53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(180+53-__view_get( e__VW.Angle, 0 )))*(boczki+200),1+boczki_alpha,1+boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,boczki_alpha/2)
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(180-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(180-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),-1-boczki_alpha,1+boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,boczki_alpha/2)
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(53-__view_get( e__VW.Angle, 0 )))*(boczki+200),-1-boczki_alpha,-1-boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,boczki_alpha/2)
	draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(-53-__view_get( e__VW.Angle, 0 )))*(boczki+200),1+boczki_alpha,-1-boczki_alpha,-__view_get( e__VW.Angle, 0 ),c_white,boczki_alpha/2)

	// WLACZANIE NA MAPIE WYBIERANIA MAP


	if o_map_sterownik.wybral_mape_1=0 && global.map_completed_sequence=0 {
	if o_map_player_1.triggered_by_enemy=1 {item_selecting=0}
	if wybrano_przedmiott=0 && game_over[0]=0 && o_map_player_1.idzie=0 && o_map_player_1.triggered_by_enemy=0 {
	if keyboard_check(50) && !instance_exists(o_MAP_COMPLETED_OBJECT) && item_selecting=10 && klicknieto2=0 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0 && alpha_wyboru_mapy=1 && alpha_przedmiotow>=4 
	{wybrana_mapka=gracz_wybral_mapke;;gracz_wylacza_menu=1;klicknieto2=1;item_selecting=0;SXMS_SFX_PlayExt(123,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	if keyboard_check(50) && !instance_exists(o_MAP_COMPLETED_OBJECT) && item_selecting=0 && klicknieto2=0 && !keyboard_check(vk_tab) && global.delayer>=1000 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0 && global.mario_wszedl_do_etapu=0 && alpha_wyboru_mapy=0 && alpha_przedmiotow>=4 
	{gracz_wybral_mapke=global.map_number;item_selecting=10;klicknieto2=1;wybrana_mapka=-gracz_wybral_mapke;SXMS_SFX_PlayExt(123,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	if !keyboard_check(50) && !instance_exists(o_MAP_COMPLETED_OBJECT) && !keyboard_check(49) {klicknieto2=0}}
	}

	// WLACZANIE NA MAPIE WYBIERANIA PRZEDMIOTOW I PLECAKA
	if wybrano_przedmiott=0 && o_map_sterownik.wybral_mape_1=0 && global.map_completed_sequence=0 {
	if keyboard_check(49) && !instance_exists(o_MAP_COMPLETED_OBJECT) && item_selecting=1 && klicknieto2=0 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0 && alpha_przedmiotow<=1 && alpha_wyboru_mapy=0 {gracz_wylacza_menu=1;klicknieto2=1;SXMS_SFX_PlayExt(123,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	if keyboard_check(49) && !instance_exists(o_MAP_COMPLETED_OBJECT) && item_selecting=0 && klicknieto2=0 && !keyboard_check(vk_tab) && global.delayer>=1000 && global.chwilowy_stopper<=0 && alpha_przedmiotow>=4 && global.mario_skusil=0 && global.game_over=0 && global.mario_wszedl_do_etapu=0 && alpha_wyboru_mapy=0 {item_selecting=1;klicknieto2=1;SXMS_SFX_PlayExt(123,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	}



	// ITEMS
	if item_selecting<>1 {alpha_przedmiotow=5}

	if item_selecting<>1 && przyciemniacz_przedmiotowy>1 {przyciemniacz_przedmiotowy=przyciemniacz_przedmiotowy/2}
	if przyciemniacz_przedmiotowy<1 {przyciemniacz_przedmiotowy=1}





	if item_selecting=1 {
	// wybieranie przedmiotow ENTEREM i przyciskiem JUMP albo FIRE


	stworz_efekt_uzycia=0
	if (keyboard_check(global.ster_jump) || keyboard_check(global.ster_fire) || keyboard_check(vk_enter)) && klickersus=0 && wybrano_przedmiott=0 && global.game_over=0 && global.map_completed_sequence=0
	    { 
	    klickersus=1;
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
	            if global.map_item_gwiazdka>0 && selecting=10 && wybrano_przedmiot[10]=0 {global.map_uzyto_gwiazdki=1;wybrano_przedmiott=1;wybrano_przedmiot[10]=1;global.map_item_gwiazdka-=1;stworz_efekt_uzycia=1;global.used_power_star_on_start=1}
	            if global.map_item_budzik>0 && selecting=11 && wybrano_przedmiot[11]=0 {global.map_uzyto_budzika=1;wybrano_przedmiott=1;wybrano_przedmiot[11]=1;global.map_item_budzik-=1;stworz_efekt_uzycia=1;global.used_budzix_on_start=1}

	    }
    

    


	if przyciemniacz_przedmiotowy<10000 {przyciemniacz_przedmiotowy+=0.1+przyciemniacz_przedmiotowy/100}


	pozx=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
	pozy=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2

	draw_sprite_ext(s_map_hud_element,0,
	__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30,
	__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,
	1+sin(migacz_przyciskow/2)/150,1-sin(migacz_przyciskow/2)/150,0,c_white,(0.5-sin(migacz_przyciskow)/20)/alpha_przedmiotow)

	draw_sprite_ext(s_map_item_selectorus,0,pozx-300,pozy-60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120,pozy-60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*2,pozy-60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*3,pozy-60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*4,pozy-60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*5,pozy-60,1,1,0,c_white,1/alpha_przedmiotow)

	draw_sprite_ext(s_map_item_selectorus,0,pozx-300,pozy+60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120,pozy+60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*2,pozy+60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*3,pozy+60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*4,pozy+60,1,1,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_item_selectorus,0,pozx-300+120*5,pozy+60,1,1,0,c_white,1/alpha_przedmiotow)

	// efektery
	draw_sprite_ext(s_bonus_efekter,0,pozx-300,pozy-60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120,pozy-60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*2,pozy-60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*3,pozy-60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*4,pozy-60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*5,pozy-60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)

	draw_sprite_ext(s_map_glowwer_1,0,pozx-300,pozy-60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120,pozy-60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*2,pozy-60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*3,pozy-60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*4,pozy-60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*5,pozy-60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)

	draw_sprite_ext(s_bonus_efekter,0,pozx-300,pozy+60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120,pozy+60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*2,pozy+60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*3,pozy+60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*4,pozy+60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_efekter,0,pozx-300+120*5,pozy+60,1,1,animowanie/10,c_white,0.5/alpha_przedmiotow)

	draw_sprite_ext(s_map_glowwer_1,0,pozx-300,pozy+60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120,pozy+60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*2,pozy+60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*3,pozy+60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*4,pozy+60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)
	draw_sprite_ext(s_map_glowwer_1,0,pozx-300+120*5,pozy+60,1+0.01*(sin(degtorad(animowanie))),1+0.01*(sin(degtorad(animowanie))),animowanie/10,c_white,0.5/alpha_przedmiotow)







	//1
	draw_sprite_ext(global.gfx_bonus_1,0,pozx-300,pozy-60,1+0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[0]))/2,1-0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[0]))/2,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(global.gfx_bonus_2,0,pozx-300,pozy-50,1+0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[0]))/2,1-0.1*(sin(degtorad(animowanie)))-abs(sin(degtorad(oczkowanie2)))+sin(degtorad(wybrano_przedmiot[0]))/2,0,c_white,1/alpha_przedmiotow)
	//2
	draw_sprite_ext(s_bonus_kwiatek_1,0,pozx-300+120,pozy-35,1+0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[1]))/2,1-0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[1]))/2,0,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_kwiatek_2,0,pozx-300+120,pozy-65,1+0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[1]))/2,1-0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[1]))/2,0,c_white,1/alpha_przedmiotow)
	//3
	draw_sprite_ext(s_bonus_listek,0,pozx-300+120*2+sin(degtorad(animowanie/2.5))*2,pozy-60,1+0.02*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[2]))/2,1-0.02*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[2]))/2,-obrotnis+cos(degtorad(animer))*40,c_white,1/alpha_przedmiotow)
	//rzodkiewnik
	draw_sprite_ext(s_bonus_rzodkiew,0,pozx-300+120*3,pozy-35,1+0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[3]))/2,1-0.1*(sin(degtorad(animowanie)))+sin(degtorad(wybrano_przedmiot[3]))/2,0,c_white,1/alpha_przedmiotow)
	//boomer
	draw_sprite_ext(s_boomer_salad_2,0,pozx-300+120*4,pozy-25,0.6+0.1*(sin(degtorad(animowanie+123)))+sin(degtorad(wybrano_przedmiot[4]))/2,0.6-0.1*(sin(degtorad(animowanie+123)))+sin(degtorad(wybrano_przedmiot[4]))/2,0,c_white,1/alpha_przedmiotow)
	//hammer
	draw_sprite_ext(s_bonus_mlotker,0,pozx-300+120*5,pozy-35,1+0.1*(sin(degtorad(animowanie+200))+sin(degtorad(wybrano_przedmiot[5]))/2),1-0.1*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[5]))/2,0,c_white,1/alpha_przedmiotow)

	// DRUGI RZAD
	//ducher
	draw_sprite_ext(s_duch_grzyb,0,pozx-300,pozy-35+120,1+0.1*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[6]))/2,1-0.1*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[6]))/2,0,c_white,1/alpha_przedmiotow)
	//bomber
	draw_sprite_ext(s_bomber_bonus,0,pozx-300+120,pozy-55+120,1+0.01*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[7]))/2,1-0.01*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[7]))/2,kreciolek+20,c_white,1/alpha_przedmiotow)
	//tanooki suit
	draw_sprite_ext(s_tanooki_suit,0,pozx-300+120*2,pozy-35+120,1+0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[8]))/2,1-0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[8]))/2,kreciolek/2+5,c_white,1/alpha_przedmiotow)
	//tanooki suit
	draw_sprite_ext(s_bonus_flaying_mushroom_1,0,pozx-300+120*3,pozy-55+120,1+0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[9]))/2,1-0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[9]))/2,kreciolek/2+5,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_bonus_flaying_mushroom_2,0,pozx-300+120*3,pozy-80+120,0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(migacz_przyciskow*222))+sin(degtorad(wybrano_przedmiot[9]))/2,1-0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[9]))/2,kreciolek/2+5+sin(degtorad(migacz_przyciskow*444))*2,c_white,1/alpha_przedmiotow)
	//tanooki suit
	draw_sprite_ext(global.power_start_gfx[round(animerx)],0,pozx-300+120*4,20+pozy-35+95,1+0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[10]))/2,1-0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[10]))/2,kreciolek/2+5,c_white,1/alpha_przedmiotow)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(global.power_start_gfx[round(animerx)],0,pozx-300+120*4,30+pozy-35+95,1.5+0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[10]))/2,1.5-0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[10]))/2,kreciolek/2+5,c_white,1/alpha_przedmiotow/4)
	draw_set_blend_mode(bm_normal)
	draw_sprite_ext(s_mario_clock,0,pozx-300+120*5,pozy-35+95,1+0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[11]))/2,1-0.05*(sin(degtorad(animowanie+200)))+sin(degtorad(wybrano_przedmiot[11]))/2,kreciolek/2+5,c_white,1/alpha_przedmiotow)
	animerx+=0.1
	if animerx>6 {animerx=0}

	// UNKNOWN KEYS
	/*
	if global.unknown_key_1=0{
	draw_sprite_ext(s_map_unknown_key,0,pozx-200,pozy+170,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_2=0{
	draw_sprite_ext(s_map_unknown_key,0,pozx-200+80,pozy+170,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_3=0{
	draw_sprite_ext(s_map_unknown_key,0,pozx-200+160,pozy+170,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_4=0{
	draw_sprite_ext(s_map_unknown_key,0,pozx-200+240,pozy+170,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_5=0{
	draw_sprite_ext(s_map_unknown_key,0,pozx-200+320,pozy+170,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_6=0{
	draw_sprite_ext(s_map_unknown_key,0,pozx-200+400,pozy+170,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	*/

	global.unknown_key_1=1
	global.unknown_key_2=1
	global.unknown_key_3=1
	global.unknown_key_4=1
	global.unknown_key_5=1
	global.unknown_key_6=1


	/*
	if global.unknown_key_1<>0{
	draw_sprite_ext(s_map_key_1,0,pozx-200,pozy+190,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_2<>0{
	draw_sprite_ext(s_map_key_2,0,pozx-200+80,pozy+190,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_3<>0{
	draw_sprite_ext(s_map_key_3,0,pozx-200+160,pozy+190,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_4<>0{
	draw_sprite_ext(s_map_key_4,0,pozx-200+240,pozy+190,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_5<>0{
	draw_sprite_ext(s_map_key_5,0,pozx-200+320,pozy+190,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	if global.unknown_key_6<>0{
	draw_sprite_ext(s_map_key_6,0,pozx-200+400,pozy+190,1+0.05*(sin(degtorad(animowanie+200))),1-0.05*(sin(degtorad(animowanie+200))),kreciolek/2+5,c_white,1/alpha_przedmiotow)}
	*/








	// napisy przedmiotow

	draw_set_font(global.map_fonts_1)
	draw_set_color(c_white)
	draw_set_alpha(1/alpha_przedmiotow)
	draw_text_transformed(pozx-300,pozy-30,string_hash_to_newline("x"+string(global.map_item_grzyby)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120,pozy-30,string_hash_to_newline("x"+string(global.map_item_kwiatki)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*2,pozy-30,string_hash_to_newline("x"+string(global.map_item_listek)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*3,pozy-30,string_hash_to_newline("x"+string(global.map_item_burak)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*4,pozy-30,string_hash_to_newline("x"+string(global.map_item_boomer)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*5,pozy-30,string_hash_to_newline("x"+string(global.map_item_hammer)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)

	draw_text_transformed(pozx-300,pozy-30+120,string_hash_to_newline("x"+string(global.map_item_duch)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120,pozy-30+120,string_hash_to_newline("x"+string(global.map_item_bomber)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*2,pozy-30+120,string_hash_to_newline("x"+string(global.map_item_tanoki)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*3,pozy-30+120,string_hash_to_newline("x"+string(global.map_item_latacz)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*4,pozy-30+120,string_hash_to_newline("x"+string(global.map_item_gwiazdka)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx-300+120*5,pozy-30+120,string_hash_to_newline("x"+string(global.map_item_budzik)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)




	// selector

	//wyswietl posiadane monety czerwone i zwykle

	draw_sprite_ext(s_map_gold_coin,0,pozx+300,pozy-250,1+sin(degtorad(animowanie))/50,1-sin(degtorad(animowanie))/50,sin(animowanie/166)*20,c_white,1/alpha_przedmiotow)
	draw_sprite_ext(s_map_red_coin,0,pozx+300,pozy-180,1+sin(degtorad(animowanie))/50,1-sin(degtorad(animowanie))/50,sin(animowanie/171+2)*20,c_white,1/alpha_przedmiotow)
	draw_set_font(global.map_fonts_1)
	draw_set_color(c_white)
	draw_set_alpha(1/alpha_przedmiotow)

	draw_text_transformed(pozx+300,pozy-250,string_hash_to_newline("x"+string(global.coins)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)
	draw_text_transformed(pozx+300,pozy-180,string_hash_to_newline("x"+string(global.coins_red)),1+sin(degtorad(animowanie+200))/20,1+sin(degtorad(animowanie+200))/20,0)



	draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_map_gold_coin,0,pozx+300,pozy-250,1+sin(degtorad(animowanie))/50,1-sin(degtorad(animowanie))/50,sin(animowanie/166)*20,c_white,(sin(animowanie/100)/10)/alpha_przedmiotow)
	draw_sprite_ext(s_map_red_coin,0,pozx+300,pozy-180,1+sin(degtorad(animowanie))/50,1-sin(degtorad(animowanie))/50,sin(animowanie/171+2)*20,c_white,(sin(animowanie/110)/10)/alpha_przedmiotow)
	draw_set_blend_mode(bm_normal)
	// wyswietl i wybieraj przedmioty        
        
	        if keyboard_check(global.ster_left) && klickersus=0 && global.game_over=0 && wybrano_przedmiott=0 && global.map_completed_sequence=0 {selecting-=1;klickersus=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	        if keyboard_check(global.ster_right) && klickersus=0 && global.game_over=0 && wybrano_przedmiott=0 && global.map_completed_sequence=0 {selecting+=1;klickersus=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	        if keyboard_check(global.ster_up) && klickersus=0 && global.game_over=0 && wybrano_przedmiott=0 && global.map_completed_sequence=0{selecting-=6;klickersus=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	        if keyboard_check(global.ster_down) && klickersus=0 && global.game_over=0 && wybrano_przedmiott=0  && global.map_completed_sequence=0 {selecting+=6;klickersus=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
        
        
	        if selecting>=0 && selecting<=5 {klik_dodajnik_x=selecting*120;klik_dodajnik_y=0}
	        if selecting>=6 && selecting<=11 {klik_dodajnik_x=(selecting-6)*120;klik_dodajnik_y=120}
        
	        if selecting=12 {selecting=0}
	        if selecting=-1 {selecting=11}
        
	        if selecting<0 {selecting+=12}
	        if selecting>11 {selecting-=12}
        
        
        
	if global.game_over=0{
	    draw_sprite_ext(s_map_selector,0,pozx-300+sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60-sin(degtorad(animowanie))*5,1,-1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    draw_sprite_ext(s_map_selector,0,pozx-300+sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60+sin(degtorad(animowanie))*5,1,1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    draw_sprite_ext(s_map_selector,0,pozx-300-sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60+sin(degtorad(animowanie))*5,-1,1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    draw_sprite_ext(s_map_selector,0,pozx-300-sin(degtorad(animowanie))*5+klik_dodajnik_x,pozy+klik_dodajnik_y-60-sin(degtorad(animowanie))*5,-1,-1,0,c_white,(sin(degtorad(animowanie))/3+1/2)/alpha_przedmiotow)
	    }

	    kreciolek-=sin(degtorad(migacz_przyciskow*20))/2
	    if obrotnis<90 {obrotnis+=2}
	    animer+=2.5
	    animowanie+=5
	    if oczkowanie<1010 {oczkowanie=random(1000)}
	    if oczkowanie>=990 && oczkowanie<=1000 {oczkowanie=10000}
	    if oczkowanie>=10000 {oczkowanie+=1;oczkowanie2+=10}
	    if oczkowanie2>360 {oczkowanie2=0;oczkowanie=0}

	}












	// ANIMOWANIE WYBRANEGO PRZEDMIOTU

	if gracz_wylacza_menu=1 {alpha_przedmiotow+=0.15+alpha_przedmiotow/10}
	if gracz_wylacza_menu=1 && alpha_przedmiotow>30 {alpha_przedmiotow=0;gracz_wylacza_menu=0;item_selecting=0}




	kefcio=0
	for (i=0;i<12;i+=1)
	    {
	    if wybrano_przedmiot[i]>0 {wybrano_przedmiot[i]+=10;alpha_przedmiotow+=0.15}
	    if wybrano_przedmiot[i]>1000 {wybrano_przedmiot[i]=0;wybrano_przedmiot=0;}
	    if wybrano_przedmiot[i]<=0 {kefcio+=1}
	    if kefcio>=12 && wybrano_przedmiott=1 {wybrano_przedmiott=0;item_selecting=0;}
	    }

	    if stworz_efekt_uzycia=1
	    {
	    efektuj_uzycie_przedmiotow=20
	    o_map_player_1.uzyto_bonusu_1=1
	    }
	if  efektuj_uzycie_przedmiotow>0 {efektuj_uzycie_przedmiotow-=1
	part_system_depth(global.particle_map_overscreen,o_map_player_1.depth-99) 

	    if random(2)>1 {part_particles_create(global.particle_sys_1,o_map_player_1.x+random(32)-random(32),o_map_player_1.y+random(32)-random(32),global.part_effect_water_sparkle,1)}
	    part_particles_create(global.particle_map_overscreen,o_map_player_1.x+random(32)-random(32),o_map_player_1.y+random(32)-random(32),global.part_effect_smoker_mapmini,1)
	    part_particles_create(global.particle_sys_1,o_map_player_1.x+random(32)-random(32),o_map_player_1.y+random(32)-random(32),global.part_effect_water_sparkle,1)
	    part_particles_create(global.particle_sys_1,o_map_player_1.x+random(32)-random(32),o_map_player_1.y+random(32)-random(32),global.part_effect_map_watering_2,1)
    
	    part_system_depth(global.particle_map_za_mario,o_map_player_1.depth) 
	    if random(2)>1.4 {part_particles_create(global.particle_map_za_mario,o_map_player_1.x+random(32)-random(32),o_map_player_1.y+random(32)-random(32),global.part_effect_map_podswietlanie,1)}
	    }



	// regulacja ALPHA przy pojawianiu sie planszy wyboru przedmiotow
	if alpha_przedmiotow>1 && wybrano_przedmiott=0 && gracz_wylacza_menu=0 {alpha_przedmiotow=alpha_przedmiotow/1.1}
	if alpha_przedmiotow<1 {alpha_przedmiotow=1}



	// LAST KEY TEST
	//draw_text(view_xview[0]+100,view_yview[0]+100,string(keyboard_lastkey))

	if item_selecting<>10 && alpha_wyboru_mapy>0 {alpha_wyboru_mapy-=0.05}
	if item_selecting<>10 && alpha_wyboru_mapy<=0 && item_selecting<>1 {gracz_wylacza_menu=0}
	if item_selecting=10 || alpha_wyboru_mapy>0
	    {
	    if item_selecting=10 && alpha_wyboru_mapy<1 {alpha_wyboru_mapy+=0.05}
	    draw_sprite_ext(s_map_hud_element,0,
	__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30,
	__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,
	1+sin(migacz_przyciskow/2)/150,1-sin(migacz_przyciskow/2)/150,0,c_white,alpha_wyboru_mapy)
	    }
    
	if wybrana_mapka>-gracz_wybral_mapke {wybrana_mapka-=0.05}
	if wybrana_mapka<-gracz_wybral_mapke {wybrana_mapka+=0.05}

	if o_map_sterownik.wybral_mape_1=0 && global.map_completed_sequence=0 {
	if keyboard_check(global.ster_left) && klickersus=0 && gracz_wybral_mapke>0 && item_selecting=10{klickersus=1;gracz_wybral_mapke-=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	if keyboard_check(global.ster_right) && klickersus=0 && gracz_wybral_mapke<global.map_numbers-1 && item_selecting=10 {klickersus=1;gracz_wybral_mapke+=1;SXMS_SFX_PlayExt(140,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
	}

	if item_selecting=10 {
	draw_sprite_ext(s_map_napis_1,0,__view_get( e__VW.XView, 0 )+650*testvar,__view_get( e__VW.YView, 0 )+540*testvar,-1*testvar,1*testvar,0,c_white,0.7/boczki_przyciemniaj_hud+sin(migacz_przyciskow)/5/boczki_przyciemniaj_hud)
	    draw_sprite_ext(s_map_napis_7,0,__view_get( e__VW.XView, 0 )+740*testvar,__view_get( e__VW.YView, 0 )+540*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,1*testvar+sin(migacz_przyciskow)/10*testvar,0,c_white,1/boczki_przyciemniaj_hud)
	    draw_set_alpha(1)
	    draw_set_font(global.map_fonts_1)
	    draw_set_color(c_white)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+610,__view_get( e__VW.YView, 0 )+520*testvar,string_hash_to_newline("EXIT"),1,1,0)


	// wybieranie mapy ( POWROT NA INNA MAPE )

	if keyboard_check(vk_enter) && global.map_completed_sequence=0
	    {
	    if gracz_wybral_mapke=0 && global.map_completed[0]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=0;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=1 && global.map_completed[1]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=1;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=2 && global.map_completed[2]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=2;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=3 && global.map_completed[3]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=3;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=4 && global.map_completed[4]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=4;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=5 && global.map_completed[5]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=5;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=6 && global.map_completed[6]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=6;o_map_sterownik.wybral_mape_1=1}
	    if gracz_wybral_mapke=7 && global.map_completed[7]>0 && gracz_wybral_mapke<>global.map_number {o_map_sterownik.zmien_mape=7;o_map_sterownik.wybral_mape_1=1}
    
    
    
    
	    }



	for (i=0;i<global.map_numbers;i+=1)
	    {
    
	    if point_distance(global.ekran_srodek_x,global.ekran_srodek_y,global.ekran_srodek_x+i*220+wybrana_mapka*222,global.ekran_srodek_y)<=global.odleglosc_ekranu {
	    if i<=-wybrana_mapka {
	    if global.map_completed[i]<>0
	        {
	        draw_sprite_ext(s_map_selecting_1,i,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,1,1,0,c_white,(i+1)/((-wybrana_mapka+1)))
	        draw_set_font(global.map_fonts_1)
	        draw_set_color(c_white)
	        draw_set_halign(fa_center)
	        draw_set_valign(fa_middle)
	        draw_set_alpha((i+1)/((-wybrana_mapka+1)))
	        draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,+120+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,string_hash_to_newline("MAP "+string(i+1)),1*testvar,1*testvar,0)
	        draw_set_halign(fa_left)
	        draw_set_valign(fa_top)
        
	        }
	    if global.map_completed[i]=0
	        {
	        draw_sprite_ext(s_map_selecting_u,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,1,1,0,c_white,(i+1)/((-wybrana_mapka+1)))
	        draw_set_font(global.map_fonts_1)
	        draw_set_color(c_white)
	        draw_set_halign(fa_center)
	        draw_set_valign(fa_middle)
	        draw_set_alpha((i+1)/((-wybrana_mapka+1)))
	        draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,+120+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,string_hash_to_newline("MAP "+string(i+1)),1*testvar,1*testvar,0)
	        draw_set_halign(fa_left)
	        draw_set_valign(fa_top)
        
	        }}
	    if i>-wybrana_mapka {
	    if global.map_completed[i]<>0 
	        {
	        draw_sprite_ext(s_map_selecting_1,i,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,1,1,0,c_white,(-wybrana_mapka+1)/(i+1))
	        draw_set_font(global.map_fonts_1)
	        draw_set_color(c_white)
	        draw_set_halign(fa_center)
	        draw_set_valign(fa_middle)
	        draw_set_alpha((-wybrana_mapka+1)/(i+1))
	        draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,+120+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,string_hash_to_newline("MAP "+string(i+1)),1*testvar,1*testvar,0)
	        draw_set_halign(fa_left)
	        draw_set_valign(fa_top)
	        }
	    if global.map_completed[i]=0 
	        {
	        draw_sprite_ext(s_map_selecting_u,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,1,1,0,c_white,(-wybrana_mapka+1)/(i+1))
	        draw_set_font(global.map_fonts_1)
	        draw_set_color(c_white)
	        draw_set_halign(fa_center)
	        draw_set_valign(fa_middle)
	        draw_set_alpha((-wybrana_mapka+1)/(i+1))
	        draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(0))*30+i*220+wybrana_mapka*222,+120+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(0))*30,string_hash_to_newline("MAP "+string(i+1)),1*testvar,1*testvar,0)
	        draw_set_halign(fa_left)
	        draw_set_valign(fa_top)
	        draw_set_alpha(1)
	        }}
	    }}}





	// MAP COMPLETED!!!!
	//if keyboard_check(vk_backspace) {global.map_completed_sequence=100}
	if global.map_completed_sequence=100 {
	global.map_completed_sequence=101
	seq_przeszedl_mape=1
	global.map_completed[global.map_number]=1 
	global.map_music=100;
	o_map_music.play=0
	}
	if seq_przeszedl_mape=1
	    {
	    draw_sprite_ext(s_map_efekter_1,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow,1,1,seq_stream*5,c_white,0.5-seq_przeszedl_timer)
	    draw_sprite_ext(s_map_efekter_1,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow,0.5,0.5,-seq_stream*2,c_white,1-seq_przeszedl_timer)
    
	    draw_sprite_ext(s_map_efekter_1,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow-150,0.85+sin(seq_stream*2)/10,0.85+sin(seq_stream*2)/10,-sin(seq_stream)*20+seq_stream*20,c_white,1-seq_przeszedl_timer)
	    draw_sprite_ext(s_map_twarz_przechodzenie,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow-150,0.85+sin(seq_stream*2)/10,0.85+sin(seq_stream*2)/10,-sin(seq_stream/5)*20,c_white,1)
	    draw_set_font(global.map_fonts_1)
	    draw_set_color(c_white)
	    draw_set_halign(fa_center)
	    draw_set_valign(fa_middle)
	    draw_set_alpha(1-seq_przeszedl_timer/2)
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow,string_hash_to_newline("MAP COMPLETED!"),1*testvar+sin(seq_stream/2)/10,1*testvar+sin(seq_stream/2)/5,sin(seq_stream)*2+seq_oddalacz_napisow) 
	    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow-26,string_hash_to_newline("WELL DONE"),1*testvar+sin(seq_stream/2)/10,1*testvar+sin(seq_stream/2)/5,sin(seq_stream)*2+seq_oddalacz_napisow) 
	    draw_set_alpha(1)
	    seq_oddalacz_napisow=seq_oddalacz_napisow/1.1
	    seq_stream+=0.1
	    seq_przeszedl_add+=1
	    if seq_przeszedl_add>250{
	    seq_przeszedl_timer+=0.01}
	    if seq_przeszedl_add>400
	        {
	        seq_przeszedl_mape=2
	        seq_przeszedl_add=0
	        SXMS_SFX_PlayExt(19,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
	            SXMS_SFX_PlayExt(131+round(random(2)),(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
        
	            part_system_depth(global.particle_map_overscreen,-99999999) 
	            animacja_wchodzenia_do_etapu=1
	            podskocz_po_gameover=1
	            podskocznix=-10
	            animacja=7
	            part_particles_create(global.particle_map_overscreen,x,y,global.part_map_chmurker,3);
        
        
	        }
	    }
	    if seq_przeszedl_mape=2
	        {
        
	        seq_stream+=0.1
	        seq_przeszedl_add+=0.01
	        draw_set_color(c_black)
	        draw_set_alpha(seq_przeszedl_add)
	        draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
	        draw_sprite_ext(s_map_twarz_przechodzenie,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow-150,0.85+sin(seq_stream*2)/10,0.85+sin(seq_stream*2)/10,-sin(seq_stream/5)*20,c_white,1)
	        draw_set_color(c_white)
	        if seq_przeszedl_add>=1 {seq_przeszedl_mape=3;seq_przeszedl_add=0}
	        }
	    if seq_przeszedl_mape=3
	        { 
	        SXMS_SFX_PlayExt(25,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
	        seq_przeszedl_mape=4
	        }
	    if seq_przeszedl_mape=4
	        { 
	        draw_set_color(c_black)
	        draw_set_alpha(1)
	        draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
	        draw_sprite_ext(s_map_twarz_przechodzenie,1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-seq_oddalacz_napisow-150,0.85+sin(seq_stream*2)/10,0.85+sin(seq_stream*2)/10,-sin(seq_stream/5)*20,c_white,1-seq_przeszedl_add)
	        seq_przeszedl_add+=0.01
        
	        if seq_przeszedl_add>=1
	            {
	            global.map_completed_sequence=0
	            if room=room_map_1 {room_goto(room_map_2);global.map_completed[0]=1;global.map_completed[1]=1}
	            if room=room_map_2 {room_goto(room_map_3);global.map_completed[1]=1;global.map_completed[2]=1}
	            if room=room_map_3 {room_goto(room_map_4);global.map_completed[2]=1;global.map_completed[3]=1}
	            if room=room_map_4 {room_goto(room_map_5);global.map_completed[3]=1;global.map_completed[4]=1}
	            if room=room_map_5 {room_goto(room_map_6);global.map_completed[4]=1;global.map_completed[5]=1}
	            if room=room_map_6 {room_goto(room_map_7);global.map_completed[5]=1;global.map_completed[6]=1}
	            if room=room_map_7 {room_goto(room_map_8);global.map_completed[6]=1;global.map_completed[7]=1}
	            if room=room_map_8 {room_goto(room_end_map)}
            
            
	            }

	        }
    
	    /*
    
	    s_map_efekter_1
	/*

	seq_przeszedl_mape=0
	seq_przeszedl_timer=0
	seq_przeszedl_add=0




	global.map_numbers=7
	global.map_completed[0]=1 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[1]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[2]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[3]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[4]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[5]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[6]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[7]=0 // ktore mapy sa pokonane i gracz moze wybierac


/* end script_map_control */
}
