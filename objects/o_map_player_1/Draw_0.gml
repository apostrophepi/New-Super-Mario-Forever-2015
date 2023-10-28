depth=-y-50

if global.mapa_sterownosc=0{
if global.pauza=0
    {
// ATAK PRZECIWNIKA
if place_meeting(x,y,o_map_atakujacy_przeciwnik) && global.delayer>=1000 && triggered_by_enemy=0 && global.mario_skusil=0 && global.mario_wszedl_do_etapu=0
    {
    triggered_by_enemy=1
    loloxx=instance_place(x,y,o_map_atakujacy_przeciwnik)
    global.id_of_killed_atacker=loloxx.id
    
    if sampel_ataku=0 && loloxx.rodzaj<>10 {sampel_ataku=1;SXMS_SFX_PlayExt(141,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)}
    if sampel_ataku=0 && loloxx.rodzaj=10 {sampel_ataku=1;SXMS_SFX_PlayExt(150,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)}
    
    
    if global.uzyto_stoppera=0 {global.uzyto_stoppera=1; global.chwilowy_stopper=150}
    loloxx.is_jumping=1
    loloxx.jumping=-3
    }
    
    if global.uzyto_stoppera=1 && global.chwilowy_stopper>0 {global.chwilowy_stopper-=1}
    if global.uzyto_stoppera=1 && global.chwilowy_stopper<=0
        {
        if tick_start_not_using_check_point_enemy=1 {tick_start_not_using_check_point_enemy=2}
        if tick_start_not_using_check_point_enemy=0{
        if global.chpoint_lvl_selected<>loloxx.goto_level {global.mario_ktory_pokonal=loloxx.goto_level;global.chpoint_id=0;global.chpoint_sublevel=0;global.chpoint_lvl_selected=loloxx.goto_level}
        tick_start_not_using_check_point_enemy=1}
        
        if tick_start_not_using_check_point_enemy=2{
        if global.chpoint_id<>0 {
        global.zaatakowany_przeciwnik=loloxx
        room_goto(global.chpoint_sublevel)}
            
        if global.chpoint_id=0 {
        global.zaatakowany_przeciwnik=loloxx
        room_goto(loloxx.goto_level)}}
        
        
        
        
        
        }
    

    
// CHODZENIE PO MAPIE
if idzie=0 && !place_meeting(x,y,o_map_atakujacy_przeciwnik) && global.delayer>=1000 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0 && global.mario_wszedl_do_etapu=0
    {
    if place_meeting(x,y,o_button_map_1) && global.map_completed_sequence=0
        {
        lolo=instance_place(x,y,o_button_map_1)
        dotykal=lolo.id
        // RYSUJ STRZALKI JAK STOISZ W MIEJSCU
        not_rysuj_strzalki=0
        if strzalki_alphor<1 {strzalki_alphor+=0.05}
        
        if lolo.goto_level=0 || lolo.completed=1 {
        if lolo.prawo=1 {draw_sprite_ext(s_map_napis_8,0,x+52+sin(stream_strzalki)*20,y,1-sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,0,c_white,strzalki_alphor);not_rysuj_strzalki=1}
        if lolo.lewo=1 {draw_sprite_ext(s_map_napis_8,0,x-52-sin(stream_strzalki)*20,y,-1+sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,0,c_white,strzalki_alphor);not_rysuj_strzalki=1}
        if lolo.gora=1 {draw_sprite_ext(s_map_napis_8,0,x,y-52-sin(stream_strzalki)*20,1-sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,90,c_white,strzalki_alphor);not_rysuj_strzalki=1}
        if lolo.dol=1 {draw_sprite_ext(s_map_napis_8,0,x,y+52+sin(stream_strzalki)*20,1-sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,-90,c_white,strzalki_alphor);not_rysuj_strzalki=1}}
        
        if lolo.completed=0 && not_rysuj_strzalki=0 {
        if lastmove=2 {draw_sprite_ext(s_map_napis_8,0,x-52-sin(stream_strzalki)*20,y,-1+sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,0,c_white,strzalki_alphor)}
        if lastmove=1 {draw_sprite_ext(s_map_napis_8,0,x+52+sin(stream_strzalki)*20,y,1-sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,0,c_white,strzalki_alphor)}
        if lastmove=3 {draw_sprite_ext(s_map_napis_8,0,x,y+52+sin(stream_strzalki)*20,1-sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,-90,c_white,strzalki_alphor)}
        if lastmove=4 {draw_sprite_ext(s_map_napis_8,0,x,y-52-sin(stream_strzalki)*20,1-sin(stream_strzalki)/10,1+sin(stream_strzalki)/10,90,c_white,strzalki_alphor)}
        }
        
        
        stream_strzalki+=0.1
        
        
        // PUSTY PUNKT
        if lolo.posiada_brame<>1 && step_into_gate=0 {
        if lolo.goto_level=0 || lolo.completed<>0 {
        if o_map_sterownik.klicknieto=0 && o_map_sterownik.item_selecting=0 {
        if lolo.lewo=1 && keyboard_check(global.ster_left) {idzie=1;size2=-1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=1;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.prawo=1 && keyboard_check(global.ster_right) {idzie=3;size2=1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=2;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.gora=1 && keyboard_check(global.ster_up) {idzie=2;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=3;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.dol=1 && keyboard_check(global.ster_down) {idzie=4;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=4;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}}}
        // ETAP KTORY NIE ZOSTAL POKONANY
        if lolo.goto_level<>0 && lolo.completed=0 {
        if o_map_sterownik.klicknieto=0 && o_map_sterownik.item_selecting=0 {
        if lolo.lewo=1 && keyboard_check(global.ster_left) && lastmove=2 {idzie=1;size2=-1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=1;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.prawo=1 && keyboard_check(global.ster_right) && lastmove=1 {idzie=3;size2=1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=2;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.gora=1 && keyboard_check(global.ster_up) && lastmove=4 {idzie=2;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=3;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.dol=1 && keyboard_check(global.ster_down) && lastmove=3 {idzie=4;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=4;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}}}}
        
        if lolo.posiada_brame=1 && step_into_gate=0 {
        if lolo.goto_level=0 || lolo.completed<>0 {
        if o_map_sterownik.klicknieto=0 && o_map_sterownik.item_selecting=0 {
        if lolo.lewo=1 && lolo.kierunek_bramy<>0 && keyboard_check(global.ster_left) {idzie=1;size2=-1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=1;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.prawo=1 && lolo.kierunek_bramy<>1 && keyboard_check(global.ster_right) {idzie=3;size2=1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=2;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.gora=1 && lolo.kierunek_bramy<>2 && keyboard_check(global.ster_up) {idzie=2;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=3;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.dol=1 && lolo.kierunek_bramy<>3 && keyboard_check(global.ster_down) {idzie=4;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=4;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        
        if lolo.lewo=1 && lolo.kierunek_bramy=0 && keyboard_check(global.ster_left) {step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);strzalki_alphor=0}
        if lolo.prawo=1 && lolo.kierunek_bramy=1 && keyboard_check(global.ster_right) {step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);strzalki_alphor=0}
        if lolo.gora=1 && lolo.kierunek_bramy=2 && keyboard_check(global.ster_up) {step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);strzalki_alphor=0}
        if lolo.dol=1 && lolo.kierunek_bramy=3 && keyboard_check(global.ster_down) {step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);strzalki_alphor=0}
        
        }}
        // ETAP KTORY NIE ZOSTAL POKONANY
        if lolo.goto_level<>0 && lolo.completed=0 {
        if o_map_sterownik.klicknieto=0 && o_map_sterownik.item_selecting=0 {
        if lolo.lewo=1 && lolo.kierunek_bramy<>0 && keyboard_check(global.ster_left) && lastmove=2 {idzie=1;size2=-1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=1;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.prawo=1 && lolo.kierunek_bramy<>1 && keyboard_check(global.ster_right) && lastmove=1 {idzie=3;size2=1;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=2;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.gora=1 && lolo.kierunek_bramy<>2 && keyboard_check(global.ster_up) && lastmove=4 {idzie=2;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=3;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}
        if lolo.dol=1 && lolo.kierunek_bramy<>3 && keyboard_check(global.ster_down) && lastmove=3 {idzie=4;animacja=3;speeder=0;rusz_przeciwnikami=1;lastmove=4;czy_etap_nastepny_ma_brame=0;tested_1=0;strzalki_alphor=0}}}}
    
        
        
        }
    } 
    /*
// wylacz algorytm sprawdzania czy sasiedni etap ma brame jezeli gracz dotyka akurat etapu z brama (bo do tego sa osobne linijki)
if place_meeting(x,y,o_button_map_1)
    {
    a12345=instance_place(x,y,o_button_map_1)
    if a12345.posiada_brame=1 {tested_1=1}
    }*/
    
// jezeli mario wszedl w brame zablokuj ruch mario
if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) {step_into_gate=0}

koniec_ruchu=0

// sampel chodzenia
if sampel_chodzenie>=10
    {
    SXMS_SFX_PlayExt(0+round(random(1)),(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(0+round(random(1)),(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
    sampel_chodzenie=0
    }
if idzie=1 && global.chwilowy_stopper<=0 && global.mario_skusil=0 
    {
    if czy_etap_nastepny_ma_brame=0 {czy_etap_nastepny_ma_brame=1;
    // sprawdz czy etap ma brame
    tester_father=instance_place(x,y,o_button_map_1)
    for (i=0;i<100;i+=1)
        {
        if place_meeting(x-i*10,y,o_button_map_1) && tested_1=0
            {
            tester=instance_place(x-i*10,y,o_button_map_1)
            if tester.kierunek_bramy=1{
            if tester<>tester_father {if tester.posiada_brame=0 {tested_1=1}}
            if tester<>tester_father {if tester.posiada_brame=1 {koniec_ruchu=1;tested_1=1;rusz_przeciwnikami=0;step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);animacja=0;idzie=0;dotykal=tester_father.id;zatrzymuj=0;zatrzymuj_na=0;break;break;break}}
            }}
        
        
        }}
        if koniec_ruchu=0{
    sampel_chodzenie+=1
    if random(100)>90 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.1
    x-=2+speeder
    if place_meeting(x,y,o_button_map_1)
        {
        ruch_delay=0
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0  {if x<zatrzymuj_na.x {animacja=0;x=zatrzymuj_na.x;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
    
    }}
    
    
    
    
if idzie=2 && global.chwilowy_stopper<=0 && global.mario_skusil=0 
    {
    if czy_etap_nastepny_ma_brame=0 {czy_etap_nastepny_ma_brame=1;
    // sprawdz czy etap ma brame
    tester_father=instance_place(x,y,o_button_map_1)
    for (i=0;i<100;i+=1)
        {
        if place_meeting(x,y-i*10,o_button_map_1) && tested_1=0
            {
            tester=instance_place(x,y-i*10,o_button_map_1)
            if tester<>tester_father {if tester.posiada_brame=0 {tested_1=1}}
            if tester<>tester_father && tester.kierunek_bramy=3 {if tester.posiada_brame=1 {koniec_ruchu=1;tested_1=1;rusz_przeciwnikami=0;step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);animacja=0;idzie=0;dotykal=tester_father.id;zatrzymuj=0;zatrzymuj_na=0;break;break;break}}
            }
        
        
        }}
        
        if koniec_ruchu=0{
    sampel_chodzenie+=1
    if random(100)>90 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.1
    y-=2+speeder
    if place_meeting(x,y,o_button_map_1)
        {
        ruch_delay=0
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0 {if y<zatrzymuj_na.y {animacja=0;y=zatrzymuj_na.y;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
        

    }  }
    
    
     
    
    
    
     
if idzie=3 && global.chwilowy_stopper<=0 && global.mario_skusil=0 
    {
    if czy_etap_nastepny_ma_brame=0 {czy_etap_nastepny_ma_brame=1;
    // sprawdz czy etap ma brame
    tester_father=instance_place(x,y,o_button_map_1)
    for (i=0;i<100;i+=1)
        {
        if place_meeting(x+i*10,y,o_button_map_1) && tested_1=0
            {
            tester=instance_place(x+i*10,y,o_button_map_1)
            if tester.kierunek_bramy=0{
            if tester<>tester_father {if tester.posiada_brame=0 {tested_1=1}}
            if tester<>tester_father {if tester.posiada_brame=1 {koniec_ruchu=1;tested_1=1;rusz_przeciwnikami=0;step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);animacja=0;idzie=0;dotykal=tester_father.id;zatrzymuj=0;zatrzymuj_na=0;koniec_ruchu=0}}
            }}
        
        
        }}
        if koniec_ruchu=0{
    sampel_chodzenie+=1
    if random(100)>90 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.1
    x+=2+speeder
        if place_meeting(x,y,o_button_map_1)
        {
        ruch_delay=0
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0 {if x>zatrzymuj_na.x {animacja=0;x=zatrzymuj_na.x;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
    
    }  }
    
    
    
    
if idzie=4 && global.chwilowy_stopper<=0 && global.mario_skusil=0 
    {
    if czy_etap_nastepny_ma_brame=0 {czy_etap_nastepny_ma_brame=1;
    // sprawdz czy etap ma brame
    tester_father=instance_place(x,y,o_button_map_1)
    for (i=0;i<100;i+=1)
        {
        if place_meeting(x,y+i*10,o_button_map_1) && tested_1=0
            {
            tester=instance_place(x,y+i*10,o_button_map_1)
            if tester<>tester_father {if tester.posiada_brame=0 {tested_1=1}}
            if tester<>tester_father {if tester.posiada_brame=1 && tester.kierunek_bramy=2 {koniec_ruchu=1;tested_1=1;rusz_przeciwnikami=0;step_into_gate=1;SXMS_SFX_PlayExt(43,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0);animacja=0;idzie=0;dotykal=tester_father.id;zatrzymuj=0;zatrzymuj_na=0;;break;break;break}
            }}
        
        
        }}
        
        if koniec_ruchu=0{
    sampel_chodzenie+=1
    if random(100)>90 {part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_smoker_map,1)}
    speeder+=0.1
    y+=2+speeder
    if place_meeting(x,y,o_button_map_1)
        {
        ruch_delay=0
        lolo=instance_place(x,y,o_button_map_1)
        if lolo.id<>dotykal {zatrzymuj=1;zatrzymuj_na=lolo.id}
        
        if zatrzymuj_na<>0 {if y>zatrzymuj_na.y {animacja=0;y=zatrzymuj_na.y;idzie=0;dotykal=lolo.id;zatrzymuj=0;zatrzymuj_na=0}}
        }
    
    }  }
    
    
         
    
    
    
    
    }}

/* */

anim=max(0,global.rodzaj_mario-1)



draw_sprite_ext(s_map_shadow_1,0,x,y+10,1,0.5,0,c_white,1)
draw_sprite_ext(s_map_shadow_1,0,x,y+30,1,2,0,c_white,0.5)
if animacja=0{
// stanie w miejscu

if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5++podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+sin(degtorad(strzelanie2*2))*200-sin(degtorad(hamowanie/2))*10)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+sin(degtorad(hamowanie/2))*5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-40-sin(degtorad(hamowanie/2))*5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5++podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,sin(degtorad(hamowanie/2))*5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+sin(degtorad(hamowanie/2))*10)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}

if anim=9 {draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(hamowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,c_white,1)}

run_pochylenie=0
hamowanie+=5
kat=0
//size=1
run_kat=0
run_promien=0
if run_pochylenie>-10 run_pochylenie-=0.3
}



if animacja=1{
// plywanie w wodzie ;)
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5++podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,(strzelanie+strzelanie2-sin(degtorad(hamowanie/2))*10+33)*size2+schylak-szybkosc*40,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(-35+kat+sin(degtorad(run_kat))*run_promien*1+sin(degtorad(swim_nozkowanie2+hamowanie/2))*25)*size2-szybkosc*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(-35+kat-sin(degtorad(run_kat))*run_promien*1-sin(degtorad(swim_nozkowanie2+hamowanie/2))*25)*size2-szybkosc*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,sin(degtorad(hamowanie/2))*5++podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(hamowanie/2))*5)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,sin(degtorad(hamowanie/2))*5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(15+sin(degtorad(hamowanie/2))*10+88)*size2+schylak+szybkosc*40+40*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}
hamowanie+=25+swim_nozkowanie*2
swim_nozkowanie2+=swim_nozkowanie
kat=0
//size=1
run_kat=0
run_promien=0
if run_pochylenie>-10 run_pochylenie-=0.3
}


if animacja=2{
// skok

if size2=1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,-size,((kat+sin(degtorad(run_kat))*run_promien/2-15+jump)*strzelanie+strzelanie2)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),+podskoczenie-20+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+sin(degtorad(ogon_merda))*20++ogon_uderzak,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,+podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,kat+sin(degtorad(run_kat))+run_pochylenie*size2+strzelanie2/10,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22-jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size),+podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+jump)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}
}

if size2=-1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(-150-kat+globalny_kat))*30/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(-150-kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,-size,((kat+sin(degtorad(run_kat))*run_promien/2-15+jump)*strzelanie+strzelanie2)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+podskoczenie-20-kat+globalny_kat))*35/3)*size),-20+y+(cos(degtorad(-20-kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+sin(degtorad(ogon_merda))*20++ogon_uderzak,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,+podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,kat+sin(degtorad(run_kat))+run_pochylenie*size2+strzelanie2/10,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+22-kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(+22-kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22-jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(-180-kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(-180-kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(-180-kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(-180-kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(-220-kat+globalny_kat))*40/3)*size),+podskoczenie-20+y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+jump)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(-220-kat+globalny_kat))*40/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}
}
}



if animacja=3{
if size2=1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/20-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(150+kat+globalny_kat))*30/3)*size)),+podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien*-1-15)*strzelanie+strzelanie2)*size2+schylak+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),+podskoczenie-20+y+((cos(degtorad(20+kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,+podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+((cos(degtorad(-22+kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1)*size2+globalny_kat,c_white,1)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(220+kat+globalny_kat))*40/3)*size)),+podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*run_promien*-1+15)*size2+schylak+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
}
if size2=-1{
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(-150-kat+globalny_kat))*30/3)*size)),+podskoczenie-20+y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien*-1-15)*strzelanie+strzelanie2)*size2+schylak+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/20-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+podskoczenie-20-kat+globalny_kat))*35/3)*size),+podskoczenie-20+y+((cos(degtorad(+podskoczenie-20-kat+globalny_kat))*35/3)*size),size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3++podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,+podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+22-kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+((cos(degtorad(+22-kat+globalny_kat))*30/3)*size),size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7)*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2+globalny_kat,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+(((sin(degtorad(-220-kat+globalny_kat))*40/3)*size)),+podskoczenie-20+y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(40+180+kat-sin(degtorad(run_kat))*run_promien*-1+15)*size2+schylak+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5++podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/20+15+strzelanie2/10)*size2-160*size2+globalny_kat,c_white,1/alpha_wchodzenie_do_etapu)}
}


