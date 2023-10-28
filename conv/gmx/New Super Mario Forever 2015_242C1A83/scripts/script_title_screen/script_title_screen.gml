if zniknij>0
    {
    if zniknij=249 {window_set_visible(0)}
    zniknij-=1
    
    if zniknij=1 {window_set_visible(1)}
    }




delayer+=1
if mf_old_alpha>0 {
draw_sprite_ext(global.mf_old,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act-mf_old*global.ekran_size_act*2,__view_get( e__VW.YView, 0 )+600*global.ekran_size_act-mf_old*global.ekran_size_act*2,1*global.ekran_size_act+sin(degtorad(stream/5))/20,1*global.ekran_size_act-sin(degtorad(stream/5))/20,mf_old/2+sin(degtorad(stream/5))*10,c_white,mf_old_alpha)
}


if delayer=410 {kaczypciorx=-20}
if kaczypciorx<>0 {kaczypcio+=kaczypciorx;kaczypciorx=kaczypciorx/1.1}

x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+kaczypcio


    if run_game>=1 {run_game+=1}
    if run_game=100 {instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)}
    if run_game>=260 {room_goto(save_game_room)}



// START
if sekwencja<3 {
draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(anim)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
wafel=0
if global.english_or_polish=0 {wafel="Press Any Key to Start game!"}
if global.english_or_polish=1 {wafel="Naciśnij Dowolny Klawisz aby zacząć!"}


draw_set_alpha(anim/10)
draw_set_blend_mode(bm_add)
draw_text_transformed(x,y+200*global.ekran_size_act,string_hash_to_newline(wafel),efekt+1.2*global.ekran_size_act+sin(degtorad(stream))/10*global.ekran_size_act,efekt1+1.2*global.ekran_size_act+sin(degtorad(stream))/10*global.ekran_size_act,0)
draw_text_transformed(x,y+200*global.ekran_size_act,string_hash_to_newline(wafel),efekt+1.4*global.ekran_size_act+sin(degtorad(stream))/10*global.ekran_size_act,efekt1+1.4*global.ekran_size_act+sin(degtorad(stream))/10*global.ekran_size_act,0)
draw_set_blend_mode(bm_normal)
draw_set_alpha(anim)


draw_text_transformed(x,y+200*global.ekran_size_act,string_hash_to_newline(wafel),efekt+1.1*global.ekran_size_act+sin(degtorad(stream))/10*global.ekran_size_act,efekt1+1.1*global.ekran_size_act+sin(degtorad(stream))/10*global.ekran_size_act,0)
draw_set_alpha(1)}

stream+=1

