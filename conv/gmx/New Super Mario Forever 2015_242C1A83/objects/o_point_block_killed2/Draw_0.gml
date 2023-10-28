if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_block,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1-bump3)
draw_sprite_ext(global.gfx_point_block_e,0,x+20,y+20+downed+bump,1,1,bump2,c_white,bump3)
draw_sprite_ext(global.gfx_point_block_u,0,x+20,y+20+sin(promien/2)*5+downed+bump,1,abs(cos(promien/2)/5)+0.75+downed/20,bump2,c_white,1-bump3)
if global.graphics>=1{
draw_set_blend_mode(bm_add)
if bump3=0 {draw_sprite_ext(global.gfx_point_block,0,x+20,y+20+downed+bump,1,1,bump2,c_white,sin(promien)/5)}
draw_set_blend_mode(bm_normal)
promien+=0.2
}

if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if destroy=1 && killed=0
    {
    killed=1
    destroy=2
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_point_block,3)
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x,y-16,o_block_killer)
    }
}




} // end of deactivator

