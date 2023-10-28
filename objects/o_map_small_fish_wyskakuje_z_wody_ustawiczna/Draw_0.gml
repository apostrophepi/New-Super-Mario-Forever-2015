if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {



timer+=1
if sekwencja=0 && timer>co_ile_wyskakuje
    {
    timer=0
    if losowuj_timer=1 {timer=-random(200)}
    sekwencja=1
    ixor=ile_ixor
    iyor=ile_iyor
    x=xstart; y=ystart
    part_particles_create(global.particle_sys_1,x+random(10)-random(10),y+random(5)-random(5)+5,global.part_effect_smoker_mapmini,1)
    part_particles_create(global.particle_sys_1,x+random(10)-random(10)-20*kierunek,y+random(10)-random(10),global.part_effect_water_sparkle,1)
    }
if sekwencja=1
    {
    if jak_daleko_skacze_y>0 && przesowator<jak_daleko_skacze_y {przesowator+=ile_przesowator_y}
    if jak_daleko_skacze_y<0 && przesowator>jak_daleko_skacze_y {przesowator-=ile_przesowator_y}
    if ixor>0 {kierunek=1}
    if ixor<0 {kierunek=-1}
    x+=ixor
    y+=iyor
    iyor+=0.1
    if y>ystart+przesowator
        {
        repeat(4) {part_particles_create(global.particle_sys_1,x+random(10)-random(10),y+random(5)-random(5)+5,global.part_effect_smoker_mapmini,1)}
        repeat(4) {part_particles_create(global.particle_sys_1,x+random(10)-random(10)-20*kierunek,y+random(10)-random(10),global.part_effect_water_sparkle,1)}
        sekwencja=0; x=xstart; y=ystart; przesowator=0
        }
    }

stream+=randomer/100
y+=sin(stream)/10



    if sekwencja=1{
    draw_sprite_ext(global.gfx_enemy_big_fish[image_index],0,x,y,-kierunek/2-sin(stream/2)/50,1/2+sin(stream/2)/50,sin(stream/4)*10+iyor*10*kierunek*-1,c_white,0.85)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek,y,-kierunek/5-sin(stream/2)/50,1/5+sin(stream/2)/50,sin(stream*6)*10+iyor*10*kierunek-1,c_white,0.85)
    draw_sprite_ext(s_map_shadow_1,0,x,ystart+przesowator,1,0.25,0,c_white,0.5)}
    
    
}