bieg_sampel+=abs(szybkosc_biegu)
if bieg_sampel>=180
    {
    bieg_sampel=0
    kalafior=round(random(1))
    //SXMS_SFX_PlayExt(kalafior,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,0,0)
    }



kat=-10
//size=1
run_kat-=szybkosc_biegu
bieganie_reki-=szybkosc_biegu
run_promien=50
if run_pochylenie>-10 run_pochylenie-=0.3} //


















if animacja=4{
// bieg berserkera
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,(((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+strzelanie2)*berserk-berserk3)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,+podskoczenie-20+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(berserk3))*10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,+podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,((180+kat-sin(degtorad(run_kat))*run_promien/2+15)*berserk-berserk3)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
berserk2=1
kat=-10
//size=1
run_kat-=20
run_promien=50
if run_pochylenie>-10 run_pochylenie-=0.3


if berserk2=1
    {
    berserk3+=24
    }
}


if animacja=5{
// torpeda
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie+podskoczenie-20+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+strzelanie2+torpeda)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,+podskoczenie+podskoczenie-20+y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+torpeda)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,+podskoczenie+podskoczenie-20+y+sin(degtorad(run_kat))/2,size,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie+podskoczenie-20+y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+torpeda)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7-torpeda)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,+podskoczenie+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,+podskoczenie+podskoczenie-20+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+torpeda*2)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if torpeda<70 {torpeda+=10}
kat-=8
}


