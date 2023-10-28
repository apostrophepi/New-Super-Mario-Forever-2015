if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
if random(100)>80 {part_particles_create(global.particle_sys_1,x+random(5)-random(5),y+random(10)-random(10),global.part_fx_wodospad_z_rury_1,1)}
if random(100)>10 {part_particles_create(global.particle_sys_1,x+random(5)-random(5),y+random(10)-random(10),global.part_fx_wodospad_z_rury_2,1)}
if random(100)>50 {part_particles_create(global.particle_sys_1,x+random(5)-random(5),y+random(10)-random(10),global.part_fx_wodospad_z_rury_3,1)}

}

