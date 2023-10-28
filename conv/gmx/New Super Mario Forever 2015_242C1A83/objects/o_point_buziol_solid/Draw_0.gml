if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_buziol,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1-bump3)
draw_sprite_ext(global.gfx_point_buziol_eyes,0,x+20,y+20+downed+bump,1,1-wafel2,bump2,c_white,1-bump3)

if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if wafel<1000 {wafel=random(1000)}
if wafel>990 && wafel<=1000 {wafel=2000}
if wafel=2000 && wafel2<1 {wafel2+=0.1}
if wafel=2000 && wafel2>=1 {wafel=2001}
if wafel=2001 && wafel2>0 {wafel2-=0.1}
if wafel=2001 && wafel2<=0 {wafel=0}


if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if destroy=1
    {
    SXMS_SFX_PlayExt(111,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_create(x,y,o_point_buziol_unsolid)
    instance_destroy()
    killed=1
    destroy=2
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,5)
    instance_create(x,y-16,o_block_killer)
    }
}


} // end of deactivator

