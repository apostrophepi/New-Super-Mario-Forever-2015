if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed;nagraj_speed=0}
if global.pauza<>0 && speed=0 {nagraj_speed=speed;speed=0}


if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || seened>0 {

seened=1
// killer

if place_meeting(x,y,obj_mario) && global.oberwal=0
    {
    if kierunek=1 && obj_mario.x>x {global.oberwal=2;SXMS_SFX_PlayExt(96,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if kierunek=1 && obj_mario.x<x {global.oberwal=1}
    
    if kierunek=-1 && obj_mario.x>x {global.oberwal=1}
    if kierunek=-1 && obj_mario.x<x {global.oberwal=2;SXMS_SFX_PlayExt(96,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    }

    
    // blockery
    
    if x<0 {speed=0;x=1}
    if x>room_width {speed=0;x=room_width-1}
// wyskok

if wyskok_sekwencja=0
    {
    wyskok_timer+=1
    if wyskok_timer>200 {wyskok_sekwencja=1;wyskok_timer=0}
    }
if wyskok_sekwencja=1
    {
    if x>obj_mario.x+100 && x<obj_mario.x+250 && kierunek=-1 {wyskok_sekwencja=2; iyor=-14}
    if x<obj_mario.x-100 && x>obj_mario.x-250 && kierunek=1 {wyskok_sekwencja=2; iyor=-14}
    }
if wyskok_sekwencja=2
    {
    y+=iyor
    iyor+=0.25
    if y>ystart {y=ystart;wyskok_sekwencja=0}
    }
    
// plywanie

if speed>0 {kierunek=1}
if speed<0 {kierunek=-1}

if x>obj_mario.x && place_meeting(x-180,y,o_water_define) {speed-=0.2}
if x<obj_mario.x && place_meeting(x+180,y,o_water_define) {speed+=0.2}

if x>obj_mario.x && !place_meeting(x-180,y,o_water_define) {speed+=0.2}
if x<obj_mario.x && !place_meeting(x+180,y,o_water_define) {speed-=0.2}

if speed>15 {speed=15}
if speed<-15 {speed=-15}



if !place_meeting(x+120,y,o_water_define) && wyskok_sekwencja=0 {speed=speed*-1;x=xprevious};
if !place_meeting(x-120,y,o_water_define) && wyskok_sekwencja=0 {speed=speed*-1;x=xprevious};
  
if !place_meeting(x,y,o_water_define) && plusknie=0 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=1; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
if place_meeting(x,y,o_water_define) && plusknie=1 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=0; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
    
    
if odbijator=1
    {
    if place_meeting(x+10,y,obj_wall)
        {
        kierunek=-1
        x=xprevious
        }
    if place_meeting(x-10,y,obj_wall)
        {
        kierunek=1
        x=xprevious
        }
    }
    
// obrywanie
if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.kierunek_idzie=kierunek
    lolo.wodne_spadanie=2
    lolo.specjalny_kill=9
    instance_destroy()
    fifi=instance_create(x,y,o_cheep_chomb_waiter2)
    fifi.ixor=xstart
    fifi.iyor=ystart
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.kierunek_idzie=kierunek
    lolo.wodne_spadanie=2
    lolo.specjalny_kill=9
    instance_destroy()
    fifi=instance_create(x,y,o_cheep_chomb_waiter2)
    fifi.ixor=xstart
    fifi.iyor=ystart
    } 
// gfx
stream+=speed/20

// gryzak anim
image_index=0
if x>obj_mario.x && x<obj_mario.x+300 && obj_mario.y>y-100 && obj_mario.y<y+100 && kierunek=-1 {image_index=1;}
if x<obj_mario.x && x>obj_mario.x-300 && obj_mario.y>y-100 && obj_mario.y<y+100 && kierunek=1 {image_index=1;}

}}



if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    if image_index=0{
    draw_sprite_ext(global.gfx_enemy_cheep_1,0,x,y,-kierunek-sin(stream/2)/50,1+sin(stream/2)/50,sin(stream/5)*10,c_white,1)}
    if image_index=1{
    draw_sprite_ext(global.gfx_enemy_cheep_2,0,x,y,-kierunek-sin(stream/2)/50,1+sin(stream/2)/50,sin(stream/5)*10,c_white,1)}
    
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-15*kierunek,y,-kierunek-sin(stream/2)/20,1+sin(stream/2)/20,sin(stream/2)*40,c_white,1)
    
    if oberwal>0
        {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(global.gfx_enemy_big_fish_1,0,x,y,1-sin(stream/2)/10,1+sin(stream/2)/10,sin(stream/4)*10,c_white,oberwal)
        draw_set_blend_mode(bm_normal)
        oberwal-=0.1    
        }
    }

