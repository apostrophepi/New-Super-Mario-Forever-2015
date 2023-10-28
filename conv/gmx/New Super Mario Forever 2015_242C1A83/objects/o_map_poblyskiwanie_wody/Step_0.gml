if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if random(100)>50 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y,global.part_effect_water_sparkle,1)}}

