script_map_control()
script_game_over()
script_show_level_names()

if wybral_mape_1=1
    {
    
    draw_set_color(c_black)
    draw_set_alpha(wybral_mape_2)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    
    wybral_mape_2+=0.01+wybral_mape_2/100
    
    if zmien_mape=0 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_1)}
    if zmien_mape=1 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_2)}
    if zmien_mape=2 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_3)}
    if zmien_mape=3 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_4)}
    if zmien_mape=4 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_5)}
    if zmien_mape=5 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_6)}
    if zmien_mape=6 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_7)}
    if zmien_mape=7 && wybral_mape_2>=1 {global.map_wgraj_wartosci=1;room_goto(room_map_8)}
    
    draw_sprite_ext(s_map_twarz_przechodzenie,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,wielkosc_glowy_map,wielkosc_glowy_map,0,c_white,1)
    wielkosc_glowy_map+=0.01+wielkosc_glowy_map/50
    global.efektuj_przejscie_mapy=wielkosc_glowy_map
    blokuj_przyciemnianie_glowy_w_nastepnej_mapie=1
    }
if global.efektuj_przejscie_mapy<>0 && blokuj_przyciemnianie_glowy_w_nastepnej_mapie=0
    {
    draw_sprite_ext(s_map_twarz_przechodzenie,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,global.efektuj_przejscie_mapy,global.efektuj_przejscie_mapy,0,c_white,alpha_glowy_mario)
    draw_set_color(c_black)
    draw_set_alpha(alpha_glowy_mario/2)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    
    
    global.efektuj_przejscie_mapy+=0.01+global.efektuj_przejscie_mapy/50
    alpha_glowy_mario=alpha_glowy_mario/1.1
    if alpha_glowy_mario<=0.05 {global.efektuj_przejscie_mapy=0;alpha_glowy_mario=0}
    }



/*'
wybral_mape_1=0
wybral_mape_2=0


global.efektuj_przejscie_mapy

/* */
/*  */
