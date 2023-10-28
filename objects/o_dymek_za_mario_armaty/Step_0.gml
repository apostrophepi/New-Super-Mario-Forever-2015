if global.pauza=0
    {
    x=obj_mario.x
    y=obj_mario.y
    if timer<10 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y+random(40)-random(40),prt1,1)}
    if timer>10 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y+random(40)-random(40),prt3,1)}
    if timer>=40 {instance_destroy()}
    timer+=1
    
    
    
    
    
    }
    
    

