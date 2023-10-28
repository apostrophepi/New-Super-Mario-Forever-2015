if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(sprite_index,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1-bump3)

if global.pauza=0{
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if bump3>=1 {instance_destroy()}
if destroy=1
    {
    for (i=0;i<20;i+=1){
    part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_falling_brick,1)
    part_type_orientation(global.part_falling_brick,0,360,random(15)-random(15),0,0)}
    instance_create(x,y-16,o_block_killer)
    destroy=2
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    }
}


} // end of deactivator

