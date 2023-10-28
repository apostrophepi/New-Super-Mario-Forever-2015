draw_sprite_ext(s_map_lavar,0,x,y,1+sin(stream/2)/30,1-sin(stream/2)/30,sin(stream/20)*20,c_white,sin(stream/10)/5+0.75)
stream+=0.5
if random(100)>99 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y+random(40)-random(40),global.part_effect_red_smoke,1)}

