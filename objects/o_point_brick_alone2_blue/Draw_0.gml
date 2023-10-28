if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_brick_alone2,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1)
if migacz2>0{
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_point_brick_alone2,0,x+20,y+20+downed+bump,1,1,bump2,c_white,migacz2)
draw_set_blend_mode(bm_normal)}

if global.pauza=0{
if migacz<=1000 {migacz=random(1000)}
if migacz>995 && migacz<1001 {migacz=2001; migacz2=1}
if migacz2>0 && migacz=2001 {migacz2-=0.05}
if migacz2<=0 && migacz=2001 {migacz=0}

if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
//if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.20}
if destroy=1 && bump3=0
    {
    SXMS_SFX_PlayExt(43,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    destroy=0
    bump=-40
    bump2=random(40)-random(40)
    }
}


} // end of deactivator

