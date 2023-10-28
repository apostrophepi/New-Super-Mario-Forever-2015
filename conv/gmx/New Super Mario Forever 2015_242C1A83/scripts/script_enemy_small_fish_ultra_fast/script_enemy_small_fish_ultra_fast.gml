if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.4 {instance_destroy()}

if kierunek=1 {speed=4; direction=sin(degtorad(stream))*40}
if kierunek=-1 {speed=4; direction=180-sin(90+degtorad(stream+90))*40}


if !place_meeting(x+45,y,o_water_define) {kierunek=-1};
if !place_meeting(x-45,y,o_water_define) {kierunek=1};
    
if !place_meeting(x,y-45,o_water_define) {y+=1};
if !place_meeting(x,y+45,o_water_define) {y-=1};  
    
if odbijator=1
    {
    if place_meeting(x+5,y,obj_wall)
        {
        kierunek=-1
        }
    if place_meeting(x-5,y,obj_wall)
        {
        kierunek=1
        }
        
    if place_meeting(x,y-5,obj_wall)
        {
        stream+=90
        y+=5
        }
    if place_meeting(x,y+5,obj_wall)
        {
        stream+=90
        y-=5
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
    lolo.specjalny_kill=6
    instance_destroy()
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.kierunek_idzie=kierunek
    lolo.wodne_spadanie=2
    lolo.specjalny_kill=6
    instance_destroy()
    } 
// gfx
stream+=2.5
}}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    
    draw_sprite_ext(global.gfx_enemy_big_fish[image_index],0,x,y,-kierunek-sin(degtorad(stream))/50,1+sin(degtorad(stream))/50,sin(degtorad(stream))*40,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek,y,-kierunek/3-sin(degtorad(stream))/50,1/3+sin(degtorad(stream))/50,sin(degtorad(stream))*40,c_white,1)

    }