if sekwencja=0 && anim<1 {anim+=0.025}
if sekwencja=0 && anim>=1 {sekwencja=1}
if sekwencja=1 && keyboard_check(vk_anykey) && klik=0 {przyspieszone_opcje=1;klik=1;sekwencja=2;SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)} // !!!!!!!!SAMPEL!!!!!!!!
if sekwencja=2 {efekt+=0.1; efekt1+=0.1; anim=anim/1.3}
if sekwencja=2 && anim<=0.01 {anim=0;sekwencja=3}
if sekwencja=3
    {
    if przyspieszone_opcje=1 {przyspieszone_opcje=2;
    if o_title_screen_logo_MARIO_FOREVER.zaczyna_sie<400 {
    if o_title_screen_logo_MARIO_FOREVER.przesowanko2=0 && o_title_screen_logo_MARIO_FOREVER.used_1=0 {o_title_screen_logo_MARIO_FOREVER.przesowanko2=-15;o_title_screen_logo_MARIO_FOREVER.used_1=1}
    o_title_screen_logo_2012.zaczyna_sie=400}}

    if global.english_or_polish=0 {
    opcja[0]="START GAME"
    opcja[1]="OPTIONS"
    opcja[2]="EDIT LEVELS"
    opcja[3]="CLASSIC MARIO FOREVER"
    opcja[4]="QUIT"
    }
    
    if global.english_or_polish=1 {
    opcja[0]="START"
    opcja[1]="OPCJE GRY"
    opcja[2]="EDYTOR ETAPÓW"
    opcja[3]="KLASYCZNE MARIO FOREVER"
    opcja[4]="WYJŚCIE"}
    

if opcjar=0
    {
    if anim<1 && zmien_opcje=0 {anim+=0.05}
    draw_set_font(global.map_fonts_1)
    draw_set_color(c_white)
    draw_set_alpha(anim)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text_transformed(x,__view_get( e__VW.YView, 0 )+250*global.ekran_size_act,string_hash_to_newline(opcja[0]),1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_text_transformed(x,__view_get( e__VW.YView, 0 )+250*global.ekran_size_act+40*global.ekran_size_act,string_hash_to_newline(opcja[2]),1*global.ekran_size_act+sin(degtorad(dodawacz2))*dodawacz_promien2*global.ekran_size_act,1*global.ekran_size_act+sin(degtorad(dodawacz2))*dodawacz_promien2*global.ekran_size_act,0)
    draw_text_transformed(x,__view_get( e__VW.YView, 0 )+250*global.ekran_size_act+80*global.ekran_size_act,string_hash_to_newline(opcja[1]),1*global.ekran_size_act+sin(degtorad(dodawacz3))*dodawacz_promien3*global.ekran_size_act,1*global.ekran_size_act+sin(degtorad(dodawacz3))*dodawacz_promien3*global.ekran_size_act,0)
    draw_text_transformed(x,__view_get( e__VW.YView, 0 )+250*global.ekran_size_act+120*global.ekran_size_act,string_hash_to_newline(opcja[4]),1*global.ekran_size_act+sin(degtorad(dodawacz4))*dodawacz_promien4*global.ekran_size_act,1*global.ekran_size_act+sin(degtorad(dodawacz4))*dodawacz_promien4*global.ekran_size_act,0)
    draw_text_transformed(x,__view_get( e__VW.YView, 0 )+250*global.ekran_size_act+160*global.ekran_size_act,string_hash_to_newline(opcja[3]),1*global.ekran_size_act+sin(degtorad(dodawacz5))*dodawacz_promien5*global.ekran_size_act,1*global.ekran_size_act+sin(degtorad(dodawacz5))*dodawacz_promien5*global.ekran_size_act,0)
    
    
    draw_set_alpha(1)
    

    
    stream+=5
    
    if start_game=1 {dodawacz1=dodawacz1/1.3;klik=1;dodawacz_promien1=dodawacz_promien1/1.3;dodawacz_promien2=dodawacz_promien2/1.3;dodawacz_promien3=dodawacz_promien3/1.3;dodawacz_promien4=dodawacz_promien4/1.3}
    if dodawacz1>360 && start_game=0 {dodawacz1=0}
    // sterowanie
    if start_gamer=0 && zmien_opcje=0 {
    if keyboard_check(vk_down) && klik=0 {klik=1;wybor_opcji+=1;SXMS_SFX_PlayExt(409,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if keyboard_check(vk_up) && klik=0 {klik=1;wybor_opcji-=1;SXMS_SFX_PlayExt(409,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    if !joystick_check_button(0,0) && !joystick_check_button(0,1) && !joystick_check_button(0,2) && !joystick_check_button(0,3) && !joystick_check_button(0,4) && !keyboard_check(vk_down) && !keyboard_check(vk_up) && !keyboard_check(vk_enter) && !keyboard_check(vk_shift) && !keyboard_check(vk_control) && klik=1 && zniknij=0 {klik=0}
    
    
    
    if wybor_opcji>4 {wybor_opcji=0}
    if wybor_opcji<0 {wybor_opcji=4}
    
    
    // quit game
    if wybor_opcji=3 && (keyboard_check(vk_enter) || keyboard_check(vk_shift) || keyboard_check(vk_control) || joystick_check_button(0,0) || joystick_check_button(0,1) || joystick_check_button(0,2) || joystick_check_button(0,3) || joystick_check_button(0,4)) && klik=0 && start_game=0
        {
        SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        game_end()
        }
        
    // start game
    
    if wybor_opcji=0 && (keyboard_check(vk_enter) || keyboard_check(vk_shift) || keyboard_check(vk_control) || joystick_check_button(0,0) || joystick_check_button(0,1) || joystick_check_button(0,2) || joystick_check_button(0,3) || joystick_check_button(0,4) ) && klik=0 && start_game=0
        {
        if run_game=0 {run_game=1}
        SXMS_C_Stop()
        SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        SXMS_SFX_PlayExt(410,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        start_game=1
        dodawacz1=720
        }
    // OLD MARIO FOREVER
    if linked>=1 {linked+=1}
    if linked>10 {linked=0}
    if wybor_opcji=4
        {
        if mf_old_alpha<1 {mf_old_alpha+=0.05}
        if mf_old<60 {mf_old+=3}
        if (keyboard_check(vk_enter) || keyboard_check(vk_control) || keyboard_check(vk_shift) || joystick_check_button(0,0) || joystick_check_button(0,1) || joystick_check_button(0,2) || joystick_check_button(0,3) || joystick_check_button(0,4)) && linked=0 && klik=0
            {
            zniknij=250
            SXMS_SFX_PlayExt(409,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            linked=1
            klik=1
            execute_shell("http://www.softendo.com/game/MF",0)
            }
        
        }
    if wybor_opcji<>4
        {
        if mf_old_alpha>0 {mf_old_alpha-=0.05}
        if mf_old>0 {mf_old-=4}
        }
    
    
    
    
    
    
    
    
    // SOON EDITOR
    if instance_number(o_SOON_Editor_Napis)=0 && wybor_opcji=1 && (keyboard_check(vk_enter) || keyboard_check(vk_shift) || keyboard_check(vk_control) || joystick_check_button(0,0) || joystick_check_button(0,1) || joystick_check_button(0,2) || joystick_check_button(0,3) || joystick_check_button(0,4)) && klik=0
        {
        klik=0
        instance_create(x,y,o_SOON_Editor_Napis)
        SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        
        
        }
    
    // WLACZENIE OPCJI DODATKOWYCH
    if wybor_opcji=2 && (keyboard_check(vk_enter) || keyboard_check(vk_shift) || keyboard_check(vk_control) || joystick_check_button(0,0) || joystick_check_button(0,1) || joystick_check_button(0,2) || joystick_check_button(0,3) || joystick_check_button(0,4)) && klik=0
        {
        zmien_opcje=1
        SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }

    
    
    
    }
    
    // SEKWENCJA WLACZANIA OPCJI DODATKOWYCH
    //if zmien_opcje<>1 && alpha_opcji_tlowych>0 {alpha_opcji_tlowych=alpha_opcji_tlowych/1.03}
    if zmien_opcje=1
        {
        if anim>0 {anim-=0.05}
        if alpha_opcji_tlowych<0.5 {alpha_opcji_tlowych+=0.01}
        if efekcior_tlowy_opcji>1 {efekcior_tlowy_opcji=1+efekcior_tlowy_opcji/1.3}
        }
    if zmien_opcje=1 && anim<=0
        {
        zmien_opcje=2
        }
    if zmien_opcje=2 && anim2<=1
        {
        anim2+=0.05
        }
    if zmien_opcje=2 && anim2>=1
        {
        if zmienia_przycisk_sterowania=0 && zmienia_przycisk_sterowania2=0 && zmienia_przycisk_sterowania3=0 && zmienia_przycisk_sterowania4=0 && zmienia_przycisk_sterowania5=0 && zmienia_przycisk_sterowania6=0 && zmienia_przycisk_sterowania7=0 {
        if keyboard_check(vk_down) && klik=0  && zmienianie_dodatkowych_opcji<12 {SXMS_SFX_PlayExt(409,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienianie_dodatkowych_opcji+=1;przesowanko_docelowe-=30}
        if keyboard_check(vk_up) && klik=0 && zmienianie_dodatkowych_opcji>0 {SXMS_SFX_PlayExt(409,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienianie_dodatkowych_opcji-=1;przesowanko_docelowe+=30}}
        if !keyboard_check(vk_left) && !keyboard_check(vk_right) && !keyboard_check(vk_down) && !keyboard_check(vk_up) && !keyboard_check(vk_enter) && !keyboard_check(vk_shift) && !keyboard_check(vk_control) && !joystick_check_button(0,0) && !joystick_check_button(0,1) && !joystick_check_button(0,2) && !joystick_check_button(0,3) && !joystick_check_button(0,4) && zniknij=0 {klik=0}
        if zmienianie_dodatkowych_opcji>12 {zmienianie_dodatkowych_opcji=12;}
        if zmienianie_dodatkowych_opcji<0 {zmienianie_dodatkowych_opcji=0;}
        
        // przesowanko animowane efekciarskie
        if przesowanko_docelowe<>0 {przesowanko_dodatkowych_opcji+=przesowanko_docelowe/30;przesowanko_docelowe=przesowanko_docelowe/1.03}
        
        // WYBOR WINDOWED
        if global.windowed=0 && tick=0 {tick=1;window_set_fullscreen(0);window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2)}
        if global.windowed=1 && tick=0 {tick=1;window_set_fullscreen(1);window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2)}
        if global.windowed=2 && tick=0 {tick=1;window_set_fullscreen(0);window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2)}
        
        if zmienianie_dodatkowych_opcji=0 && klik=0 && keyboard_check(vk_left) && global.windowed>0 {tick=0;klik=1;global.windowed-=1;graphical_tick=0;SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        if zmienianie_dodatkowych_opcji=0 && klik=0 && keyboard_check(vk_right) && global.windowed<2 {tick=0;klik=1;global.windowed+=1;graphical_tick=0;SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        if global.windowed=0 && graphical_tick=0
            {
            graphical_tick=1
            window_set_size(800,600)
            window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2);
            screen_refresh();
            }
        if global.windowed=1 && graphical_tick=0 
            {
            //display_set_all(800,600,-1,-1)
            window_get_stayontop()
            window_set_position(0,0);window_set_size(display_get_width(),display_get_height());screen_refresh();graphical_tick=1}
        if global.windowed=2 && graphical_tick=0 
            {
            //display_set_all(800,600,-1,-1)
            graphical_tick=1
            window_set_size(1200,900)
            window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2);
            screen_refresh();
            }

        }
// WYJSCIE Z DODATKOWYCH OPCJI
    if zmienianie_dodatkowych_opcji=12 && klik=0 && (keyboard_check(vk_enter) || keyboard_check(vk_shift) || keyboard_check(vk_control) || joystick_check_button(0,0) || joystick_check_button(0,1) || joystick_check_button(0,2) || joystick_check_button(0,3) || joystick_check_button(0,4)) 
        {
        SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        zmien_opcje=0
        klik=1
        }
    if zmien_opcje=0
        {
        anim2=anim2/1.1
        alpha_opcji_tlowych=alpha_opcji_tlowych/1.1
        zmienianie_dodatkowych_opcji=0
        przesowanko_dodatkowych_opcji=0
        przesowanko_docelowe=0
        przesowanko_rozdzialka=0
        }
        
        
// USTAWIANIE GLOSNOSCI
    if zmienianie_dodatkowych_opcji=3
        {
        if global.aktual_music_volume>0 && keyboard_check(vk_left) {global.aktual_music_volume-=2.55}
        if global.aktual_music_volume<255 && keyboard_check(vk_right) {global.aktual_music_volume+=2.55}
        }
    if zmienianie_dodatkowych_opcji=4
        {
        if global.glosnosc_dzwieku>0 && keyboard_check(vk_left) {global.glosnosc_dzwieku-=2.55}
        if global.glosnosc_dzwieku<255 && keyboard_check(vk_right) {global.glosnosc_dzwieku+=2.55}
        }
// USTAWIANIE PRZYCISKOW STEROWANIA GORA
    if zmienianie_dodatkowych_opcji=5
        {
        if klik=0 && keyboard_check(vk_enter)
            {
            SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            zmienia_przycisk_sterowania=1
            klik=1
            }
        if zmienia_przycisk_sterowania=1
            {
            if keyboard_check(vk_anykey) && klik=0 {SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienia_przycisk_sterowania=0;global.ster_up=keyboard_lastkey}
            }
        }
// USTAWIANIE PRZYCISKOW STEROWANIA DOL
    if zmienianie_dodatkowych_opcji=6
        {
        if klik=0 && keyboard_check(vk_enter)
            {
            SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            zmienia_przycisk_sterowania2=1
            klik=1
            }
        if zmienia_przycisk_sterowania2=1
            {
            if keyboard_check(vk_anykey) && klik=0 {SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienia_przycisk_sterowania2=0;global.ster_down=keyboard_lastkey}
            }
        }
// USTAWIANIE PRZYCISKOW STEROWANIA LEWO
    if zmienianie_dodatkowych_opcji=7
        {
        if klik=0 && keyboard_check(vk_enter)
            {
            SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            zmienia_przycisk_sterowania3=1
            klik=1
            }
        if zmienia_przycisk_sterowania3=1
            {
            if keyboard_check(vk_anykey) && klik=0 {SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienia_przycisk_sterowania3=0;global.ster_left=keyboard_lastkey}
            }
        }
// USTAWIANIE PRZYCISKOW STEROWANIA PRAWO
    if zmienianie_dodatkowych_opcji=8
        {
        if klik=0 && keyboard_check(vk_enter)
            {
            SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            zmienia_przycisk_sterowania4=1
            klik=1
            }
        if zmienia_przycisk_sterowania4=1
            {
            if keyboard_check(vk_anykey) && klik=0 {SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienia_przycisk_sterowania4=0;global.ster_right=keyboard_lastkey}
            }
        }
// USTAWIANIE PRZYCISKOW STEROWANIA JUMP
    if zmienianie_dodatkowych_opcji=9
        {
        if klik=0 && keyboard_check(vk_enter)
            {
            zmienia_przycisk_sterowania5=1
            klik=1
            SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            }
        if zmienia_przycisk_sterowania5=1
            {
            if keyboard_check(vk_anykey) && klik=0 {SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienia_przycisk_sterowania5=0;global.ster_jump=keyboard_lastkey}
            }
        }
// USTAWIANIE PRZYCISKOW STEROWANIA FIRE
    if zmienianie_dodatkowych_opcji=10
        {
        if klik=0 && keyboard_check(vk_enter)
            {
            zmienia_przycisk_sterowania6=1
            klik=1
            SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            }
        if zmienia_przycisk_sterowania6=1
            {
            if keyboard_check(vk_anykey) && klik=0 {SXMS_SFX_PlayExt(408,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);klik=1;zmienia_przycisk_sterowania6=0;global.ster_fire=keyboard_lastkey}
            }
        }        
        
                
                
        
                
        
            

    
    // TLUMACZENIE DODATKOWYCH OPCJI
    if global.english_or_polish=0 {
    if global.windowed=0 {text_windowed="WINDOW"}
    if global.windowed=1 {text_windowed="WIDE"}
    if global.windowed=2 {text_windowed="LARGER WINDOW"}
    if global.windowed=3 {text_windowed="FULL SCREEN"}


    text_rozdzialka[0]="GAME IS RESIZABLE BY MOUSE"
    text_rozdzialka[1]="1024x768"
    text_rozdzialka[2]="1280x720"
    text_rozdzialka[4]="1280x800"
    text_rozdzialka[5]="1280x960"
    text_rozdzialka[6]="1280x1024"
    text_rozdzialka[7]="1600x900"
    text_rozdzialka[8]="1680x1050"
    text_rozdzialka[9]="1776x1000"
    text_rozdzialka[10]="1920x1080"
    
    
        
    tekst_dodatkowych_opcji[0]="GRAPHICS OPTIONS:"
    tekst_dodatkowych_opcji[1]="SCREEN MODE"
    tekst_dodatkowych_opcji[2]=""
    tekst_dodatkowych_opcji[3]="WINDOW BORDER"
    tekst_dodatkowych_opcji[4]="SOUND OPTIONS:"
    tekst_dodatkowych_opcji[5]="MUSIC VOLUME"
    tekst_dodatkowych_opcji[6]="SOUND VOLUME"
    tekst_dodatkowych_opcji[7]="CONTROL OPTIONS:"
    tekst_dodatkowych_opcji[8]="MOVING UP"
    tekst_dodatkowych_opcji[9]="MOVING DOWN"
    tekst_dodatkowych_opcji[10]="MOVING LEFT"
    tekst_dodatkowych_opcji[11]="MOVING RIGHT"
    tekst_dodatkowych_opcji[12]="JUMPING"
    tekst_dodatkowych_opcji[13]="FIRING"
    tekst_dodatkowych_opcji[14]="ADDITIONAL OPTIONS :"
    tekst_dodatkowych_opcji[15]="PLAY ON JOYPAD ON!"
    tekst_dodatkowych_opcji[16]="EXIT OPTIONS"
    zmienia_przycisk_tekst="PRESS ANY KEY!"
    }
    if global.english_or_polish=1 {
    
    if global.windowed=0 {text_windowed="OKIENKO"}
    if global.windowed=1 {text_windowed="ROZCIĄGNIĘTY"}
    if global.windowed=2 {text_windowed="POWIĘKSZONE OKNO"}
    
    text_rozdzialka[0]="MOZNA ZMIENIC ROZMIAR OKNA MYSZKĄ"
    text_rozdzialka[1]="1024x768"
    text_rozdzialka[2]="1280x720"
    text_rozdzialka[4]="1280x800"
    text_rozdzialka[5]="1280x960"
    text_rozdzialka[6]="1280x1024"
    text_rozdzialka[7]="1600x900"
    text_rozdzialka[8]="1680x1050"
    text_rozdzialka[9]="1776x1000"
    text_rozdzialka[10]="1920x1080"
        
    tekst_dodatkowych_opcji[0]="OPCJE WYŚWIETLANIA:"
    tekst_dodatkowych_opcji[1]="TRYB OKIENKA"
    tekst_dodatkowych_opcji[2]=""
    tekst_dodatkowych_opcji[3]="RAMKA OKNA"
    tekst_dodatkowych_opcji[4]="OPCJE DŹWIĘKOWE:"
    tekst_dodatkowych_opcji[5]="GŁOŚNOŚĆ MUZYKI"
    tekst_dodatkowych_opcji[6]="GŁOŚNOŚĆ EFEKTÓW"
    tekst_dodatkowych_opcji[7]="OPCJE STEROWANIA:"
    tekst_dodatkowych_opcji[8]="IDŹ DO GÓRY"
    tekst_dodatkowych_opcji[9]="IDŹ NA DÓŁ"
    tekst_dodatkowych_opcji[10]="IDŹ W LEWO"
    tekst_dodatkowych_opcji[11]="IDŹ W PRAWO"
    tekst_dodatkowych_opcji[12]="SKAKANIE"
    tekst_dodatkowych_opcji[13]="STRZELANIE"
    tekst_dodatkowych_opcji[14]="DODATKI :"
    tekst_dodatkowych_opcji[15]="MOŻNA GRAĆ NA JOPADZIE"
    tekst_dodatkowych_opcji[16]="WYJŚCIE Z OPCJI"
    zmienia_przycisk_tekst="WCIŚNIJ KLAWISZ KTÓRY CHCESZ USTAWIĆ!"
    }
    // RYSUJ DODATKOWE OPCJE    
    
    draw_set_alpha(alpha_opcji_tlowych)
    draw_set_color(c_black)
    draw_rectangle(__view_get( e__VW.XView, 0 )+efekcior_tlowy_opcji,__view_get( e__VW.YView, 0 )+efekcior_tlowy_opcji,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-efekcior_tlowy_opcji,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-efekcior_tlowy_opcji,0)
    draw_set_font(global.map_fonts_1)
    draw_set_color(c_white)
    draw_set_alpha(anim2)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    wiwi=0
    draw_set_color(c_yellow)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[0]),1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    draw_set_color(c_white)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[1]+" "+text_windowed),sin(degtorad(dod_opcji1))*dod_opcji_promien1*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji1))*dod_opcji_promien1*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[2]+" "+text_rozdzialka[0]),sin(degtorad(dod_opcji2))*dod_opcji_promien2*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji2))*dod_opcji_promien2*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[3]),sin(degtorad(dod_opcji3))*dod_opcji_promien3*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji3))*dod_opcji_promien3*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    draw_set_color(c_yellow)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[4]),1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[5]+" "+string(round(global.aktual_music_volume/2.55))),sin(degtorad(dod_opcji4))*dod_opcji_promien4*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji4))*dod_opcji_promien4*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[6]+" "+string(round(global.glosnosc_dzwieku/2.55))),sin(degtorad(dod_opcji5))*dod_opcji_promien5*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji5))*dod_opcji_promien5*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    draw_set_color(c_yellow)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[7]),1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1
    
    
    // sterowanie do gory
    if zmienia_przycisk_sterowania=0{
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[8]+":"+string(global.znak[global.ster_up])),sin(degtorad(dod_opcji6))*dod_opcji_promien6*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji6))*dod_opcji_promien6*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1}
    if zmienia_przycisk_sterowania=1{
    draw_set_color(c_orange)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(zmienia_przycisk_tekst),sin(degtorad(dod_opcji6))*dod_opcji_promien6*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji6))*dod_opcji_promien6*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1}
    
    
    if zmienia_przycisk_sterowania2=0{
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[9]+":"+string(global.znak[global.ster_down])),sin(degtorad(dod_opcji7))*dod_opcji_promien7*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji7))*dod_opcji_promien7*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1}
    if zmienia_przycisk_sterowania2=1{
    draw_set_color(c_orange)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(zmienia_przycisk_tekst),sin(degtorad(dod_opcji7))*dod_opcji_promien7*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji7))*dod_opcji_promien7*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1}
    
    
    
    if zmienia_przycisk_sterowania3=0{
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[10]+":"+string(global.znak[global.ster_left])),sin(degtorad(dod_opcji8))*dod_opcji_promien8*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji8))*dod_opcji_promien8*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1}
        
    if zmienia_przycisk_sterowania3=1{
    draw_set_color(c_orange)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(zmienia_przycisk_tekst),sin(degtorad(dod_opcji8))*dod_opcji_promien8*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji8))*dod_opcji_promien8*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1}
    
    
    
    
    
    if zmienia_przycisk_sterowania4=0{
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[11]+":"+string(global.znak[global.ster_right])),sin(degtorad(dod_opcji9))*dod_opcji_promien9*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji9))*dod_opcji_promien9*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1}
    if zmienia_przycisk_sterowania4=1{
    draw_set_color(c_orange)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(zmienia_przycisk_tekst),sin(degtorad(dod_opcji9))*dod_opcji_promien9*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji9))*dod_opcji_promien9*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1}
    
    
    
    
    
    
    
    if zmienia_przycisk_sterowania5=0{
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[12]+":"+string(global.znak[global.ster_jump])),sin(degtorad(dod_opcji10))*dod_opcji_promien10*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji10))*dod_opcji_promien10*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1}
    if zmienia_przycisk_sterowania5=1{
    draw_set_color(c_green)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(zmienia_przycisk_tekst),sin(degtorad(dod_opcji10))*dod_opcji_promien10*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji10))*dod_opcji_promien10*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1}
    
    
    
    
    
    if zmienia_przycisk_sterowania6=0{
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[13]+":"+string(global.znak[global.ster_fire])),sin(degtorad(dod_opcji11))*dod_opcji_promien11*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji11))*dod_opcji_promien11*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1}
    if zmienia_przycisk_sterowania6=1{
    draw_set_color(c_red)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(zmienia_przycisk_tekst),sin(degtorad(dod_opcji11))*dod_opcji_promien11*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji11))*dod_opcji_promien11*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1}
    
    
    
    draw_set_color(c_yellow)
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[14]),1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_color(c_white)
    wiwi+=1
    
    
    
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[15]),sin(degtorad(dod_opcji12))*dod_opcji_promien12*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji12))*dod_opcji_promien12*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    wiwi+=1
    
    
    
    draw_text_transformed(x,przesowanko_dodatkowych_opcji*global.ekran_size_act+wiwi*30*global.ekran_size_act+y+100*global.ekran_size_act,string_hash_to_newline(tekst_dodatkowych_opcji[16]),sin(degtorad(dod_opcji13))*dod_opcji_promien13*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,sin(degtorad(dod_opcji13))*dod_opcji_promien13*global.ekran_size_act+1.1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    
    
    
    
    
    draw_set_alpha(1)
        
        
        
        
        
    // START GAME
    if start_gamer=0
        {
        if wybor_opcji=0 && (keyboard_check(vk_enter) || keyboard_check(vk_shift) || keyboard_check(vk_control)) && klik=0
            {
            start_gamer=1
            }
        
        
        }
    
    if wybor_opcji=0 {dodawacz1+=10;if dodawacz_promien1<0.2 {dodawacz_promien1+=0.05}}
    if wybor_opcji<>0 {if dodawacz_promien1>0 {dodawacz_promien1=dodawacz_promien1/2};dodawacz1=dodawacz1/1.3}
    
        if wybor_opcji=1 {dodawacz2+=10;if dodawacz_promien2<0.2 {dodawacz_promien2+=0.05}}
    if wybor_opcji<>1 {if dodawacz_promien2>0 {dodawacz_promien2=dodawacz_promien2/2};dodawacz2=dodawacz2/1.3}
    
        if wybor_opcji=2 {dodawacz3+=10;if dodawacz_promien3<0.2 {dodawacz_promien3+=0.05}}
    if wybor_opcji<>2 {if dodawacz_promien3>0 {dodawacz_promien3=dodawacz_promien3/2};dodawacz3=dodawacz3/1.3}
    
        if wybor_opcji=3 {dodawacz4+=10;if dodawacz_promien4<0.2 {dodawacz_promien4+=0.05}}
    if wybor_opcji<>3 {if dodawacz_promien4>0 {dodawacz_promien4=dodawacz_promien4/2};dodawacz4=dodawacz4/1.3}
    
        if wybor_opcji=4 {dodawacz5+=10;if dodawacz_promien5<0.2 {dodawacz_promien5+=0.01}}
    if wybor_opcji<>4 {if dodawacz_promien5>0 {dodawacz_promien5=dodawacz_promien5/2};dodawacz5=dodawacz5/1.3}
    

    }



    
}








