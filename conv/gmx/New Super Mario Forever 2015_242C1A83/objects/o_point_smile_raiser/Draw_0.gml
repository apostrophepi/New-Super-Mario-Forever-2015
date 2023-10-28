if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_music_box,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1-bump3)
if bump>-5 {draw_sprite_ext(global.gfx_point_smiechor_2,0,x+20,y+30+downed+bump,2,-1,bump2,c_white,1-bump3)}
if bump<=-5 {draw_sprite_ext(global.gfx_point_smiechor_4,0,x+20,y+30+downed+bump,1,1,bump2,c_white,1-bump3)}
draw_sprite_ext(global.gfx_point_buziol_eyes,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1-bump3)


if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump>-0.05 {bump=0}
if bump3<>0 && bump3<1 {bump3+=0.05}
if timer>=1 {timer+=1}
if timer>200
    {
    timer=0
    for (i=0;i<actual_block+1;i+=1)
        {
        with(block_id[i]){zniszcz=1}
        }
    actual_block=0
    }
if destroy=1 && killed=0
    {
    //SXMS_SFX_PlayExt(111,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    bump=-20
    destroy=0
    timer=1
    if actual_block<3
        {
        block_id[actual_block]=instance_create(x,y-40*actual_block-40,o_point_smile_raiser_2)
        actual_block+=1
        }
    for (i=0;i<actual_block+1;i+=1) {block_id[i].destroy=1}
    }
}



} // end of deactivator

