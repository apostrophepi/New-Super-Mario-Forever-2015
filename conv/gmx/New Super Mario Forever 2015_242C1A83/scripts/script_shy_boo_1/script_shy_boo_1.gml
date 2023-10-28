if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.6
    {
    seened=0
    }


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1  || seened<>0 {


seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {seened=0}
    

if wysun_z_puntow=0 {
    speed=0; sekwencja=0
    
if x<obj_mario.x-5 && obj_mario_anim.size2=1 {direction=point_direction(x,y,obj_mario.x,obj_mario.y+48) speed=1; sekwencja=1;kierunek=1;if gadacz=0 {gadacz=1;SXMS_SFX_PlayExt(99,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}} 
if x>obj_mario.x+5 && obj_mario_anim.size2=-1 {direction=point_direction(x,y,obj_mario.x,obj_mario.y+48) speed=1; sekwencja=1;kierunek=-1;if gadacz=0 {gadacz=1;SXMS_SFX_PlayExt(99,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}

if sekwencja=0 {gadacz=0}


if speed<>0 {y+=sin(degtorad(lot))/2; lot+=5}
// gfx
stream+=0.25}
if wysun_z_puntow=1
    {
    if place_meeting(x,y,obj_wall)
        {
        y-=2
        }
    if !place_meeting(x,y,obj_wall)
        {
        wysun_z_puntow=0
        }
    }
}}
if global.pauza<>0 {speed=0}



if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1{
draw_sprite_ext(s_boo_glow,0,x+18,y+18+sin(degtorad(stream*10))*5,1,1,0,c_white,1)
if sekwencja=0 {draw_sprite_ext(s_shy_boo_1,stream,x+18,y+18+sin(degtorad(stream*10))*5,kierunek,1,0,c_white,1)}
if sekwencja=1 {draw_sprite_ext(s_shy_boo_2,stream,x+18,y+18+sin(degtorad(stream*10))*5,kierunek,1,0,c_white,1)}


}