// ANIMOWANIE I ZMIENNOWANIE DODATKOWYCH OPCJI


    if zmienianie_dodatkowych_opcji=0 {dod_opcji1+=10;if dod_opcji_promien1<0.2 {dod_opcji_promien1+=0.05}}
    if zmienianie_dodatkowych_opcji<>0 {if dod_opcji_promien1>0 {dod_opcji_promien1=dod_opcji_promien1/2};dod_opcji1=dod_opcji1/1.3}

    if zmienianie_dodatkowych_opcji=1 {dod_opcji2+=10;if dod_opcji_promien2<0.2 {dod_opcji_promien2+=0.05}}
    if zmienianie_dodatkowych_opcji<>1 {if dod_opcji_promien2>0 {dod_opcji_promien2=dod_opcji_promien2/2};dod_opcji2=dod_opcji2/1.3}

    if zmienianie_dodatkowych_opcji=2 {dod_opcji3+=10;if dod_opcji_promien3<0.2 {dod_opcji_promien3+=0.05}}
    if zmienianie_dodatkowych_opcji<>2 {if dod_opcji_promien3>0 {dod_opcji_promien3=dod_opcji_promien3/2};dod_opcji3=dod_opcji3/1.3}

    if zmienianie_dodatkowych_opcji=3 {dod_opcji4+=10;if dod_opcji_promien4<0.2 {dod_opcji_promien4+=0.05}}
    if zmienianie_dodatkowych_opcji<>3 {if dod_opcji_promien4>0 {dod_opcji_promien4=dod_opcji_promien4/2};dod_opcji4=dod_opcji4/1.3}

    if zmienianie_dodatkowych_opcji=4 {dod_opcji5+=10;if dod_opcji_promien5<0.2 {dod_opcji_promien5+=0.05}}
    if zmienianie_dodatkowych_opcji<>4 {if dod_opcji_promien5>0 {dod_opcji_promien5=dod_opcji_promien5/2};dod_opcji5=dod_opcji5/1.3}


    if zmienianie_dodatkowych_opcji=5 {dod_opcji6+=10;if dod_opcji_promien6<0.2 {dod_opcji_promien6+=0.05}}
    if zmienianie_dodatkowych_opcji<>5 {if dod_opcji_promien6>0 {dod_opcji_promien6=dod_opcji_promien6/2};dod_opcji6=dod_opcji6/1.3}
    
    if zmienianie_dodatkowych_opcji=6 {dod_opcji7+=10;if dod_opcji_promien7<0.2 {dod_opcji_promien7+=0.05}}
    if zmienianie_dodatkowych_opcji<>6 {if dod_opcji_promien7>0 {dod_opcji_promien7=dod_opcji_promien7/2};dod_opcji7=dod_opcji7/1.3}
    
    if zmienianie_dodatkowych_opcji=7 {dod_opcji8+=10;if dod_opcji_promien8<0.2 {dod_opcji_promien8+=0.05}}
    if zmienianie_dodatkowych_opcji<>7 {if dod_opcji_promien8>0 {dod_opcji_promien8=dod_opcji_promien8/2};dod_opcji8=dod_opcji8/1.3}
    
    if zmienianie_dodatkowych_opcji=8 {dod_opcji9+=10;if dod_opcji_promien9<0.2 {dod_opcji_promien9+=0.05}}
    if zmienianie_dodatkowych_opcji<>8 {if dod_opcji_promien9>0 {dod_opcji_promien9=dod_opcji_promien9/2};dod_opcji9=dod_opcji9/1.3}
    
    if zmienianie_dodatkowych_opcji=9 {dod_opcji10+=10;if dod_opcji_promien10<0.2 {dod_opcji_promien10+=0.05}}
    if zmienianie_dodatkowych_opcji<>9 {if dod_opcji_promien10>0 {dod_opcji_promien10=dod_opcji_promien10/2};dod_opcji10=dod_opcji10/1.3}
     
    if zmienianie_dodatkowych_opcji=10 {dod_opcji11+=11;if dod_opcji_promien11<0.2 {dod_opcji_promien11+=0.05}}
    if zmienianie_dodatkowych_opcji<>10 {if dod_opcji_promien11>0 {dod_opcji_promien11=dod_opcji_promien11/2};dod_opcji11=dod_opcji11/1.3}   
  
  if zmienianie_dodatkowych_opcji=11 {dod_opcji12+=12;if dod_opcji_promien12<0.2 {dod_opcji_promien12+=0.05}}
    if zmienianie_dodatkowych_opcji<>11 {if dod_opcji_promien12>0 {dod_opcji_promien12=dod_opcji_promien12/2};dod_opcji12=dod_opcji12/1.3} 
    
    if zmienianie_dodatkowych_opcji=12 {dod_opcji13+=12;if dod_opcji_promien13<0.2 {dod_opcji_promien13+=0.05}}
    if zmienianie_dodatkowych_opcji<>12 {if dod_opcji_promien13>0 {dod_opcji_promien13=dod_opcji_promien13/2};dod_opcji13=dod_opcji13/1.3}       










