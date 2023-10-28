if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_brick_alone,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1)

if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1;eksploduj_bez_mario_duzego=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.20}
if zniszczony_od_muszli=1
    {
    SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    koko=instance_create(x,y,o_point_brick_destroyed)
    koko.sprite_index=global.gfx_point_brick_alone
    instance_destroy()
    }
if destroy=1 && bump3=0
    {
    if eksploduj_bez_mario_duzego=1
        {
        global.punkty+=200
        SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        koko=instance_create(x,y,o_point_brick_destroyed)
        koko.sprite_index=global.gfx_point_brick_alone
        instance_destroy()
        }
    if obj_mario.can_destroy_brick=1{
    global.punkty+=200
    SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    koko=instance_create(x,y,o_point_brick_destroyed)
    koko.sprite_index=global.gfx_point_brick_alone
    instance_destroy()
    }
    SXMS_SFX_PlayExt(43,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_create(x,y-16,o_block_killer)
    destroy=2
    bump=-40
    bump2=random(40)-random(40)
    //bump3=0.05
    }
}


} // end of deactivator

if killuj=1 {instance_destroy()}

