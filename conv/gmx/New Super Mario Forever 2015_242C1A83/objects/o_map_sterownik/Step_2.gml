if !keyboard_check(vk_tab) && !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) && !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_jump)
&& !keyboard_check(global.ster_fire) {klicknieto=0;sampel_ogladania_mapy=0}
// efekt boczkow dla ogladania mapy

if keyboard_check(vk_tab) && boczki_alpha<1  && !item_selecting=1 && global.delayer>=1000 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0 {boczki_alpha+=0.1;klicknieto=1; if sampel_ogladania_mapy=0 {sampel_ogladania_mapy=1;SXMS_SFX_PlayExt(123,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)}}
if !keyboard_check(vk_tab) && boczki_alpha>0.5 {boczki_alpha-=0.1}

if keyboard_check(vk_tab) && boczki_przyciemniaj_hud<200 && !item_selecting=1 && global.delayer>=1000 && global.chwilowy_stopper<=0 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0 {boczki_przyciemniaj_hud+=1;klicknieto=1}
if !keyboard_check(vk_tab) && boczki_przyciemniaj_hud>1 {boczki_przyciemniaj_hud=boczki_przyciemniaj_hud/2}
if boczki_przyciemniaj_hud<1 {boczki_przyciemniaj_hud=1}

// przesuwanie ekranem mapy
if o_map_player_1.idzie=0 && keyboard_check(vk_tab) && !item_selecting=1 && global.delayer>=1000 && global.chwilowy_stopper<=0 && global.mario_skusil=0 && global.game_over=0
    {
    global.mapa_sterownosc=1
    klicknieto=1
    }
if global.mapa_sterownosc=1
    {
    if keyboard_check(global.ster_up) {przesun_mape_y-=5;klicknieto=1}
    if keyboard_check(global.ster_down) {przesun_mape_y+=5;klicknieto=1}
    if keyboard_check(global.ster_left) {przesun_mape_x-=5;if efekciar>-5 {efekciar-=0.1};klicknieto=1}
    if keyboard_check(global.ster_right) {przesun_mape_x+=5;;if efekciar<5 {efekciar+=0.1};klicknieto=1}
    if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) {efekciar=efekciar/1.2}
    }
if global.mapa_sterownosc=1 && !keyboard_check(vk_tab)
    {
    global.mapa_sterownosc=0
    ;klicknieto=1
    }
if global.mapa_sterownosc<>1
    {
    przesun_mape_x=przesun_mape_x/1.2
    przesun_mape_y=przesun_mape_y/1.2
    if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) {efekciar=efekciar/1.2}
    }
if global.mapa_sterownosc=0 {efekciar=efekciar/1.2}
__view_set( e__VW.Angle, 0, efekciar )


/*testvar+=0.001
view_wview[0]=800*testvar
view_hview[0]=600*testvar
*/

if global.map_baw_sie_scroolem_map_x>global.map_baw_sie_scroolem_map_x2 {global.map_baw_sie_scroolem_map_x-=2}
if global.map_baw_sie_scroolem_map_x<global.map_baw_sie_scroolem_map_x2 {global.map_baw_sie_scroolem_map_x+=2}
if global.map_baw_sie_scroolem_map_y>global.map_baw_sie_scroolem_map_y2 {global.map_baw_sie_scroolem_map_y-=2}
if global.map_baw_sie_scroolem_map_y<global.map_baw_sie_scroolem_map_y2 {global.map_baw_sie_scroolem_map_y+=2}



    __view_set( e__VW.XView, 0, o_map_player_1.x-400*testvar+przesun_mape_x+o_map_player_1.gate_opened_x+global.map_baw_sie_scroolem_map_x+o_map_player_1.open_road_x )
    __view_set( e__VW.YView, 0, o_map_player_1.y-300*testvar+przesun_mape_y+o_map_player_1.gate_opened_y+global.map_baw_sie_scroolem_map_y+o_map_player_1.open_road_y )
    
    
    // popraw pozycję mapy, zeby gracz nie mogl wyjsc po za playground
    
    if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
    if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

/* */
/*  */
