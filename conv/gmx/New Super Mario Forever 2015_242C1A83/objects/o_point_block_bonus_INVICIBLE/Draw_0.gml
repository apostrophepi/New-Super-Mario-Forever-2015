if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}

if destroy=1
    {
    global.punkty+=200
    SXMS_SFX_PlayExt(43,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
    if rodzaj=0 {global.coins+=1}
    instance_create(x,y,o_point_block_killed)
    lolo=instance_create(x,y,o_bonus_creator)
    lolo.rodzaj=rodzaj
    instance_destroy()
    }
}







} // end of deactivator