// SCHYLANIE
if animacja=6{
// schylanie
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15+schylanie/5)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1-schylanie*2+strzelanie2/10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,schylanie/5+y+podskoczenie-20+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie*3+strzelanie2/5)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,schylanie/5+y+podskoczenie-20+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2+60*size2+ogon_uderzak+sin(degtorad(ogon_merda))*20,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22+schylanie)*size2,c_white,1)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie*3-strzelanie2/10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,schylanie/5+podskoczenie-20+y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie*3)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,schylanie/5+y+podskoczenie-20+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(schylanie/5+180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if schylanie<40 && mamamija=0 {schylanie+=2;run_pochylenie-=2}
if schylanie>=40 && mamamija=0 {schylanie=40;mamamija=1}
if run_pochylenie<=-50 {run_pochylenie=-50}
if mamamija=1 {schylanie=schylanie+sin(degtorad(mamamija2))/3;run_pochylenie=run_pochylenie+sin(degtorad(mamamija2))/3;mamamija2+=2.5}
run_promien=0

if mamamija=1 {
for(i=0;i<8;i+=1)
    {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_map_gwiazdker,0,x+sin(degtorad(mamamija2+i*45))*(40*min(1,mamamija2/100)),y+cos(degtorad(mamamija2+i*45))*(20*min(1,mamamija2/100))-(50*min(1,mamamija2/100)),0.75+sin(degtorad(mamamija2*2+i*45))/2,0.75+sin(degtorad(mamamija2*2+i*45))/2,0,c_white,mamamija2/150)
    draw_set_blend_mode(bm_normal)
    }
    
for(i=0;i<8;i+=1)
    {
    draw_sprite_ext(s_map_gwiazdker,0,x+sin(degtorad(mamamija2+i*45))*(40*min(1,mamamija2/100)),y+cos(degtorad(mamamija2+i*45))*(20*min(1,mamamija2/100))-(50*min(1,mamamija2/100)),0.75+sin(degtorad(mamamija2*2+i*45))/5,0.75+sin(degtorad(mamamija2*2+i*45))/5,0,c_white,mamamija2/50)
    }}
    
    if mamamija=1 {
}
}







