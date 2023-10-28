draw_set_halign(fa_left)
draw_set_valign(fa_top)




if oblicz_tekst=0
    {
    obj_mario_anim.animacja=6
    oblicz_tekst=1
    // PRZEMIEL TEKST I DODAJ ENTERY
for (ik=0;ik<1500;ik+=1)
    {
if i<string_length(tekst)+1
    {
    iii=string_copy(tekst,i,1)
    if string_char_at(iii,1)<>" " && slowo=0 {dodo+=1}
    if string_char_at(iii,1)=" " && slowo=0 {slowo=1}
    
    if slowo=1 && kiedy_kolejna_linijka+dodo<19
        {
        kopiuj=string_copy(tekst,start_kopiuj,dodo);
        tekst2=string_insert(kopiuj,tekst2,pozycja);
        slowo=0;
        start_kopiuj+=dodo;
        pozycja+=dodo;
        kiedy_kolejna_linijka+=dodo;
        dodo=1}
    if slowo=1 && kiedy_kolejna_linijka+dodo>=19
        {
        dialog[ilosc_linijek]=tekst2
        ilosc_linijek+=1
        tekst2=0
        kopiuj=string_copy(tekst,start_kopiuj+1,dodo);
        tekst2=string_insert(kopiuj,tekst2,pozycja);
        slowo=0;
        start_kopiuj+=dodo;
        pozycja+=dodo+1;
        kiedy_kolejna_linijka=string_length("#"+kopiuj);
        dodo=1}    
                    
        i+=1
    
    }
    
    if ilosc_literek_policzonych>=string_length(tekst) && ostatnia_linijka=0
        {
        //game_end()
        ostatnia_linijka=1
        dialog[ilosc_linijek]=tekst2
        ilosc_linijek+=1
        tekst2=0
        kopiuj=string_copy(tekst,start_kopiuj+1,dodo);
        tekst2=string_insert(kopiuj,tekst2,pozycja);
        slowo=0;
        start_kopiuj+=dodo;
        pozycja+=dodo+1;
        kiedy_kolejna_linijka=string_length("#"+kopiuj);
        dodo=1}
    
    ilosc_literek_policzonych+=1
    
    }
    }




