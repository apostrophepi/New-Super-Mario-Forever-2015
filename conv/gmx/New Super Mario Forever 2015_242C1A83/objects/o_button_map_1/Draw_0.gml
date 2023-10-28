if generuj_dialog=0 {
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
if goto_level<>0 && goto_level<20000{
if completed=0 {
draw_sprite_ext(sprite_index,1,x,y+kefcio,1,1,0,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,1,x,y+kefcio,1,1,0,c_white,sin(koko)/2)
draw_set_blend_mode(bm_normal)}
if completed=1 {
draw_sprite_ext(sprite_index,0,x,y+kefcio,1,1,0,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,0,x,y+kefcio,1,1,0,c_white,sin(koko)/2)
draw_set_blend_mode(bm_normal)}

}
if goto_level=0{
draw_sprite_ext(s_button_map_2,0,x,y+kefcio,1,1,0,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_button_map_2,0,x,y+kefcio,1,1,0,c_white,sin(koko)/2)
draw_set_blend_mode(bm_normal)}


koko+=0.1


if place_meeting(x,y,o_map_player_1) && kefcio<10 && o_map_player_1.idzie=0 {kefcio+=5}
if !place_meeting(x,y,o_map_player_1) && kefcio>0 {kefcio=kefcio/1.1}

// POSIADA BRAME
if posiada_brame=1
    {
    draw_sprite_ext(s_map_efekter_1,0,x+brama_x,y+brama_y-25,0.35,0.35,koko,c_white,1)
    draw_sprite_ext(s_map_gate,0,x+brama_x,y+brama_y,1,1,0,c_white,1)
    }
// POSIADA KLUCZ
if key=1{
draw_sprite_ext(s_map_key_cloud,0,x+40,y-100,lolok+lolok*sin(koko)/5,lolok+lolok*sin(koko)/5,360,c_white,1)

if sekwencja<100 {sekwencja+=1}
if sekwencja=100 && lolok<1 {lolok+=0.05}
if lolok>=1 && sekwencja>=100 && sekwencja<200 {sekwencja+=1}
if sekwencja=200 && lolok>0 {lolok-=0.05}
if sekwencja=200 && lolok<=0 {sekwencja=0}}}
    
    
    
    
}

if generuj_dialog<>0 {
// dialog zblizeniowy - TOAD
if generuj_dialog=1
    {
    if x>o_map_player_1.x-80 && x<o_map_player_1.x+80 && y>o_map_player_1.y-80 && y<o_map_player_1.y+80 && o_map_player_1.idzie=0
        {
        SXMS_SFX_PlayExt(121,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
        generuj_dialog=2
        }
    }
if generuj_dialog=2
    {
    generuj_dialog=3
    dodor=instance_create(x,y-100,o_dialog)
    if global.english_or_polish=1 {dodor.tekst=tekst2}
    if global.english_or_polish=0 {dodor.tekst=tekst}
    dodor.nalezy_do=id
    }
if generuj_dialog=3 && !instance_exists(dodor)
    {
    image_alpha-=0.05
    if image_alpha<=0 {generuj_dialog=4}
    }
if generuj_dialog=4
    {
    image_alpha=0
    }
    
    
draw_sprite_ext(s_map_shadow_1,0,x,y+20,1-sin(stream/10)/40,1+sin(stream/10)/40,sin(stream)*10,c_white,image_alpha)   
draw_sprite_ext(s_map_toad_1,0,x,y,1+sin(stream)/40,1-sin(stream)/40,sin(stream)/40,c_white,image_alpha)
draw_sprite_ext(s_map_toad_2,0,x+8,y-5,1-sin(stream/10)/40,1+sin(stream/10)/40,sin(stream)*10,c_white,image_alpha)


stream+=0.1





















} // koniec

if ukryta_droga=2 && utworzyl_droge=0
    {
    utworzyl_droge=1
    ukryta_droga=3
    dodox=instance_create(x,y,o_tworz_ukryta_droge)
    dodox.ilosc_tilesow=ilosc_tilesow
    dodox.kierunek=zmodyfikuj_kierunek
    dodox.depth=depth+100
    if zmodyfikuj_kierunek=1 {lewo=1}
    if zmodyfikuj_kierunek=2 {prawo=1}
    if zmodyfikuj_kierunek=3 {gora=1}
    if zmodyfikuj_kierunek=4 {dol=1}
    }
if ukryta_droga>2 && utworzyl_droge=0
    {
    utworzyl_droge=1
    dodox=instance_create(x,y,o_tworz_ukryta_droge_instant)
    dodox.ilosc_tilesow=ilosc_tilesow
    dodox.kierunek=zmodyfikuj_kierunek
    dodox.depth=depth+100
    if zmodyfikuj_kierunek=1 {lewo=1}
    if zmodyfikuj_kierunek=2 {prawo=1}
    if zmodyfikuj_kierunek=3 {gora=1}
    if zmodyfikuj_kierunek=4 {dol=1}
    }
    


    /*
    
    // tworzenie niewidzialne sciezki
ukryta_droga=1 // 1 - ukryta, 2 - animacja odkrywania, 3 - zaadaptowana na mapie
zmodyfikuj_kierunek=0 // 0 - lewo, 1 - prawo, 2 - gora, 3 dol
rodzaj_sciezki=0 // 0 - zwykla, 1 - kamienna
ilosc_tilesow=0 // ile sciezek w kiedunku ktory bedzie sie tworzyc


tile_add(background,left,top,width,height,x,y,depth)

/* */
/*  */
