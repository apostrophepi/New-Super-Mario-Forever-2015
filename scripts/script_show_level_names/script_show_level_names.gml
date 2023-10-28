function script_show_level_names() {
	kolos=0
	with(o_map_player_1)
	    {
	    if place_meeting(x,y,o_button_map_1) && idzie=0
	        {
	        kokox=instance_place(x,y,o_button_map_1)
	        o_map_sterownik.kolos=kokox
	        }
	    }
    
    
    
    
	  if kolos=0 {napis_efektor_1=0;napis_efektor_2=4;level_napis_efe=0;napis_efektor_3=100}
	// NAPIS ETAPU
	if kolos<>0 {
	if kolos.goto_level<>0{
	draw_sprite_ext(s_map_efekter_1,0,+50+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)-50,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,0.8,0.8,napis_efektor_1/200,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	draw_sprite_ext(s_map_napis_1,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1000/max(1,level_napis_efe),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,1,1,0,c_white,level_napis_efe/200/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_napis_1,0,20+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1000/max(1,level_napis_efe*10)-100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1,1,0,c_white,level_napis_efe/300/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_napis_1,0,-20+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,-1,1,0,c_white,level_napis_efe/300/boczki_przyciemniaj_hud)

	// EFEKT NAPISU 1 - GRASSLAND
	if kolos.level_efekt_napisu=1{
	draw_sprite_ext(s_map_krzak_1,0,-20+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1+123))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+123))*napis_efektor_2,0,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_drzewker_1,0,-220+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1))*napis_efektor_2,1-sin(degtorad(napis_efektor_1))*napis_efektor_2,33,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_drzewker_1,0,-200+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1.2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	draw_sprite_ext(s_map_gold_coin,0,-50+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-280,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_sparkling,0,+50+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_miniblocznikx_1,0,-150+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,+20+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-290,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


	}
	// EFEKT NAPISU 1 - GRASSLAND 2
	if kolos.level_efekt_napisu=2{
	draw_sprite_ext(s_map_krzak_1,0,-20+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1+123))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+123))*napis_efektor_2,0,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_drzewker_1,0,80+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1))*napis_efektor_2,1-sin(degtorad(napis_efektor_1))*napis_efektor_2,33,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_drzewker_1,0,70+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,+20+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1.2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	draw_sprite_ext(s_map_gold_coin,0,-180+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-260,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22+360+sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_gold_coin,0,-150+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-280,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22-sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_sparkling,0,+50+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	draw_sprite_ext(s_map_miniblocznikx_1,0,-70+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,+20+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


	}

	// EFEKT NAPISU 1 - GRASSLAND 3
	if kolos.level_efekt_napisu=3{
	draw_sprite_ext(s_map_krzak_1,0,-20+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1+123))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+123))*napis_efektor_2,0,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_drzewker_1,0,-80+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1))*napis_efektor_2,1-sin(degtorad(napis_efektor_1))*napis_efektor_2,33,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_drzewker_1,0,-70+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1.2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


	draw_sprite_ext(s_map_gold_coin,0,80+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-260,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22+360+sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_gold_coin,0,50+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-280,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22-sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_gold_coin,0,20+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-280,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22-sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


	draw_sprite_ext(s_map_sparkling,0,+50+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	draw_sprite_ext(s_map_miniblocznikx_1,0,-170+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,+20+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
	draw_sprite_ext(s_map_miniblocznikx_1,0,-200+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,+20+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	draw_sprite_ext(s_map_miniblocznikx_3,0,-70+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,-20+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

	}

	// EFEKT NAPISU 1 - CASTLE
	if kolos.level_efekt_napisu=4{


	draw_sprite_ext(s_map_mini_castle_1,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


	    draw_sprite_ext(global.gfx_padaboo,0,-170+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,napis_efektor_3*2+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250+sin(napis_efektor_1)*2,1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,360+sin(napis_efektor_1)*3+33,c_white,1)
	    draw_sprite_ext(global.gfx_padaboo,0,-30+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,napis_efektor_3*2+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250+sin(napis_efektor_1)*2,1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,360+sin(napis_efektor_1)*3-33,c_white,1)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(global.gfx_padaboo,0,-170+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,napis_efektor_3*2+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250+sin(napis_efektor_1)*2,1.1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,1.1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,360+sin(napis_efektor_1)*3+33,c_white,sin(napis_efektor_1)/2)
	    draw_sprite_ext(global.gfx_padaboo,0,-30+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-1000/max(1,level_napis_efe*10)+100,napis_efektor_3*2+__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250+sin(napis_efektor_1)*2,1.1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,1.1/2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2/10,360+sin(napis_efektor_1)*3-33,c_white,sin(napis_efektor_1)/2)
    
	    draw_set_blend_mode(bm_normal)
    
	    if napis_efektor_3>0 {napis_efektor_3=napis_efektor_3/1.1}
	}




	napis_efektor_1+=25
	napis_efektor_2=napis_efektor_2/1.1


	draw_set_font(global.map_fonts_1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_alpha((level_napis_efe/100)/boczki_przyciemniaj_hud)
	draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-250,string_hash_to_newline(kolos.level_name),level_napis_efe/100,1*testvar,0)
	if global.english_or_polish=1 {
	draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,string_hash_to_newline(kolos.levek_full_name2),level_napis_efe/100,1*testvar,0)}
	if global.english_or_polish=0 {
	draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-200,string_hash_to_newline(kolos.levek_full_name),level_napis_efe/100,1*testvar,0)}
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	if level_napis_efe<100 {level_napis_efe+=5}

	}





	}






	/*

	level_napis_efe=0
	s_cien_budynkowy


/* end script_show_level_names */
}