if aktywowana=1
    {
    timer+=1
    stream+=0.05
    if zmiana_linijki=1 && przesuniecie_linijki<30 {przesuniecie_linijki+=3}
    if zmiana_linijki=1 && pierwsza_linijka_alpha>0 {pierwsza_linijka_alpha-=0.1}
    if zmiana_linijki=1 && przesuniecie_linijki>=30 {pierwsza_linijka_alpha=1;zmiana_linijki=0;przesuniecie_linijki=0;przesuniety_tekst+=1}
    
    animator_chmurki+=0.25
    if y<=__view_get( e__VW.YView, 0 )+300 {wafelki=450}
    if y>__view_get( e__VW.YView, 0 )+300 {wafelki=0}
    
    if show_pic<>0 {draw_sprite_ext(s_helper_chmurken,animator_chmurki,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}

    if show_pic=1 {draw_sprite_ext(s_help_dialog_1,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=2 {draw_sprite_ext(s_help_dialog_2,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=3 {draw_sprite_ext(s_help_dialog_3,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=4 {draw_sprite_ext(s_help_dialog_4,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=5 {draw_sprite_ext(s_help_dialog_5,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=6 {draw_sprite_ext(s_help_dialog_6,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=7 {draw_sprite_ext(s_help_dialog_7,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=8 {draw_sprite_ext(s_help_dialog_8,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=9 {draw_sprite_ext(s_help_dialog_5,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=10 {draw_sprite_ext(s_help_dialog_5,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    if show_pic=11 {draw_sprite_ext(s_help_dialog_5,0,nalezy_do.x+85,nalezy_do.y-350+wafelki,wielkosc/dodawaj_wylacz,wielkosc/dodawaj_wylacz,0,c_white,1)}
    
    migaj+=3
    draw_sprite_ext(s_dialog_chmurken,0,nalezy_do.x+sin(degtorad(migaj))*10,nalezy_do.y-50-sin(degtorad(migaj/4))*4,wielkosc/dodawaj_wylacz+sin(degtorad(migaj/4))/dodawaj_wylacz/20,wielkosc/dodawaj_wylacz-sin(degtorad(migaj/2))/dodawaj_wylacz/20,sin(degtorad(migaj/2))*3,c_white,1)
    if wielkosc<1 {wielkosc+=0.025}
    draw_set_font(global.map_fonts_1)
    if timer>70 {draw_set_alpha(pierwsza_linijka_alpha) {draw_text_transformed(nalezy_do.x-15+sin(degtorad(migaj))*2,5+nalezy_do.y-210-przesuniecie_linijki-sin(degtorad(migaj/4))*2,string_hash_to_newline(dialog[przesuniety_tekst]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}}
    if timer<=70 {draw_set_alpha(alpha_tekstu) {draw_text_transformed(nalezy_do.x-15+sin(degtorad(migaj))*2,5+nalezy_do.y-210-przesuniecie_linijki-sin(degtorad(migaj/4))*2,string_hash_to_newline(dialog[przesuniety_tekst]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}}
    draw_set_alpha(alpha_tekstu)
    if ilosc_linijek>1 {draw_text_transformed(nalezy_do.x-15+sin(degtorad(migaj))*2,5+nalezy_do.y-210+30-przesuniecie_linijki-sin(degtorad(migaj/4))*2,string_hash_to_newline(dialog[przesuniety_tekst+1]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    if ilosc_linijek>2 {draw_text_transformed(nalezy_do.x-15+sin(degtorad(migaj))*2,5+nalezy_do.y-210+60-przesuniecie_linijki-sin(degtorad(migaj/4))*2,string_hash_to_newline(dialog[przesuniety_tekst+2]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    if ilosc_linijek>3 {draw_text_transformed(nalezy_do.x-15+sin(degtorad(migaj))*2,5+nalezy_do.y-210+90-przesuniecie_linijki-sin(degtorad(migaj/4))*2,string_hash_to_newline(dialog[przesuniety_tekst+3]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    
    draw_set_alpha(1-pierwsza_linijka_alpha)
    if ilosc_linijek>4 {draw_text_transformed(nalezy_do.x-15+sin(degtorad(migaj))*2,5+nalezy_do.y-210+120-przesuniecie_linijki-sin(degtorad(migaj/4))*2,string_hash_to_newline(dialog[przesuniety_tekst+4]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    draw_set_alpha(1)
    
    
    draw_text_transformed(nalezy_do.x-15-200+sin(degtorad(migaj))*10,10+nalezy_do.y-210-sin(degtorad(migaj/4))*2,string_hash_to_newline(tekst2),wielkosc/1.45,wielkosc/1.45,0)
    if przesuniety_tekst<ilosc_linijek-4 {draw_sprite_ext(s_dialog_button_1,0,x+170,y+25,1/dodawaj_wylacz,1/dodawaj_wylacz,0,c_white,0.5+abs(sin(stream)))}
    if przesuniety_tekst>=ilosc_linijek-4 {draw_sprite_ext(s_dialog_button_2,0,x+170,y+25,1/dodawaj_wylacz,1/dodawaj_wylacz,0,c_white,0.5+abs(sin(stream)))}
    }
    
    
if global.pauza=49
    {
    if keyboard_check(vk_anykey) && kliknieto=0 && zmiana_linijki=0 && przesuniety_tekst<ilosc_linijek-4 && timer>50 {kliknieto=1;zmiana_linijki=1;SXMS_SFX_PlayExt(122,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if !keyboard_check(vk_anykey) {kliknieto=0}
    if keyboard_check(vk_anykey) && kliknieto=0 && zmiana_linijki=0 && przesuniety_tekst>=ilosc_linijek-4 {kliknieto=1;wylacz=1}
    if timer>=50 {alpha_tekstu+=0.05}
    if wylacz=1 {dodawaj_wylacz+=1+dodawaj_wylacz/20;if alpha_tekstu>1 {alpha_tekstu-=0.01}if sampeluj=0 {sampeluj=1;SXMS_SFX_PlayExt(123,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}
    if dodawaj_wylacz>500 && goto_level_idz=0 {instance_destroy();global.pauza=0}
    if dodawaj_wylacz>500 && goto_level_idz<>0
        {
        if naliczator=20
            {
            instance_create(x,y,o_FADE_end_level)
            }
        naliczator+=1;
        if naliczator>=80 {room_goto(goto_level_idz)}
        }
    
    }
    
    
    
    /*
    
    
    
    przesuniety_tekst=0
kliknieto=0
    ilosc_linijek=0
    
    

    
    
    

/* */
/*  */
