if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(s_golden_blocker,0,x+20,y+20+downed+bump,1-killed,1-killed,bump2,c_white,1-killed)
draw_sprite_ext(global.gfx_point_block_e,0,x+20,y+20+downed+bump,1,1,bump2,c_white,killed)


if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.20}
if coin_numba>=1 && coin_numba<19 {coin_numba+=0.05}
if killed>0 && killed<1 {killed+=0.05}
if zniszczony_od_muszli=1 && coin_numba<20
    {
    zniszczony_od_muszli=0
    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    coin_numba+=1
    if coin_numba>=20 {instance_create(x,y,o_point_brick_coiner_killed);instance_destroy()}
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_point_block,3)
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x,y-16,o_block_killer)
    global.punkty+=200
    instance_create(x,y,o_COIN_SKACZACY_RAZ)
    }
    
    
if destroy=1 && coin_numba<20
    {
    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    coin_numba+=1
    if coin_numba>=20 {instance_create(x,y,o_point_brick_coiner_killed);instance_destroy()}
    destroy=0
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_point_block,3)
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x,y-16,o_block_killer)
    global.punkty+=200
    instance_create(x,y,o_COIN_SKACZACY_RAZ)
    }
}


} // end of deactivator

