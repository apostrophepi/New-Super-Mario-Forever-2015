

if stworz_baze=0
    {
    stworz_baze=1;
    
    if rodzaj=10
    {
    licz=0
    for(i=0;i<instance_number(all);i+=1)
        {
        iii=instance_id_get( i )
        if iii.object_index=o_button_map_1 {if iii.hidden_for_ship=0 {baza_etapow[licz]=iii.id;licz+=1}}
        ilosc_etapow=licz
        }
    }
    }

depth=-y-50
ukierunkuj=0
if idzie=3 {ukierunkuj=1}
if idzie=1 {ukierunkuj=-1}

// killing create
if killed=1
    {
    killed=2
    koko=instance_create(x,y,o_map_killed_przeciwnik)
    koko.rodzaj=rodzaj
    }
//if killed<>0 {x=o_map_player_1.x-300;y=o_map_player_1.y-300+kefcio;idzie=0}   
   if killed=2 {x=123123;y=123123;idzie=0}  
// jumping podczas ataku

if is_jumping=1
    {
    jumping+=0.5
    jumping_height+=jumping
    if jumping_height>0 {jumping_height=0; jumping=-5}
    if animacja_chodzenia<170 {animacja_chodzenia=animacja_chodzenia/1.1}
    if animacja_chodzenia>180 {animacja_chodzenia=animacja_chodzenia/1.1}
    }
    
     