if animacja=7{
// skok


if size2=1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size+podskoczenie-20,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size+podskoczenie-20,size*size2,-size,((kat+sin(degtorad(run_kat))*run_promien/2-15+jump)*strzelanie+strzelanie2)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size+podskoczenie-20,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3+y+sin(degtorad(run_kat))/2+podskoczenie-20,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+sin(degtorad(ogon_merda))*20++ogon_uderzak,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2+podskoczenie-20,size*size2,size,kat+sin(degtorad(run_kat))+run_pochylenie*size2+strzelanie2/10,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size+podskoczenie-20,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22-jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat))+podskoczenie-20,(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat))+podskoczenie-20,(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size),y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size+podskoczenie-20,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+jump)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size+podskoczenie-20,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}
}

if size2=-1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(-150-kat+globalny_kat))*30/3)*size),schylanie/5+podskoczenie-20+y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(-150-kat+globalny_kat))*30/3)*size),podskoczenie-20+y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,-size,((kat+sin(degtorad(run_kat))*run_promien/2-15+jump)*strzelanie+strzelanie2)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-20-kat+globalny_kat))*35/3)*size),y+(cos(degtorad(-20-kat+globalny_kat))*35/3)*size+podskoczenie-20,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+jump)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3+y+sin(degtorad(run_kat))/2+podskoczenie-20,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+sin(degtorad(ogon_merda))*20++ogon_uderzak,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2+podskoczenie-20,size*size2,size,kat+sin(degtorad(run_kat))+run_pochylenie*size2+strzelanie2/10,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+22-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(+22-kat+globalny_kat))*30/3)*size+podskoczenie-20,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22-jump)*size2,c_white,1)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(-180-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-180-kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat))+podskoczenie-20,(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,c_white,1/alpha_wchodzenie_do_etapu)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(-180-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-180-kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat))+podskoczenie-20,(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,c_white,mrugacz[2]/alpha_wchodzenie_do_etapu)
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(-220-kat+globalny_kat))*40/3)*size),y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size+podskoczenie-20,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+jump)*size2+schylak,c_white,1/alpha_wchodzenie_do_etapu)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(-220-kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size+podskoczenie-20,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,c_white,1/alpha_wchodzenie_do_etapu)}
}
}

