if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

stream+=0.1
draw_sprite_ext(s_map_shadow_1,0,x-ixor,y-10,0.5+sin(stream)/80,0.5-sin(stream)/80,0,c_white,alphar/1.5)
draw_sprite_ext(s_big_bullet,0,x-ixor,y-10,-0.14+sin(stream)/80,0.14-sin(stream)/80,0,c_white,alphar)
draw_sprite_ext(s_cannon_2,0,x,y-10,-0.6+sin(stream)/80,0.6-sin(stream)/80,0,c_white,1)


if random(1000)>990 && sekwencja=0 {part_particles_create(global.particle_sys_1,x-10,y-15,global.part_effect_smoker_map,1);sekwencja=1;ixor=0;alphar=1}
if sekwencja=1 && ixor<15 {ixor+=0.2}
if sekwencja=1 && ixor>=15 {ixor+=1}
if sekwencja=1 && ixor>=150 {alphar-=0.05}
if alphar=0 {sekwencja=0}

}


