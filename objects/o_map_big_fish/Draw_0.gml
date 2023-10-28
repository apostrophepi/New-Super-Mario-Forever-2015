if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if random(100)>90 {part_particles_create(global.particle_sys_1,x+random(10)-random(10)-20*kierunek,y+random(10)-random(10),global.part_effect_water_sparkle,1)}
stream+=randomer/100
y+=sin(stream)/10
if kierunek=1 {x+=0.5}
if kierunek=-1 {x-=0.5}
if place_meeting(x+20*kierunek,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}

    draw_sprite_ext(global.gfx_enemy_fish_map,0,x,y,-kierunek-sin(stream/2)/50,1+sin(stream/2)/50,sin(stream/4)*10,c_white,0.75)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x+kierunek,y,-kierunek/3-sin(stream)/20,1/3+sin(stream)/20,sin(stream)*40,c_white,0.75)
    

}