/* */
if uzyto_bonusu_1=1
    {
    SXMS_SFX_PlayExt(44,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
    uzyto_bonusu_1=2
    uzyto_bonusu_3+=1
    }
if uzyto_bonusu_1=2
    {
    if uzyto_bonusu_2<2 {uzyto_bonusu_2+=0.05}
    uzyto_bonusu_3+=1
    if uzyto_bonusu_3>50 {uzyto_bonusu_3=0;uzyto_bonusu_1=3}
    }
if uzyto_bonusu_1=3
    {
    if uzyto_bonusu_2>0 {uzyto_bonusu_2-=0.05}
    if uzyto_bonusu_2<=0 {uzyto_bonusu_1=0}
    }

    
    
draw_sprite_ext(s_map_glowwer_1,0,x,y-32,sin(uzyto_bonusu_4)*uzyto_bonusu_2,sin(uzyto_bonusu_4)*uzyto_bonusu_2,1,c_white,1)
uzyto_bonusu_4+=0.5

/* */
if rusz_przeciwnikami=1
    {
    if instance_number(o_map_atakujacy_przeciwnik)>0
        {
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id[i]
            if iii.object_index=o_map_atakujacy_przeciwnik {with(iii){moze_isc+=1}};
            rusz_przeciwnikami=0
            }
        
        
        }
    
    
    
    }
    