// ruch po mapie
if killed=0{
if place_meeting(x,y,o_button_map_1) && idzie=0 && moze_isc>0 && !place_meeting(x,y,o_map_player_1) && global.mario_skusil=0
    {
    lolo=instance_place(x,y,o_button_map_1)
    last_x_point=lolo.x
    last_y_point=lolo.y
    

    randomer=round(random(4))
        lolo=instance_place(x,y,o_button_map_1)
        dotykal=lolo.id
        if rodzaj=10 {idzie=1;moze_isc-=1;statek_moves+=1}
        if rodzaj<>10 {
        if lolo.enemy_lewo=1 && randomer=0 {idzie=1;moze_isc-=1; if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) {SXMS_SFX_PlayExt(166,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}}
        if lolo.enemy_prawo=1 && randomer=1 {idzie=3;moze_isc-=1; if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) {SXMS_SFX_PlayExt(166,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}}
        if lolo.enemy_gora=1 && randomer=2 {idzie=2;moze_isc-=1; if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) {SXMS_SFX_PlayExt(166,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}}
        if lolo.enemy_dol=1 && randomer=3 {idzie=4;moze_isc-=1; if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) {SXMS_SFX_PlayExt(166,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}}}}

        // naprawiacz gdy mario skusil
if place_meeting(x,y,o_button_map_1) && idzie=0 && moze_isc>0 && uciekaj_gdy_mario_skusil=1
    {
    lolo=instance_place(x,y,o_button_map_1)
    last_x_point=lolo.x
    last_y_point=lolo.y
    

    randomer=round(random(4))
        lolo=instance_place(x,y,o_button_map_1)
        dotykal=lolo.id
        if rodzaj=10 {idzie=1;moze_isc-=1;statek_moves+=1}
        if rodzaj<>10 {
        if lolo.enemy_lewo=1 && randomer=0 {idzie=1;moze_isc-=1}
        if lolo.enemy_prawo=1 && randomer=1 {idzie=3;moze_isc-=1}
        if lolo.enemy_gora=1 && randomer=2 {idzie=2;moze_isc-=1}
        if lolo.enemy_dol=1 && randomer=3 {idzie=4;moze_isc-=1}}}
        
// rusz przeciwnikiem gdy stoi na pozycji Mario tuż po skuszeniu (przeciwnik robi miejsce dla Mario)

if global.mario_skusil<>0 && idzie=0 && rodzaj<>10
    {
        if place_meeting(x,y,o_button_map_1)
            {
            dodo=instance_place(x,y,o_button_map_1)
            if dodo=global.mario_skusil_id
                {
                randomer=round(random(4))
                if dodo.enemy_lewo=1 && randomer=0 {idzie=1}
                if dodo.enemy_prawo=1 && randomer=1 {idzie=3}
                if dodo.enemy_gora=1 && randomer=2 {idzie=2}
                if dodo.enemy_dol=1 && randomer=3 {idzie=4}
                }
            }
            
        if place_meeting(x,y,o_map_player_1) && idzie=0
                {
                randomer=round(random(4))
                if dodo.enemy_lewo=1 && randomer=0 {idzie=1;moze_isc_po_skuszeniu=1}
                if dodo.enemy_prawo=1 && randomer=1 {idzie=3;moze_isc_po_skuszeniu=1}
                if dodo.enemy_gora=1 && randomer=2 {idzie=2;moze_isc_po_skuszeniu=1}
                if dodo.enemy_dol=1 && randomer=3 {idzie=4;moze_isc_po_skuszeniu=1}
                }
    }





    // RUCH DLA STATKU
    
if rodzaj=10 && idzie<>0
    {
    if statek_moves>10{
    SXMS_SFX_PlayExt(149,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
    statek_moves=0
    kokoz=round(random(ilosc_etapow-1))
    staryx=x
    staryy=y
    obliczatorx=staryx-(baza_etapow[kokoz]).x
    obliczatory=staryy-(baza_etapow[kokoz]).y
    x=(baza_etapow[kokoz]).x
    y=(baza_etapow[kokoz]).y} else {idzie=0}
    }
    
if rodzaj=10 && place_meeting(x,y,o_button_map_1)
    {
    lolo=instance_place(x,y,o_button_map_1)
    if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
    if zatrzymuj_na<>0 {speeder=0;animacja=0;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}
    }

    if obliczatorx<>0 {obliczatorx=obliczatorx/1.01}
    if obliczatory<>0 {obliczatory=obliczatory/1.01}
    
    
   // CHODZENIE DLA TRADYCYJYCH PRZECIWNIKOW 
if rodzaj<>10 {
if idzie=1 && global.chwilowy_stopper<=0 && (global.mario_skusil=0 || moze_isc_po_skuszeniu<>0)
    {
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {animacja_chodzenia=max(0,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=90 && animacja_chodzenia<180 {animacja_chodzenia=min(180,animacja_chodzenia+animacja_chodzenia/90)}
    if animacja_chodzenia>=180 && animacja_chodzenia<270 {animacja_chodzenia=max(180,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=180 {animacja_chodzenia=min(360,animacja_chodzenia+animacja_chodzenia/90)}
    if random(100)>999 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.2
    x-=1+speeder
    if place_meeting(x,y,o_button_map_1)
        {
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0  {if x<zatrzymuj_na.x {speeder=0;animacja=0;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
    
    }
    
    
    
    
if idzie=2 && global.chwilowy_stopper<=0 && (global.mario_skusil=0 || moze_isc_po_skuszeniu<>0) 
    {
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {animacja_chodzenia=max(0,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=90 && animacja_chodzenia<180 {animacja_chodzenia=min(180,animacja_chodzenia+animacja_chodzenia/90)}
    if animacja_chodzenia>=180 && animacja_chodzenia<270 {animacja_chodzenia=max(180,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=180 {animacja_chodzenia=min(360,animacja_chodzenia+animacja_chodzenia/90)}
    if random(100)>999 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.2
    y-=1+speeder
    if place_meeting(x,y,o_button_map_1)
        {
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0 {if y<zatrzymuj_na.y {speeder=0;animacja=0;y=zatrzymuj_na.y;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
        

    }  
    
    
     
    
    
    
     
if idzie=3 && global.chwilowy_stopper<=0 && (global.mario_skusil=0 || moze_isc_po_skuszeniu<>0) 
    {
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {animacja_chodzenia=max(0,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=90 && animacja_chodzenia<180 {animacja_chodzenia=min(180,animacja_chodzenia+animacja_chodzenia/90)}
    if animacja_chodzenia>=180 && animacja_chodzenia<270 {animacja_chodzenia=max(180,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=180 {animacja_chodzenia=min(360,animacja_chodzenia+animacja_chodzenia/90)}
    if random(100)>999 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.2
    x+=1+speeder
        if place_meeting(x,y,o_button_map_1)
        {
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0 {if x>zatrzymuj_na.x {speeder=0;animacja=0;x=zatrzymuj_na.x;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
    
    }  
    
    
    
    
if idzie=4 && global.chwilowy_stopper<=0 && (global.mario_skusil=0 || moze_isc_po_skuszeniu<>0) 
    {
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {animacja_chodzenia=max(0,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=90 && animacja_chodzenia<180 {animacja_chodzenia=min(180,animacja_chodzenia+animacja_chodzenia/90)}
    if animacja_chodzenia>=180 && animacja_chodzenia<270 {animacja_chodzenia=max(180,animacja_chodzenia/1.1)}
    if animacja_chodzenia>=180 {animacja_chodzenia=min(360,animacja_chodzenia+animacja_chodzenia/90)}
    if random(100)>999 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.2
    y+=1+speeder
    if place_meeting(x,y,o_button_map_1)
        {
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0 {if y>zatrzymuj_na.y {speeder=0;animacja=0;y=zatrzymuj_na.y;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
    
    } }
    
    
    
    // GOOMBA
if rodzaj=0{
stream+=0.1+speeder/50
animacja_chodzenia+=animacja_dodawacz
if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
if animacja_chodzenia>360 {animacja_chodzenia-=360}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_goomba,0,x+16-15+sin(degtorad(animacja_chodzenia))*40,y+15+sin(stream)*2-20+jumping_height,kierunek,1,sin(stream)*5+360,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+5-15+sin(degtorad(animacja_chodzenia))*40,y+35+sin(stream)*4-20+jumping_height,kierunek,1,0,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+24-15+sin(degtorad(animacja_chodzenia))*40,y+35+sin(stream*-1)*4-20+jumping_height,-kierunek,1,0,c_white,1)}}

if rodzaj=1{
stream+=0.1+speeder/50
animacja_chodzenia+=animacja_dodawacz
if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
if animacja_chodzenia>360 {animacja_chodzenia-=360}
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{


draw_sprite_ext(s_map_shadow_1,0,x+sin(degtorad(animacja_chodzenia))*40+30,+20+y+5+sin(stream),1.5,1,0,c_white,1)

if ukierunkuj=0{
draw_sprite_ext(global.gfx_troopa_leg,0,x+18+sin(degtorad(animacja_chodzenia))*40,-30+y+20+sin(stream)+jumping_height,kierunek,1,sin(stream)*10+360+kierunek*-20,c_white,1)
draw_sprite_ext(global.gfx_troopa,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2+jumping_height,kierunek*0.8,0.8,sin(stream)*5+360,c_white,1)
draw_sprite_ext(global.gfx_troopa_leg,0,x+18+sin(degtorad(animacja_chodzenia))*40,-30+y+20+sin(stream)+jumping_height,kierunek,1,sin(-stream)*10+360+kierunek*-20,c_white,1)
draw_sprite_ext(global.gfx_troopa_arm,0,x+18+sin(degtorad(animacja_chodzenia))*40,-30+y+5+sin(stream)+jumping_height,kierunek,1,sin(stream)*40+360,c_white,1)
draw_sprite_ext(global.gfx_wings,0,x+18-8*kierunek+sin(degtorad(animacja_chodzenia))*40,-30+y+5+sin(stream)+jumping_height,kierunek*0.45,0.45,sin(stream*2)*30+360-20*kierunek,c_white,1)}

if ukierunkuj<>0{
draw_sprite_ext(global.gfx_troopa_leg,0,x+18+sin(degtorad(animacja_chodzenia))*40,-30+y+20+sin(stream)+jumping_height,ukierunkuj,1,sin(stream)*10+360+kierunek*-20,c_white,1)
draw_sprite_ext(global.gfx_troopa,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2+jumping_height,ukierunkuj*0.8,0.8,sin(stream)*5+360,c_white,1)
draw_sprite_ext(global.gfx_troopa_leg,0,x+18+sin(degtorad(animacja_chodzenia))*40,-30+y+20+sin(stream)+jumping_height,ukierunkuj,1,sin(-stream)*10+360+kierunek*-20,c_white,1)
draw_sprite_ext(global.gfx_troopa_arm,0,x+18+sin(degtorad(animacja_chodzenia))*40,-30+y+5+sin(stream)+jumping_height,ukierunkuj,1,sin(stream)*40+360,c_white,1)
draw_sprite_ext(global.gfx_wings,0,x+18-8*ukierunkuj+sin(degtorad(animacja_chodzenia))*40,-30+y+5+sin(stream)+jumping_height,ukierunkuj*0.45,0.45,sin(stream*2)*30+360-20*kierunek,c_white,1)}
}}



if rodzaj=2
    {
    stream+=0.1+speeder/50
    animacja_chodzenia+=animacja_dodawacz
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
    if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
    if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
    if animacja_chodzenia>360 {animacja_chodzenia-=360}
    if ukierunkuj=0{
    if kierunek=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    if kierunek=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_4,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2-10+25+jumping_height,kierunek*0.8,0.8,0,c_white,1)
    if kierunek=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    if kierunek=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_arm_hammer,0,x+sin(degtorad(animacja_chodzenia))*40+18,-30+y+5+sin(stream)+25+jumping_height,kierunek*0.9+rzut_anim/80*kierunek,0.8+rzut_anim/80,sin(stream)*20,c_white,1)}
    
    if ukierunkuj<>0{
    kierunek=ukierunkuj
    if ukierunkuj=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    if ukierunkuj=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_4,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2-10+25+jumping_height,kierunek*0.8,0.8,0,c_white,1)
    if ukierunkuj=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    if ukierunkuj=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_arm_hammer,0,x+sin(degtorad(animacja_chodzenia))*40+18,-30+y+5+sin(stream)+25+jumping_height,kierunek*0.9+rzut_anim/80*kierunek,0.8+rzut_anim/80,sin(stream)*20,c_white,1)}
    
    
    }
    
if rodzaj=3
    {
    stream+=0.1+speeder/50
    animacja_chodzenia+=animacja_dodawacz
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
    if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
    if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
    if animacja_chodzenia>360 {animacja_chodzenia-=360}
    if ukierunkuj=0{
        draw_sprite_ext(s_fireball_boom,0,
x+15+sin(degtorad(animacja_chodzenia))*40+10*kierunek,
y+sin(degtorad(stream))*10+jumping_height,
abs(sin(degtorad(stream*40)))/5.5+0.5,abs(sin(degtorad(stream*40)))/5.5+0.5,0,c_white,1)
    if kierunek=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    if kierunek=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_6,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2-10+25+jumping_height,kierunek*0.8,0.8,0,c_white,1)
    if kierunek=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    if kierunek=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_arm,0,x+sin(degtorad(animacja_chodzenia))*40+18,-30+y+5+sin(stream)+25+jumping_height,kierunek*0.9+rzut_anim/80*kierunek,0.8+rzut_anim/80,sin(stream)*20,c_white,1)
    }



    if ukierunkuj<>0{
    kierunek=ukierunkuj
        draw_sprite_ext(s_fireball_boom,0,
x+15+sin(degtorad(animacja_chodzenia))*40+10*kierunek,
y+sin(degtorad(stream))*10+jumping_height,
abs(sin(degtorad(stream*40)))/5.5+0.5,abs(sin(degtorad(stream*40)))/5.5+0.5,0,c_white,1)
    if ukierunkuj=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    if ukierunkuj=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_6,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2-10+25+jumping_height,kierunek*0.8,0.8,0,c_white,1)
    if ukierunkuj=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    if ukierunkuj=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_arm,0,x+sin(degtorad(animacja_chodzenia))*40+18,-30+y+5+sin(stream)+25+jumping_height,kierunek*0.9+rzut_anim/80*kierunek,0.8+rzut_anim/80,sin(stream)*20,c_white,1)}
    
    
    }
    
    
    
    
    if rodzaj=4
    {
    stream+=0.1+speeder/50
    animacja_chodzenia+=animacja_dodawacz
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
    if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
    if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
    if animacja_chodzenia>360 {animacja_chodzenia-=360}
    if ukierunkuj=0{

    if kierunek=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    if kierunek=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_5,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2-10+25+jumping_height,kierunek*0.8,0.8,0,c_white,1)
    if kierunek=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    if kierunek=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_arm_boomerang,0,x+sin(degtorad(animacja_chodzenia))*40+18,-30+y+5+sin(stream)+25+jumping_height,kierunek*0.9+rzut_anim/80*kierunek,0.8+rzut_anim/80,sin(stream)*20,c_white,1)
    }



    if ukierunkuj<>0{
    kierunek=ukierunkuj
    if ukierunkuj=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    if ukierunkuj=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_5,0,x+16+sin(degtorad(animacja_chodzenia))*40,-30+y+sin(stream)*2-10+25+jumping_height,kierunek*0.8,0.8,0,c_white,1)
    if ukierunkuj=1 {draw_sprite_ext(global.gfx_troopa_leg,0,10*kierunek+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    if ukierunkuj=-1 {draw_sprite_ext(global.gfx_troopa_leg,0,20+x+sin(degtorad(animacja_chodzenia))*40,-30+y+15+sin(stream)+25+jumping_height,kierunek*0.8,0.8,-sin(stream)*40,c_white,1)}
    draw_sprite_ext(global.gfx_troopa_arm_boomerang,0,x+sin(degtorad(animacja_chodzenia))*40+18,-30+y+5+sin(stream)+25+jumping_height,kierunek*0.9+rzut_anim/80*kierunek,0.8+rzut_anim/80,sin(stream)*20,c_white,1)}
    }
    
    
if rodzaj=5
    {
    stream+=0.1+speeder/20
    animacja_chodzenia+=animacja_dodawacz
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
    if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
    if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
    if animacja_chodzenia>360 {animacja_chodzenia-=360}
    if ukierunkuj=0{

draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,x-14-10*kierunek+sin(degtorad(animacja_chodzenia))*40,y+sin(stream)-20+jumping_height/2,kierunek*0.7,0.7,-sin(stream/4)*10+360+rzut_anim*kierunek-140*kierunek,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,x-14+15*kierunek+sin(degtorad(animacja_chodzenia))*40,y+25-30+jumping_height/2,kierunek*0.7,0.7,(sin(stream/2)*40)+360+(kierunek)/10,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros,0,x-16+sin(degtorad(animacja_chodzenia))*40,y+sin(stream/2)*2-10-20+jumping_height/2,kierunek*0.7,0.7,sin(stream/2)*5+360-10*kierunek,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,x-14-15*kierunek+sin(degtorad(animacja_chodzenia))*40,y+25-30+jumping_height/2,kierunek*0.7,0.7,(sin(-stream/2)*40)+360-(kierunek)/10,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,x-14+sin(degtorad(animacja_chodzenia))*40,y-20+jumping_height/2,kierunek*0.7,0.7,sin(stream/2)*10+360-140*kierunek,c_white,1)
    }

    if ukierunkuj<>0{
kierunek=ukierunkuj
draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,x-14-10*kierunek+sin(degtorad(animacja_chodzenia))*40,y+sin(stream)-20+jumping_height/2,kierunek*0.7,0.7,-sin(stream/4)*10+360+rzut_anim*kierunek-140*kierunek,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,x-14+15*kierunek+sin(degtorad(animacja_chodzenia))*40,y+25-30+jumping_height/2,kierunek*0.7,0.7,(sin(stream/2)*40)+360+(kierunek)/10,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros,0,x-16+sin(degtorad(animacja_chodzenia))*40,y+sin(stream/2)*2-10-20+jumping_height/2,kierunek*0.7,0.7,sin(stream/2)*5+360-10*kierunek,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,x-14-15*kierunek+sin(degtorad(animacja_chodzenia))*40,y+25-30+jumping_height/2,kierunek*0.7,0.7,(sin(-stream/2)*40)+360-(kierunek)/10,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,x-14+sin(degtorad(animacja_chodzenia))*40,y-20+jumping_height/2,kierunek*0.7,0.7,sin(stream/2)*10+360-140*kierunek,c_white,1)
    }


    
    }
    
    
    


 if rodzaj=6
    {
    anim+=1
    stream+=0.1+speeder/20
    animacja_chodzenia+=animacja_dodawacz
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
    if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
    if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
    if animacja_chodzenia>360 {animacja_chodzenia-=360}
    if ukierunkuj=0{
    draw_sprite_ext(global.gfx_lakitus_1,0,x+sin(degtorad(animacja_chodzenia))*40,y-10+jumping_height,kierunek/1.5-sin(degtorad(anim*4))/20,1/1.5+sin(degtorad(anim*4))/20,+360,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_2,0,x+sin(degtorad(180))*40+sin(degtorad(animacja_chodzenia))*40,y+cos(degtorad(180))*40+jumping_height,kierunek/1.5,1/1.5,+360,c_white,1)
    }
    if ukierunkuj<>0{
    kierunek=ukierunkuj
    draw_sprite_ext(global.gfx_lakitus_1,0,x+sin(degtorad(animacja_chodzenia))*40,y-10+jumping_height,kierunek/1.5-sin(degtorad(anim*4))/20,1/1.5+sin(degtorad(anim*4))/20,+360,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_2,0,x+sin(degtorad(180))*40+sin(degtorad(animacja_chodzenia))*40,y+cos(degtorad(180))*40+jumping_height,kierunek/1.5,1/1.5,+360,c_white,1)
    }

    
    }
    
    if rodzaj=7
        {
        for (i=0;i<5;i+=1)
        {
        if i=0 {draw_sprite_ext(s_map_shadow_1,0,x+sin(degtorad(stream*5+360*(i/(5+1))))*5,y-20*i-10,kierunek,1/2,0,c_white,0.5)}
        draw_sprite_ext(global.gfx_enemy_pokey_1,0,x+sin(degtorad(stream*5+360*(i/(5+1))))*5,y-20*i-20,kierunek/2,1/2,0,c_white,1)
        }
        draw_sprite_ext(global.gfx_enemy_pokey_2,0,x+sin(degtorad(stream*5+i))*5,y-20*5-20,kierunek/2,1/2,sin(degtorad(stream*2+i))*3+360,c_white,1)
        
        stream+=2
        
        
        
        }
    
    

    if rodzaj=10
    {
    anim+=1
    stream+=0.1+speeder/20
    animacja_chodzenia+=animacja_dodawacz
    if animacja_chodzenia>=0 && animacja_chodzenia<90 {kierunek=1}
    if animacja_chodzenia>90 && animacja_chodzenia<270 {kierunek=-1}
    if animacja_chodzenia>=270 && animacja_chodzenia {kierunek=1}
    if animacja_chodzenia>360 {animacja_chodzenia-=360}
    if ukierunkuj=0{
    draw_sprite_ext(s_map_ship,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,y-10+jumping_height+obliczatory,kierunek-sin(degtorad(anim*4))/50,1+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    draw_sprite_ext(s_map_shadow_1,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,y-10+jumping_height+50+obliczatory,kierunek*3-sin(degtorad(anim*4))/50,1+sin(degtorad(anim*4))/50,+360,c_white,1)

    draw_sprite_ext(global.gfx_smiglo2,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-40+y-10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    draw_sprite_ext(global.gfx_smiglo2,0,28+x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-40-20+y-10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    draw_sprite_ext(global.gfx_smiglo2,0,-28+x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-40-20+y-10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    
        
    }
    if ukierunkuj<>0{
    kierunek=ukierunkuj
    draw_sprite_ext(s_map_ship,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,y-10+jumping_height+obliczatory,kierunek-sin(degtorad(anim*4))/50,1+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    draw_sprite_ext(s_map_shadow_1,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,y-10+jumping_height+50+obliczatory,kierunek*3-sin(degtorad(anim*4))/50,1+sin(degtorad(anim*4))/50,+360,c_white,1)

    draw_sprite_ext(global.gfx_smiglo2,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-40+y-10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    draw_sprite_ext(global.gfx_smiglo2,0,28+x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-40-20+y-10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    draw_sprite_ext(global.gfx_smiglo2,0,-28+x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-40-20+y-10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)
    
    }

    
    } 
    

    
    
    
    
    
    
    
    
    
     
}





















/*

draw_set_font(global.map_fonts_1)


draw_text_transformed(x,y,"x"+string(id),1,1,0)

/* */
/*  */
