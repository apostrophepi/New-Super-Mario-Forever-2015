if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

if sekwencja=0 {grawitacja+=1+image_index*2;if place_meeting(x,y+60,o_water_define) {y+=0.5}}
if grawitacja>50 {grawitacja=0;sekwencja=1;ruch_combo=round(random(3))}
if sekwencja=1
    {
    wielkosc_x+=0.015
    if wielkosc_x>=0.40 {sekwencja=2}
    }
if sekwencja=2 {direction=point_direction(x,y,obj_mario.x,obj_mario.y); speed=5+image_index*5; sekwencja=3}
if sekwencja=3
    {
    speed=speed/1.03
    wielkosc_x=wielkosc_x/(1.03+image_index/20)
    if speed<=0.01 && wielkosc_x<=0.01 {if ruch_combo<=0{sekwencja=0}; if ruch_combo>0 {sekwencja=1;ruch_combo-=1}}
    
    if !place_meeting(x,y-60,o_water_define) {motion_add(270,3)};
    if !place_meeting(x,y+60,o_water_define) {motion_add(90,3)};
    if !place_meeting(x+60,y,o_water_define) {motion_add(180,3)};
    if !place_meeting(x-60,y,o_water_define) {motion_add(0,3)};
    }

if oberwal_energy<>energy {oberwal_energy=energy;oberwal=1}

// mryganie

if mrugacz2=0 {mrugacz=random(100)}
if mrugacz>99 {mrugacz2=1;mrugacz=0}
if mrugacz2>0 {mrugacz2=mrugacz2/1.3}
// obrywanie
if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if image_index=0 {lolo.grafika=global.gfx_enemy_sciskacz}
    if image_index=1 {lolo.grafika=global.gfx_enemy_sciskacz_3}
    lolo.kierunek_idzie=1
    lolo.wodne_spadanie=2
    instance_destroy()
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if image_index=0 {lolo.grafika=global.gfx_enemy_sciskacz}
    if image_index=1 {lolo.grafika=global.gfx_enemy_sciskacz_3}
    lolo.kierunek_idzie=1
    lolo.wodne_spadanie=2
    instance_destroy()
    }        
    
    
    
// gfx
stream+=0.1
}}

//if global.pauza<>0 && speed<>0 {nagraj_speed=speed;speed=0};
//if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0};

if image_index=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(global.gfx_enemy_sciskacz,0,x,y,1+wielkosc_x-sin(stream/2)/10,1-wielkosc_x+sin(stream/2)/10,-hspeed*5-vspeed*5,c_white,1)
    if mrugacz2>0
        {
        draw_sprite_ext(global.gfx_enemy_sciskacz_2,0,x,y,1+wielkosc_x,1-wielkosc_x,-hspeed*5-vspeed*5,c_white,mrugacz2)
        }
    if oberwal>0
        {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(global.gfx_enemy_sciskacz,0,x,y,1+wielkosc_x,1-wielkosc_x,-hspeed*5-vspeed*5,c_white,oberwal)
        draw_set_blend_mode(bm_normal)
        oberwal-=0.1    
        }
    }}
if image_index=1{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(global.gfx_enemy_sciskacz_3,0,x,y,1+wielkosc_x-sin(stream/2)/10,1-wielkosc_x+sin(stream/2)/10,-hspeed*5-vspeed*5,c_white,1)
    if oberwal>0
        {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(global.gfx_enemy_sciskacz,0,x,y,1+wielkosc_x,1-wielkosc_x,-hspeed*5-vspeed*5,c_white,oberwal)
        draw_set_blend_mode(bm_normal)
        oberwal-=0.1    
        }
    }}

