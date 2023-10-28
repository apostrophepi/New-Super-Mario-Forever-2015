if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || seened<>0 {

seened=1

if x>obj_mario.x {kierunek=-1}
if x<obj_mario.x {kierunek=1}

    
dmuch+=1
dmuch_sampel+=1


if sekwencja=0
    {
    direction=direction/1.01
    dmuchanie+=1
    if sizer>1 {sizer=sizer/1.3}
    dmuchacz.x=-1000
    dmuchacz.y=-1000
    
    dmuchacz.image_xscale=sizer
    if y>obj_mario.y && x<obj_mario.x+350 && x>obj_mario.x-350 && dmuchanie>200
        {
        sekwencja=1
        iyor-=wysokosc_skoku
        dmuchanie=0
        }
    }
if sekwencja=1
    {
    if !place_meeting(x,y,o_water_define) && plusknie=0 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=1; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
    if place_meeting(x,y,o_water_define) && plusknie=1 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=0; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
    dmuchacz.image_xscale=sizer
    if sizer<3 {sizer+=0.05}
    dmuchacz.x=x
    dmuchacz.y=y
    
    
    if kierunek=-1 {direction=-45+iyor;dmuchacz.image_angle=direction+180}
    if kierunek=1 {direction=+45-iyor;dmuchacz.image_angle=direction}
    if dmuchanie<200 && iyor>0 {if place_meeting(x,y+20,o_water_define) {iyor=0}}
    y+=iyor
    iyor+=0.1
    dmuchanie+=1
    
    if y>ystart {y=ystart;iyor=0;sekwencja=0;dmuchanie=0}
    if dmuch_sampel>9 {SXMS_SFX_PlayExt(97,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);dmuch_sampel=0}
    
    if dmuch>2
        {
        if kierunek=1 {part_type_direction(global.part_water_splash[2],45,45,0,0)}
        if kierunek=-1 {part_type_direction(global.part_water_splash[2],135,135,0,0)}
        part_type_speed(global.part_water_splash[2],8+sizer*3,10+sizer*3,0,0)
        part_type_size(global.part_water_splash[2],0.2+sizer/10,0.2+sizer/10,-0.0015,0);
        part_type_orientation(global.part_water_splash[2],0,0,0,0,1)
        part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[2],1)
        dmuch=0
        }
    if global.graphics=6
        {
        if kierunek=1 {part_type_direction(global.part_water_splash[3],45,45,0,0)}
        if kierunek=-1 {part_type_direction(global.part_water_splash[3],135,135,0,0)}
        part_type_speed(global.part_water_splash[3],8+sizer,10+sizer,0,0)
        part_type_size(global.part_water_splash[3],0.2+random(1),0.2+random(1),-0.0015,0);
        part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[3],1)
        kalafior=random(100)
        if random(100)>98 {part_particles_create(global.particle_sys_1,x+kalafior*sizer*kierunek,y-kalafior*sizer,global.part_effect_water_1,1)}
        }
    
    }
    
    
    
    
    

// obrywanie
if energy<=0 {kill=10}

if kill=1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.kierunek_idzie=kierunek
    lolo.wodne_spadanie=2
    lolo.specjalny_kill=10
    instance_destroy()
    with(dmuchacz) {instance_destroy()}
    }
    
if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.kierunek_idzie=kierunek
    lolo.wodne_spadanie=2
    lolo.specjalny_kill=10
    instance_destroy()
    with(dmuchacz) {instance_destroy()}
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.kierunek_idzie=kierunek
    lolo.wodne_spadanie=2
    lolo.specjalny_kill=10
    instance_destroy()
    with(dmuchacz) {instance_destroy()}
    } 
// gfx
stream+=0.1
}}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(global.gfx_enemy_big_fish[2],0,x,y+sin(stream)*5,-kierunek-sin(stream/2)/50,1+sin(stream/2)/50,sin(stream/4)*4+direction,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek,y+sin(stream)*5,-kierunek/3-sin(stream/2)/50,1/3+sin(stream/2)/50,sin(stream/2+iyor*10)*40+direction,c_white,1)
    }

