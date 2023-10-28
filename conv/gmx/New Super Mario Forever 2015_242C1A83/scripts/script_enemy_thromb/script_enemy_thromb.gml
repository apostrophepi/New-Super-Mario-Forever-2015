if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {seened=0}



seened=1
    
// spadanie thromba
// DOL
if kierunek_jebniecia=0
    {
    if sekwencja=0 && x-180<obj_mario.x && x+180>obj_mario.x && __view_get( e__VW.XView, 0 )+800 && x>__view_get( e__VW.XView, 0 )-40 && y>__view_get( e__VW.YView, 0 )-40 && y<__view_get( e__VW.YView, 0 )+600
        {
        sekwencja=1
        }
    if sekwencja=1 && !place_meeting(x,y,obj_wall)
        {
        y+=grawitacja
        grawitacja+=0.5
        }
    if sekwencja=1 && place_meeting(x,y,o_point_brick_alone)
        {
        fifi=instance_place(x,y,o_point_brick_alone)
        with(fifi) {zniszczony_od_muszli=1}
        
        
        }
    if sekwencja=1 && place_meeting(x,y,obj_wall) && !place_meeting(x,y,o_point_brick_alone)
        {
        global.earth_quake=30
        SXMS_SFX_PlayExt(55,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        sekwencja=2
        grawitacja=0
        repeat(5) {effect_create_above(ef_smoke,x+random(104)-random(104),y+111+random(20)-random(20),0.5+random(1),c_white)}
        repeat(2) {instance_create(x+random(104)-random(104),y+111+random(20)-random(20),o_thromb_piece)}
        }
    while sekwencja=2 && place_meeting(x,y,obj_wall)
        {
        y-=1
        if !place_meeting(x,y,obj_wall) {sekwencja=3}
        }
    if sekwencja>=3 && sekwencja<100
        {
        sekwencja+=1
        }
    if sekwencja=100 && y>poczatek_y
        {
        y-=1
        }
    if sekwencja=100 && y<=poczatek_y
        {
        sekwencja=0
        }
    }
    
// spadanie thromba
// GORA
if kierunek_jebniecia=1
    {
    if sekwencja=0 && x-180<obj_mario.x && x+180>obj_mario.x && __view_get( e__VW.XView, 0 )+800 && x>__view_get( e__VW.XView, 0 )-40 && y>__view_get( e__VW.YView, 0 )-40 && y<__view_get( e__VW.YView, 0 )+600
        {
        sekwencja=1
        }
    if sekwencja=1 && !place_meeting(x,y,obj_wall)
        {
        y-=grawitacja
        grawitacja+=0.5
        }
    if sekwencja=1 && place_meeting(x,y,obj_wall)
        {
        global.earth_quake=30
        SXMS_SFX_PlayExt(54,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        sekwencja=2
        grawitacja=0
        repeat(5) {effect_create_above(ef_smoke,x+random(104)-random(104),y-111+random(20)-random(20),0.5+random(1),c_white)}
        repeat(2) {instance_create(x+random(104)-random(104),y-111+random(20)-random(20),o_thromb_piece)}
        }
    while sekwencja=2 && place_meeting(x,y,obj_wall)
        {
        y+=1
        if !place_meeting(x,y,obj_wall) {sekwencja=3}
        }
    if sekwencja>=3 && sekwencja<100
        {
        sekwencja+=1
        }
    if sekwencja=100 && y<poczatek_y
        {
        y+=1
        }
    if sekwencja=100 && y>=poczatek_y
        {
        sekwencja=0
        }
    }
// LEWO
if kierunek_jebniecia=2
    {
    if sekwencja=0 && y-180<obj_mario.y && y+180>obj_mario.y && __view_get( e__VW.XView, 0 )+800 && x>__view_get( e__VW.XView, 0 )-40 && y>__view_get( e__VW.YView, 0 )-40 && y<__view_get( e__VW.YView, 0 )+600
        {
        sekwencja=1
        }
    if sekwencja=1 && !place_meeting(x,y,obj_wall)
        {
        x-=grawitacja
        grawitacja+=0.5
        }
    if sekwencja=1 && place_meeting(x,y,obj_wall)
        {
        global.earth_quake=30
        SXMS_SFX_PlayExt(54,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        sekwencja=2
        grawitacja=0
        repeat(5) {effect_create_above(ef_smoke,x-104,y+random(111)-random(111),0.5+random(1),c_white)}
        repeat(2) {instance_create(x-104+random(10)-random(10),y+random(111)-random(111),o_thromb_piece)}
        }
    while sekwencja=2 && place_meeting(x,y,obj_wall)
        {
        x+=1
        if !place_meeting(x,y,obj_wall) {sekwencja=3}
        }
    if sekwencja>=3 && sekwencja<100
        {
        sekwencja+=1
        }
    if sekwencja=100 && x<poczatek_x
        {
        x+=1
        }
    if sekwencja=100 && x>=poczatek_x
        {
        sekwencja=0
        }
    }   
    
    
// PRAWO
if kierunek_jebniecia=3
    {
    if sekwencja=0 && y-180<obj_mario.y && y+180>obj_mario.y && __view_get( e__VW.XView, 0 )+800 && x>__view_get( e__VW.XView, 0 )-40 && y>__view_get( e__VW.YView, 0 )-40 && y<__view_get( e__VW.YView, 0 )+600
        {
        sekwencja=1
        }
    if sekwencja=1 && !place_meeting(x,y,obj_wall)
        {
        x+=grawitacja
        grawitacja+=0.5
        }
    if sekwencja=1 && place_meeting(x,y,obj_wall)
        {
        global.earth_quake=30
        SXMS_SFX_PlayExt(54,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        sekwencja=2
        grawitacja=0
        repeat(5) {effect_create_above(ef_smoke,x+104,y+random(111)-random(111),0.5+random(1),c_white)}
        repeat(2) {instance_create(x+104+random(10)-random(10),y+random(111)-random(111),o_thromb_piece)}
        }
    while sekwencja=2 && place_meeting(x,y,obj_wall)
        {
        x-=1
        if !place_meeting(x,y,obj_wall) {sekwencja=3}
        }
    if sekwencja>=3 && sekwencja<100
        {
        sekwencja+=1
        }
    if sekwencja=100 && x>poczatek_x
        {
        x-=1
        }
    if sekwencja=100 && x<=poczatek_x
        {
        sekwencja=0
        }
    }      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    if sekwencja=1 && buzin<0.75
        {
        buzin+=0.05
        }
    if sekwencja<>1 && buzin>0
        {
        buzin=buzin/1.01
        }
    
    
    
  //poczatek_x=x
//poczatek_y=y  
    

image_xscale=0.9
image_yscale=0.9
    
// gfx
stream+=0.1
}}



if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1{
draw_sprite_ext(s_thromb,0,x,y+sin(degtorad(stream*10))*5,1,1,0,c_white,1)
draw_sprite_ext(s_thromb_usta,0,x,y+34+sin(degtorad(stream*10))*5,1+buzin/4,0.75+sin(degtorad(stream*10))/4+buzin,0,c_white,1)

draw_sprite_ext(s_red_glow,0,x-25,y+sin(degtorad(stream*10))*5-25,1,1,0,c_white,buzin*1.25)
draw_sprite_ext(s_red_glow,0,x+25,y+sin(degtorad(stream*10))*5-25,1,1,0,c_white,buzin*1.25)}
