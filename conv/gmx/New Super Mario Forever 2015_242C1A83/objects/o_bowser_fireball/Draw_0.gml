//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1)

draw_sprite_ext(s_fireball_boom,0,x,y,2,2,0,c_white,1)
draw_sprite_ext(global.gfx_bowser_fireball,0,x,y,0.5,0.5,stream*40,c_white,1)
draw_sprite_ext(global.gfx_bowser_fireball,0,x,y,0.55,0.55,-stream*20,c_white,0.5)
draw_sprite_ext(s_fireball_boom,0,x,y,2,2,0,c_white,0.1)


if x<-200 || x>2000 || y<-200 || y>2000 {instance_destroy()}

if global.pauza=0
    {
    if random(100)>90 {part_particles_create(global.particle_map_sterring,x,y,global.part_bowser_firesmoke,1)}
    if random(100)>90 {part_particles_create(global.particle_map_sterring,x+random(30)-random(30),y+random(30)-random(30),global.part_bowser_firesmoke2,1)}
    
    stream+=0.1
    if nagraj<>0 {speed=nagraj;nagraj=0}
    }
if global.pauza<>0
    {
    if speed<>0 {nagraj=speed;speed=0}
    }


