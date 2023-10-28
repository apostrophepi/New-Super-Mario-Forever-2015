if global.pauza=0
    {
    timer+=1
    if timer>ilosc {timer=0;ilosc+=1;repeat(1){part_particles_create(global.particle_sys_1,x+random(30)-random(30)+20,y-random(30)+random(30)+20,global.part_zdobycie_monety,1)}}
    if ilosc>3 {instance_destroy()}
    }

