if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {

if place_meeting(x,y,obj_mario)
    {
    fofo=instance_place(x,y,obj_mario)
    with(fofo) {
    if sekwencja=1 && grawitacja>-14 {grawitacja-=2}
    if sekwencja=0 {sekwencja=1}}
    }
if place_meeting(x,y,obj_mario_duch)
    {
    fofo=instance_place(x,y,obj_mario_duch)
    with(fofo) {y-=2}
    }
    
    
    
    
    if random(100)>85 {
    part_particles_create(global.particle_sys_przed_morkami,x+random(40)-random(40),y+random(40)-random(40),global.part_lava_smoke_leci_do_gory3,3)}



    }
    
    
    
    
    
    image_xscale=10
    image_yscale=-15