// USTAW JEZYK KLAWISZY

if ustaw_jezyk_klawiszy=0 && global.english_or_polish=0
    {
    ustaw_jezyk_klawiszy=1
    
    global.znak[92]=" RIGHT WINDOWS"
global.znak[20]=" CAPS LOCK"
global.znak[345]="SCROLLLOCK"
global.znak[32]="SPACE"
global.znak[192]="TILDE"
global.znak[48]="DIGIT0"
global.znak[49]="DIGIT 1"
global.znak[50]=" DIGIT 2"
global.znak[51]=" DIGIT 3"
global.znak[52]=" DIGIT 4"
global.znak[53]=" DIGIT 5"
global.znak[54]=" DIGIT 6"
global.znak[55]=" DIGIT 7"
global.znak[56]=" DIGIT 8"
global.znak[57]=" DIGIT 9"
global.znak[189]=" MINUS"
global.znak[187]=" EQUAL"
global.znak[8]=" BACKSPACE"
global.znak[81]=" Q"
global.znak[87]=" W"
global.znak[69]=" E"
global.znak[82]=" R"
global.znak[84]=" T"
global.znak[89]=" Y"
global.znak[85]=" U"
global.znak[73]=" I"
global.znak[79]=" O"
global.znak[80]=" P"
global.znak[186]=" :"
global.znak[219]=" LEFT SQUARE BRACKET"
global.znak[221]=" RIGHT SQUARE BRACKET"
global.znak[65]=" A"
global.znak[83]=" S"
global.znak[68]=" D"
global.znak[70]=" F"
global.znak[71]=" G"
global.znak[72]=" H"
global.znak[74]=" J"
global.znak[75]=" K"
global.znak[76]=" L"
global.znak[168]=" :"
global.znak[222]=" \""
global.znak[13]=" ENTER"
global.znak[16]=" SHIFT"
global.znak[90]=" Z"
global.znak[88]=" X"
global.znak[67]=" C"
global.znak[86]=" V"
global.znak[66]=" B"
global.znak[78]=" N"
global.znak[77]=" M"
global.znak[188]=" LEFT BRACKET"
global.znak[190]=" RIGHT BRACKET"
global.znak[191]=" SLASH"
global.znak[220]=" BACKSLASH"
global.znak[17]=" CONTROL"
global.znak[91]=" LEFT WINDOW KEY"
global.znak[18]=" ALT"
global.znak[93]=" START"
global.znak[19]=" BREAK"
global.znak[45]=" INSERT"
global.znak[36]=" HOME"
global.znak[33]=" PAGE DOWN"
global.znak[46]=" DELETE"
global.znak[35]=" END"
global.znak[145]=" SCROOL LOCK"
global.znak[34]=" PAGE DOWN"
global.znak[37]=" ARROW-LEFT"
global.znak[38]=" ARROW-UP"
global.znak[40]=" ARROW-DOWN"
global.znak[39]=" ARROW-RIGHT"
global.znak[144]=" NUM LOCK"
global.znak[111]=" NUM SLASH"
global.znak[106]=" STAR"
global.znak[109]=" MINUS"
global.znak[103]=" NUM 7"
global.znak[104]=" NUM 8"
global.znak[105]=" NUM 9"
global.znak[100]=" NUM 4"
global.znak[101]=" NUM 5"
global.znak[102]=" NUM 6"
global.znak[12]=" CENTER"
global.znak[96]=": NUM 0"

global.znak[95]=": NUM POINT"


global.znak[97]=": NUM 1"
global.znak[98]=": NUM 2"
global.znak[99]=": NUM 3"
global.znak[107]=": PLUS"
global.znak[112]=": F1"
global.znak[113]=": F2"
global.znak[114]=": F3"
global.znak[115]=": F4"
global.znak[116]=": F5"
global.znak[117]=": F6"
global.znak[118]=": F7"
global.znak[119]=": F8"
global.znak[120]=": F9"
global.znak[121]=": F10"
global.znak[122]=": F11"



global.znak[123]=": F12"

global.znak[1000]=": PRESS ANY KEY"
global.znak[1001]=": JOYPAD BUTTON 1"
global.znak[1002]=": JOYPAD BUTTON 2"
global.znak[1003]=": JOYPAD BUTTON 3"
global.znak[1004]=": JOYPAD BUTTON 4"
global.znak[1005]=": JOYPAD BUTTON 5"
global.znak[1006]=": JOYPAD BUTTON 6"
global.znak[1007]=": JOYPAD BUTTON 7"
global.znak[1008]=": JOYPAD BUTTON 8"
global.znak[1009]=": JOYPAD BUTTON 9"
global.znak[1010]=": JOYPAD BUTTON 10"
global.znak[1011]=": JOYPAD BUTTON 11"
global.znak[1012]=": JOYPAD BUTTON 12"
global.znak[1013]=": JOYPAD BUTTON 13"
global.znak[1014]=": JOYPAD BUTTON 14"
global.znak[1015]=": JOYPAD BUTTON 15"
global.znak[1016]=": JOYPAD BUTTON 16"
global.znak[1017]=": JOYPAD BUTTON 17"
global.znak[1018]=": JOYPAD BUTTON 18"
global.znak[1019]=": JOYPAD BUTTON 19"
global.znak[1020]=": JOYPAD BUTTON 20"
global.znak[1021]=": JOYPAD BUTTON 21"
global.znak[1022]=": JOYPAD BUTTON 22"
global.znak[1023]=": JOYPAD BUTTON 23"
global.znak[1024]=": JOYPAD BUTTON 24"
global.znak[1023]=": JOYPAD BUTTON 25"
global.znak[1024]=": JOYPAD BUTTON 26"
global.znak[1025]=": JOYPAD BUTTON 27"
global.znak[1026]=": JOYPAD BUTTON 28"
global.znak[1027]=": JOYPAD BUTTON 29"
global.znak[1028]=": JOYPAD BUTTON 30"
global.znak[1029]=": JOYPAD BUTTON 31"
global.znak[1030]=": JOYPAD BUTTON 32"

global.znak[2000]=": PRESS ANY KEY"
global.znak[2001]=": PRESS JOY BUTTON"
    
    
    
    }



    
    
    
    
