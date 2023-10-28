if oblicz_tekst=0
    {
    oblicz_tekst=1
    // PRZEMIEL TEKST I DODAJ ENTERY
for (ik=0;ik<500;ik+=1)
    {
if i<string_length(tekst)+1
    {
    iii=string_copy(tekst,i,1)
    if iii="ś" {iii="s"}
    if iii="ć" {iii="c"}
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
    
    migaj+=3
    draw_sprite_ext(s_dialog_chmurken,0,nalezy_do.x+sin(degtorad(migaj))*10,nalezy_do.y-50-sin(degtorad(migaj/4))*4,wielkosc/dodawaj_wylacz+sin(degtorad(migaj/4))/dodawaj_wylacz/20,wielkosc/dodawaj_wylacz-sin(degtorad(migaj/2))/dodawaj_wylacz/20,sin(degtorad(migaj/2))*3,c_white,1)
    
    //draw_sprite_ext(s_dialog_chmurken,0,nalezy_do.x+sin(degtorad(migaj))*20,nalezy_do.y-50,wielkosc/dodawaj_wylacz+sin(degtorad(migaj))/dodawaj_wylacz/5,wielkosc/dodawaj_wylacz-sin(degtorad(migaj))/dodawaj_wylacz/5,0,c_white,1)
    if wielkosc<1 {wielkosc+=0.025}
    draw_set_font(global.map_fonts_1)
    if timer>70 {draw_set_alpha(pierwsza_linijka_alpha) {draw_text_transformed(nalezy_do.x-15,nalezy_do.y-210-przesuniecie_linijki,string_hash_to_newline(dialog[przesuniety_tekst]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}}
    if timer<=70 {draw_set_alpha(alpha_tekstu) {draw_text_transformed(nalezy_do.x-15,nalezy_do.y-210-przesuniecie_linijki,string_hash_to_newline(dialog[przesuniety_tekst]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}}
    draw_set_alpha(alpha_tekstu)
    if ilosc_linijek>1 {draw_text_transformed(nalezy_do.x-15,nalezy_do.y-210+30-przesuniecie_linijki,string_hash_to_newline(dialog[przesuniety_tekst+1]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    if ilosc_linijek>2 {draw_text_transformed(nalezy_do.x-15,nalezy_do.y-210+60-przesuniecie_linijki,string_hash_to_newline(dialog[przesuniety_tekst+2]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    if ilosc_linijek>3 {draw_text_transformed(nalezy_do.x-15,nalezy_do.y-210+90-przesuniecie_linijki,string_hash_to_newline(dialog[przesuniety_tekst+3]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    
    draw_set_alpha(1-pierwsza_linijka_alpha)
    if ilosc_linijek>4 {draw_text_transformed(nalezy_do.x-15,nalezy_do.y-210+120-przesuniecie_linijki,string_hash_to_newline(dialog[przesuniety_tekst+4]),wielkosc/1.45/dodawaj_wylacz,wielkosc/1.45/dodawaj_wylacz,0)}
    draw_set_alpha(1)
    
    
    draw_text_transformed(nalezy_do.x-15-200,nalezy_do.y-210,string_hash_to_newline(tekst2),wielkosc/1.45,wielkosc/1.45,0)
    if przesuniety_tekst<ilosc_linijek-4 {draw_sprite_ext(s_dialog_button_1,0,x+170,y+25,1/dodawaj_wylacz,1/dodawaj_wylacz,0,c_white,0.5+abs(sin(stream)))}
    if przesuniety_tekst>=ilosc_linijek-4 {draw_sprite_ext(s_dialog_button_2,0,x+170,y+25,1/dodawaj_wylacz,1/dodawaj_wylacz,0,c_white,0.5+abs(sin(stream)))}
    }
    
    
if global.pauza=100
    {
    if keyboard_check(vk_anykey) && kliknieto=0 && zmiana_linijki=0 && przesuniety_tekst<ilosc_linijek-4 && timer>50 {kliknieto=1;zmiana_linijki=1;SXMS_SFX_PlayExt(122,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}
    if !keyboard_check(vk_anykey) {kliknieto=0}
    if keyboard_check(vk_anykey) && kliknieto=0 && zmiana_linijki=0 && przesuniety_tekst>=ilosc_linijek-4 {kliknieto=1;wylacz=1}
    if timer>=50 {alpha_tekstu+=0.05}
    if wylacz=1 {dodawaj_wylacz+=1+dodawaj_wylacz/20;if alpha_tekstu>1 {alpha_tekstu-=0.01}if sampeluj=0 {sampeluj=1;SXMS_SFX_PlayExt(123,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}}
    if dodawaj_wylacz>500 {instance_destroy();global.pauza=0}
    }
    
    
    
    /*
    
    
    
    przesuniety_tekst=0
kliknieto=0
    ilosc_linijek=0
    
    

    
    
    

/* */
/*  */
