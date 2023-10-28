next+=1

if next=350
    {
    instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)
    
    
    
    
    }
if next>450
    {
    SXMS_C_Loop(0) 
    if global.map_number=0 {room_goto(room_map_2)}
    if global.map_number=1 {room_goto(room_map_3)}
    if global.map_number=2 {room_goto(room_map_4)}
    if global.map_number=3 {room_goto(room_map_5)}
    if global.map_number=4 {room_goto(room_map_6)}
    if global.map_number=5 {room_goto(room_map_7)}
    if global.map_number=6 {room_goto(room_map_8)}
    }

if music_trigger=0
    {music_trigger=1
      SXMS_C_Stop()
  SXMS_WAP_Stop()
  SXMS_C_Play("./data/m/level_map_completed.mp3",0,0,0,0,0,0,0,0,0)
  }
// EFEKT KRECONY

draw_sprite_ext(global.big_glow_sloneczny,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,3+sin(degtorad(stream))/5*alphar,3+sin(degtorad(stream))/5*alphar,image_angle,c_white,alphar)
draw_sprite_ext(global.big_glow_sloneczny,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,2+sin(degtorad(stream))/10*alphar,2+sin(degtorad(stream))/10*alphar,-image_angle,c_white,alphar)
draw_sprite_ext(global.big_glow_sloneczny,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,1+sin(degtorad(stream))/5*alphar,1+sin(degtorad(stream))/5*alphar,image_angle*2,c_white,alphar*2)

/*

draw_sprite_ext(s_hill_1,0,view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,min(0.5,efekciar/20)-sin(degtorad(stream*2))/30,min(0.5,efekciar/20)+sin(degtorad(stream*2))/30,-efekciar/3,c_white,1)
draw_sprite_ext(s_hill_2,0,view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,min(0.5,efekciar/20)-sin(degtorad(stream*2))/30,min(0.5,efekciar/20)+sin(degtorad(stream*2))/30,efekciar/3,c_white,1)
draw_sprite_ext(s_hill_2,0,view_xview[0]+view_wview[0]/2-efekciar*2,view_yview[0]+view_hview[0]/2,min(0.25,efekciar/20)-sin(degtorad(stream*2))/30,min(0.25,efekciar/20)+sin(degtorad(stream*2))/30,efekciar/2,c_white,1)


draw_sprite_ext(s_domek_grzybkowy_1,0,view_xview[0]+view_wview[0]/2-efekciar,view_yview[0]+view_hview[0]/2,min(1,efekciar/20)-sin(degtorad(stream))/10,min(1,efekciar/20)+sin(degtorad(stream))/10,efekciar/3,c_white,1)
draw_sprite_ext(s_domek_grzybkowy_1,0,view_xview[0]+view_wview[0]/2+efekciar/2,view_yview[0]+view_hview[0]/2,min(0.5,efekciar/20)-sin(degtorad(stream))/10,min(0.5,efekciar/20)+sin(degtorad(stream))/10,-efekciar/1.3,c_white,1)

// DODATKI
draw_sprite_ext(s_map_krzak_1,0,-20+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-00,1+sin(degtorad(napis_efektor_1+123))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+123))*napis_efektor_2,0,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
draw_sprite_ext(s_map_drzewker_1,0,-80+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-00,1+sin(degtorad(napis_efektor_1))*napis_efektor_2,1-sin(degtorad(napis_efektor_1))*napis_efektor_2,33,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
draw_sprite_ext(s_map_drzewker_1,0,-70+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-00,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1.2-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


draw_sprite_ext(s_map_gold_coin,0,80+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-60*oddalaj_knypki,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22+360+sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
draw_sprite_ext(s_map_gold_coin,0,50+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-80*oddalaj_knypki,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22-sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
draw_sprite_ext(s_map_gold_coin,0,20+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-80*oddalaj_knypki,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22-sin(degtorad(napis_efektor_1/10))*10,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)


draw_sprite_ext(s_map_sparkling,0,+50+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,view_yview[0]+view_hview[0]/2-50*oddalaj_knypki,0.5+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,0.5-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

draw_sprite_ext(s_map_miniblocznikx_1,0,-170+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,+20+view_yview[0]+view_hview[0]/2-50*oddalaj_knypki,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,-22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)
draw_sprite_ext(s_map_miniblocznikx_1,0,-200+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,+20+view_yview[0]+view_hview[0]/2-50*oddalaj_knypki,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

draw_sprite_ext(s_map_miniblocznikx_3,0,-70+view_xview[0]+view_wview[0]/2-1000/max(1,level_napis_efe*10)+100*oddalaj_knypki,-20+view_yview[0]+view_hview[0]/2-50*oddalaj_knypki,1+sin(degtorad(napis_efektor_1+222))*napis_efektor_2,1-sin(degtorad(napis_efektor_1+222))*napis_efektor_2,22,c_white,level_napis_efe/100/boczki_przyciemniaj_hud)

*/
napis_efektor_1+=25
napis_efektor_2=napis_efektor_2/1.1
if level_napis_efe<100 {level_napis_efe+=5}
oddalaj_knypki+=0.05+oddalaj_knypki/dzielniuj_knypki
if oddalaj_knypki>1 {oddalaj_knypki=1}
dzielniuj_knypki+=1


// KORONA
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_crown_map_completed,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-100-addered1,2+sin(degtorad(napis_efektor_1/5))/5,2+sin(degtorad(napis_efektor_1/5))/5,sin(degtorad(napis_efektor_1/20))*30,c_white,sin(degtorad(napis_efektor_1/5))/10+0.25)
draw_set_blend_mode(bm_normal)

draw_sprite_ext(s_crown_map_completed,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-100-addered1,1+sin(degtorad(napis_efektor_1/5))/5,1+sin(degtorad(napis_efektor_1/5))/5,sin(degtorad(napis_efektor_1/10))*30,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_crown_map_completed,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-100-addered1,1+sin(degtorad(napis_efektor_1/5))/5,1+sin(degtorad(napis_efektor_1/5))/5,sin(degtorad(napis_efektor_1/10))*30+5,c_white,sin(degtorad(napis_efektor_1/5))/2+0.25)
draw_set_blend_mode(bm_normal)




// OBLICZAJ DUZE RZECZY
if efekciar<45 {efekciar+=1}
image_angle+=0.5
if alphar<1 {alphar+=0.025}
stream+=2

draw_set_font(global.map_fonts_1)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+addered1-25,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(napis[0]),0,0,1,1,0)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+25+addered1,string_hash_to_newline(napis[1]),0,0,1,1,0)


timer+=1
if timer>=30 {addered1=addered1/1.1}
if timer>=50 {addered2=addered2/1.1}



draw_set_halign(fa_left)
draw_set_valign(fa_top)

/* */
/*  */