if zabierz_ruch_przeciwnikom=1
    {
    zabierz_ruch_przeciwnikom=0
        if instance_number(o_map_atakujacy_przeciwnik)>0
        {
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id[i]
            if iii.object_index=o_map_atakujacy_przeciwnik {iii.dotykal=0;iii.moze_isc=0;/*iii.idzie=0*/};
            }
        
        
        }
    
    
    
    
    
    
    
    }

/* */
if global.game_over=0 && !triggered_by_enemy=1 && global.chwilowy_stopper<=0 && o_map_sterownik.item_selecting=0 && global.mapa_sterownosc=0 && idzie=0 && global.zycia>=0 && podskocz_po_gameover=0
    {
    // wejscie
    if place_meeting(x,y,o_button_map_1) && global.delayer>=1000 && triggered_by_enemy=0 && global.mario_skusil=0 && idzie=0
    {
    lolox=instance_place(x,y,o_button_map_1)
    global.przenies_do_etapu=0
    with(lolox) {if variable_local_exists("przenies_do_etapu") {global.przenies_do_etapu=przenies_do_etapu}}
    
    ruch_delay+=1
    // WEJSCIE DO KAZDEGO ETAPU PROCZ BONUSOWEGO
    if o_map_sterownik.klickersus=0 && lolox.goto_level<>0 && lolox.bonus_level<>1 && lolox.generuj_statek<>2 && global.map_completed_sequence=0
        {
        if keyboard_check(global.ster_jump) || keyboard_check(global.ster_fire) || keyboard_check(vk_enter) && !instance_exists(o_dialog) && ruch_delay>5
            {
            instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)
            //SXMS_SFX_PlayExt(10+round(random(3)),(x-view_xview[0])/(view_xview[0]+800),255,0,0,0)
            //SXMS_SFX_PlayExt(19,(x-view_xview[0])/(view_xview[0]+800),255,0,0,0)
            SXMS_SFX_PlayExt(19,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
            SXMS_SFX_PlayExt(131+round(random(2)),(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)

            
            global.id_of_killed_atacker=0
            no_smoke_po_wejsciu=1
            part_system_depth(global.particle_map_overscreen,-99999999) 
            o_map_sterownik.klickersus=1
            animacja_wchodzenia_do_etapu=1
            global.mario_wszedl_do_etapu=1
            podskocz_po_gameover=1
            podskocznix=-10
            animacja=7
            part_particles_create(global.particle_map_overscreen,x,y,global.part_map_chmurker,3);
            }
        
        }
        
        // WEJSCIE DO BONUSOWEGO ETAPU - JAK NIE JEST PRZESZNIETY
    if o_map_sterownik.klickersus=0 && lolox.goto_level<>0 && lolox.bonus_level=1 && lolox.completed=0 && global.map_completed_sequence=0
        {
        if keyboard_check(global.ster_jump) || keyboard_check(global.ster_fire) || keyboard_check(vk_enter) && !instance_exists(o_dialog) && ruch_delay>5
            {
            instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)
            SXMS_SFX_PlayExt(19,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
            SXMS_SFX_PlayExt(131+round(random(2)),(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
        
            global.id_of_killed_atacker=0
            no_smoke_po_wejsciu=1
            part_system_depth(global.particle_map_overscreen,-99999999) 
            o_map_sterownik.klickersus=1
            animacja_wchodzenia_do_etapu=1
            global.mario_wszedl_do_etapu=1
            podskocz_po_gameover=1
            podskocznix=-10
            animacja=7
            part_particles_create(global.particle_map_overscreen,x,y,global.part_map_chmurker,3);
            }
        
        }
    }
    }
    



    
    
    if animacja_wchodzenia_do_etapu=1 && global.mario_wszedl_do_etapu=1
        {
        if size>0 {size-=0.01}
        if size<0.45 {alpha_wchodzenie_do_etapu+=0.1+alpha_wchodzenie_do_etapu}
        wlacz_etap_timer+=1
        }
        // potrzas jakas grafika na mapie jak wchodzi do etapu
    if wlacz_etap_timer=40
        {
        if place_meeting(x,y,o_button_map_1)
            {
            koko=instance_place(x,y,o_button_map_1)
            with(koko) {if variable_local_exists("potrzas1") {if potrzas1>100000 {potrzas1.efekter1=100;SXMS_SFX_PlayExt(58,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)}}}
            }
        }


        
    if wlacz_etap_timer>100
        {
        if place_meeting(x,y,o_button_map_1)
            {
            koko=instance_place(x,y,o_button_map_1)
            if global.chpoint_lvl_selected<>koko.goto_level {global.mario_ktory_pokonal=koko.id;global.chpoint_id=0;global.chpoint_sublevel=0;global.chpoint_lvl_selected=koko.goto_level}
            if room=global.mario_ktory_pokonal {global.mario_ktory_pokonal=koko.id}
            
            
            
            if global.chpoint_id=0 {
            if koko.goto_level<>0 {room_goto(koko.goto_level)}}
            
            if global.chpoint_id<>0 {
            if koko.goto_level<>0 {room_goto(global.chpoint_sublevel)}}
            
            
            
            }
        
        
        
        
        }

/* */
if global.mario_wszedl_do_etapu=2 && animacja_wyjscia_z_etapu=0 {animacja_wyjscia_z_etapu=1}
if animacja_wyjscia_z_etapu>=1
    {
    animacja_wyjscia_z_etapu+=1
    if animacja_wyjscia_z_etapu=2 {podskocz_po_gameover=1;podskocznix=-7; }
    if podskocz_po_gameover=1 {animacja=5}
    if podskocz_po_gameover=0
        {
        global.mario_wszedl_do_etapu=0;animacja_wyjscia_z_etapu=0
        //pokonal etap
        if global.mario_completed_stage=1 && global.mario_ktory_pokonal.completed=0 {global.mario_ktory_pokonal.completed=1}
        }
    
    
    }
    
    
    
    
    
    
    /*
    
    
    anim_wyjscia_y=0
anim_wyjscia_add=0

/* */
/*  */
