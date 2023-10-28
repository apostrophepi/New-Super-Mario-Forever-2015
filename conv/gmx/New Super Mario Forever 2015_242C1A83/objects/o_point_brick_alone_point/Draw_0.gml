if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_brick_alone,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1)

if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.20}
if zniszczony_od_muszli=1
    {
    global.punkty+=200
    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_create(x,y,o_point_block_killed)
    instance_destroy()
    
    if variable_local_exists("rodzaj") {
    lolo=instance_create(x,y,o_bonus_creator)
    lolo.rodzaj=rodzaj}
    }
    
if destroy=1 && bump3=0
    {
    global.punkty+=200
    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_create(x,y,o_point_block_killed)
    instance_destroy()
    
    if variable_local_exists("rodzaj") {
    lolo=instance_create(x,y,o_bonus_creator)
    lolo.rodzaj=rodzaj}
    }
}


} // end of deactivator