if ustaw_jezyk_klawiszy=0 && global.english_or_polish=1
    {
    
    ustaw_jezyk_klawiszy=1
    
global.znak[92]=" PRAWY WINDOWS"
global.znak[20]=" CAPS LOCK"
global.znak[345]="SCROLLLOCK"
global.znak[32]="SPACJA"
global.znak[192]="TYLDA"
global.znak[48]="CYFERKOWY 0"
global.znak[49]="CYFERKOWY 1"
global.znak[50]=" CYFERKOWY 2"
global.znak[51]=" CYFERKOWY 3"
global.znak[52]=" CYFERKOWY 4"
global.znak[53]=" CYFERKOWY 5"
global.znak[54]=" CYFERKOWY 6"
global.znak[55]=" CYFERKOWY 7"
global.znak[56]=" CYFERKOWY 8"
global.znak[57]=" CYFERKOWY 9"
global.znak[189]=" MINUS"
global.znak[187]=" RÓWNA SIĘ"
global.znak[8]=" BACKSPACE"
global.znak[81]=" Q"
global.znak[87]=" W"
global.znak[69]=" E"
global.znak[82]=" R"
global.znak[84]=" T"
global.znak[89]=" Y"
global.znak[85]=" U"
global.znak[73]=" I"
global.znak[79]=" O"
global.znak[80]=" P"
global.znak[186]=" :"
global.znak[219]=" LEWT SQUARE BRACKET"
global.znak[221]=" PRAWY SQUARE BRACKET"
global.znak[65]=" A"
global.znak[83]=" S"
global.znak[68]=" D"
global.znak[70]=" F"
global.znak[71]=" G"
global.znak[72]=" H"
global.znak[74]=" J"
global.znak[75]=" K"
global.znak[76]=" L"
global.znak[168]=" :"
global.znak[222]=" \""
global.znak[13]=" ENTER"
global.znak[16]=" SHIFT"
global.znak[90]=" Z"
global.znak[88]=" X"
global.znak[67]=" C"
global.znak[86]=" V"
global.znak[66]=" B"
global.znak[78]=" N"
global.znak[77]=" M"
global.znak[188]=" LEWY BRACKET"
global.znak[190]=" PRAWY BRACKET"
global.znak[191]=" SLASH"
global.znak[220]=" BACKSLASH"
global.znak[17]=" CONTROL"
global.znak[91]=" LEFT WINDOW KEY"
global.znak[18]=" ALT"
global.znak[93]=" START"
global.znak[19]=" BREAK"
global.znak[45]=" INSERT"
global.znak[36]=" HOME"
global.znak[33]=" PAGE DOWN"
global.znak[46]=" DELETE"
global.znak[35]=" END"
global.znak[145]=" SCROOL LOCK"
global.znak[34]=" PAGE DOWN"
global.znak[37]=" STRZAŁKA W LEWO"
global.znak[38]=" STRZAŁKA DO GÓRY"
global.znak[40]=" STRZAŁKA NA DÓŁ"
global.znak[39]=" STRZAŁKA W PRAWO"
global.znak[144]=" NUM LOCK"
global.znak[111]=" NUM SLASH"
global.znak[106]=" STAR"
global.znak[109]=" MINUS"
global.znak[103]=" NUM 7"
global.znak[104]=" NUM 8"
global.znak[105]=" NUM 9"
global.znak[100]=" NUM 4"
global.znak[101]=" NUM 5"
global.znak[102]=" NUM 6"
global.znak[12]=" CENTER"
global.znak[96]=": NUM 0"

global.znak[95]=": NUM POINT"


global.znak[97]=": NUM 1"
global.znak[98]=": NUM 2"
global.znak[99]=": NUM 3"
global.znak[107]=": PLUS"
global.znak[112]=": F1"
global.znak[113]=": F2"
global.znak[114]=": F3"
global.znak[115]=": F4"
global.znak[116]=": F5"
global.znak[117]=": F6"
global.znak[118]=": F7"
global.znak[119]=": F8"
global.znak[120]=": F9"
global.znak[121]=": F10"
global.znak[122]=": F11"



global.znak[123]=": F12"

global.znak[1000]=": PRESS ANY KEY"
global.znak[1001]=": JOYPAD BUTTON 1"
global.znak[1002]=": JOYPAD BUTTON 2"
global.znak[1003]=": JOYPAD BUTTON 3"
global.znak[1004]=": JOYPAD BUTTON 4"
global.znak[1005]=": JOYPAD BUTTON 5"
global.znak[1006]=": JOYPAD BUTTON 6"
global.znak[1007]=": JOYPAD BUTTON 7"
global.znak[1008]=": JOYPAD BUTTON 8"
global.znak[1009]=": JOYPAD BUTTON 9"
global.znak[1010]=": JOYPAD BUTTON 10"
global.znak[1011]=": JOYPAD BUTTON 11"
global.znak[1012]=": JOYPAD BUTTON 12"
global.znak[1013]=": JOYPAD BUTTON 13"
global.znak[1014]=": JOYPAD BUTTON 14"
global.znak[1015]=": JOYPAD BUTTON 15"
global.znak[1016]=": JOYPAD BUTTON 16"
global.znak[1017]=": JOYPAD BUTTON 17"
global.znak[1018]=": JOYPAD BUTTON 18"
global.znak[1019]=": JOYPAD BUTTON 19"
global.znak[1020]=": JOYPAD BUTTON 20"
global.znak[1021]=": JOYPAD BUTTON 21"
global.znak[1022]=": JOYPAD BUTTON 22"
global.znak[1023]=": JOYPAD BUTTON 23"
global.znak[1024]=": JOYPAD BUTTON 24"
global.znak[1023]=": JOYPAD BUTTON 25"
global.znak[1024]=": JOYPAD BUTTON 26"
global.znak[1025]=": JOYPAD BUTTON 27"
global.znak[1026]=": JOYPAD BUTTON 28"
global.znak[1027]=": JOYPAD BUTTON 29"
global.znak[1028]=": JOYPAD BUTTON 30"
global.znak[1029]=": JOYPAD BUTTON 31"
global.znak[1030]=": JOYPAD BUTTON 32"

global.znak[2000]=": PRESS ANY KEY"
global.znak[2001]=": PRESS JOY BUTTON"
    
    
    
    }







/*


wybor_opcji=0
sekwencja=0
timer=0
anim=0
opcja=0
klik=0
klik2=0







efekt=0
efekt1=0
efekt2=0
efekt3=0
efekt4=0
