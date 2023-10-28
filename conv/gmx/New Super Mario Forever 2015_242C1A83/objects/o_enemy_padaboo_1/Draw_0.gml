
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_padaboo_2,0,x,y,1+sin(stream)/3,1+sin(stream)/3,image_angle,c_white,1)
draw_sprite_ext(global.gfx_padaboo,0,x,y,1+sin(stream)/8,1-sin(stream)/8,image_angle,c_white,1)
if global.pauza=0{
if iyor>=0 && image_angle>-180 && ixor>=0 {image_angle-=10}
if iyor>=0 && image_angle<180 && ixor<0 {image_angle+=10}

if y>ystart {instance_destroy()
part_particles_create(global.particle_sys_1,x+random(40)-random(40),y-random(40)+random(40),global.part_effect_water_sparkle_lawa,1)
instance_create(x,y,o_fajny_duzy_wybuch_1_light)}




y+=iyor
x+=ixor
stream+=0.2
iyor+=0.2

}}

