draw_sprite_ext(s_big_lavas,0,x,y,1+sin(stream/2)/80,1-sin(stream/2)/80,sin(stream/20)*10,c_white,sin(stream/10)/5+0.75)
stream+=0.5
if random(100)>99 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y+random(40)-random(40),global.part_effect_red_smoke,1)}

