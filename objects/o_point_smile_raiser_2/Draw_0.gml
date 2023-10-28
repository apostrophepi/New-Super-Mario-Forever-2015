if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_music_box,0,x+20,y+20+downed+bump+bymp4,1,1,bump2,c_white,1-bump3)
if bump>-5 {draw_sprite_ext(global.gfx_point_smiechor_2,0,x+20,y+30+downed+bump+bymp4,2,-1,bump2,c_white,1-bump3)}
if bump<=-5 {draw_sprite_ext(global.gfx_point_smiechor_4,0,x+20,y+30+downed+bump+bymp4,1,1,bump2,c_white,1-bump3)}
draw_sprite_ext(global.gfx_point_buziol_eyes,0,x+20,y+20+downed+bump+bymp4,1,1,bump2,c_white,1-bump3)


if global.pauza=0{
if zniszcz=1 {zniszcz=2; bump3=0.05}

if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if bump3>=1 {instance_destroy()}

if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump>-0.05 {bump=0}
if bump3<>0 && bump3<1 {bump3+=0.05}
if bymp4<>0 {bymp4=bymp4/1.1}
if destroy=1 && killed=0
    {
    SXMS_SFX_PlayExt(111,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    bump=-20
    destroy=0
    }
}




} // end of deactivator

