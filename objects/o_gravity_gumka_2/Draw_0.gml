if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_gravity_gumka,0,x+20,y+20+downed+bump,(1+downed/10)*-1,1,bump2,c_white,1-bump3)

draw_sprite_ext(global.gfx_gravity_gumka_oko,0,x+20-7,y+20+downed+bump-7,(1+downed/10)*-1,1,bump2,c_white,1-bump3)
draw_sprite_ext(global.gfx_gravity_gumka_oko,0,x+20+7,y+20+downed+bump+7,(1+downed/10)*-1,1,bump2,c_white,1-bump3)

draw_sprite_ext(global.gfx_gravity_gumka_oko2,0,x+20-7+sin(degtorad(point_direction(x,y,obj_mario.x,obj_mario.y)+90))*5,y+20+downed+bump-7+cos(degtorad(point_direction(x,y,obj_mario.x,obj_mario.y)+90))*5,(1+downed/10)*-1,1,bump2,c_white,1-bump3)
draw_sprite_ext(global.gfx_gravity_gumka_oko2,0,x+20+7+sin(degtorad(point_direction(x,y,obj_mario.x,obj_mario.y)+90))*5,y+20+downed+bump+7+cos(degtorad(point_direction(x,y,obj_mario.x,obj_mario.y)+90))*5,(1+downed/10)*-1,1,bump2,c_white,1-bump3)

draw_sprite_ext(global.gfx_gravity_gumka_oko3,0,x+20-8,y+20+downed+bump+10,(1+downed/10)*-1,1+sin(promien),bump2-45,c_white,1-bump3)
promien+=0.1



if global.pauza=0{
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y-4,obj_mario_windor) && kicked=0 && dotchniety=0 {downed=10;kicked=1;dotchniety=1}
if !place_meeting(x,y-4,obj_mario_windor) {dotchniety=0}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if destroy=1 && killed=0
    {
    killed=1
    destroy=2
    bump=-80
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_point_block,3)
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x+16,y+16,o_point_coin)
    instance_create(x,y-16,o_block_killer)
    global.coins+=1
    global.coins_all+=1
    }
}


} // end of deactivator

