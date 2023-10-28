if sekwencja=0 && !instance_exists(o_MAP_COMPLETED_OBJECT)
    {
    if po_gameover_odtwarza=1 {o_map_sterownik.sampel_gameover=0;play=0;po_gameover_odtwarza=0;wyciszaj=0;sampel_gameover=0;global.mario_wszedl_do_etapu=0;SXMS_C_Volume(global.glosnosc_muzyki)}
    if play=0 {play=1; 
    SXMS_C_Stop();
    if global.map_music=100 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map_complete.mp3",0,0,0,0,0,0,0,0,0)}
    if global.map_music=8 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map8.mp3",0,0,0,0,0,0,0,0,0)}
    if global.map_music=7 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map7.ogg",0,0,0,0,0,0,0,0,0)}
    if global.map_music=6 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map6.mp3",0,0,0,0,0,0,0,0,0)}
    if global.map_music=5 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map5.mp3",0,0,0,0,0,0,0,0,0)}
    if global.map_music=4 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map4.mp3",0,0,0,0,0,0,0,0,0)}
    if global.map_music=3 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map3.mp3",0,0,0,0,0,0,0,0,0)}
    if global.map_music=1 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map1.mp3",0,0,0,0,0,0,0,0,0);
    
    }
    if global.map_music=2 {SXMS_C_Volume(global.glosnosc_muzyki);wyciszaj=0;SXMS_C_Play("./data/m/map2.ogg",0,0,0,0,0,0,0,0,0)}}
    if global.mario_wszedl_do_etapu=1 || o_map_sterownik.sampel_gameover>=1 {SXMS_C_Volume(global.glosnosc_muzyki-wyciszaj);wyciszaj+=3}
    
    SXMS_C_Volume(global.aktual_music_volume)
    }
    
    
    

