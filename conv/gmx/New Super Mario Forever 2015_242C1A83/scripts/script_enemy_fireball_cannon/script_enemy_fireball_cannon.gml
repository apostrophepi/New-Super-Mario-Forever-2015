if global.pauza=0 {
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

reload+=1
kierunek+=obracacz
wacha+=1
if wachacz=1 {kierunek=kierunek+sin(degtorad(wacha))}
przeladowanie+=1
sampling+=1
if reload>=reload_shot && przeladowanie>2
    {
    if sampling>8 {SXMS_SFX_PlayExt(72,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0); sampling=0}
    przeladowanie=0
    pociski-=1
    koko=instance_create(x+20+sin(degtorad(kierunek+90))*25,y+20+cos(degtorad(kierunek+90))*25,o_enemy_cannon_balls)
    koko.direction=kierunek
    koko.depth=depth+10
    koko.nalezy_do=id
    koko.speed=5
    if pociski<=0 {reload=0; pociski=15}
    }


}}

if naprawadzacz=1
    {
    desdir=point_direction(x,y,obj_mario.x,obj_mario.y)
    if abs(kierunek-desdir)<=180 {if kierunek<desdir-2 {kierunek+=2}; if kierunek>desdir+2 {kierunek-=2}}
    else {if kierunek<desdir+2 {kierunek-=2} ;if kierunek>desdir-2 {kierunek+=2}}

    
    if kierunek<0 {kierunek=360}
    if kierunek>360 {kierunek=0}
    }















if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
{
if global.graphics>=3 && wachacz=1 {efekt+=5;draw_sprite_ext(s_gear_1,0,x+40,y+30,0.5,0.5,efekt,c_white,1)
{draw_sprite_ext(s_gear_1,0,x+20,y+10,0.65,0.65,efekt/2,c_white,1)}
{draw_sprite_ext(s_gear_1,0,x,y+35,0.5,0.5,efekt,c_white,1)}}

if global.graphics>=3 && naprawadzacz=1 {draw_sprite_ext(s_gear_1,0,x+40,y+30,0.5,0.5,kierunek,c_white,1)
{draw_sprite_ext(s_gear_1,0,x+20,y+10,0.65,0.65,kierunek,c_white,1)}
{draw_sprite_ext(s_gear_1,0,x,y+35,1,1,kierunek*-1,c_white,1)}}

if (kierunek<90) || (kierunek>270) {draw_sprite_ext(s_cannon_2,0,x+20,y+20,1,1,kierunek,c_white,1)}
if kierunek<=270 && kierunek>=90 {draw_sprite_ext(s_cannon_2,0,x+20,y+20,1,-1,kierunek,c_white,1)}
if chwytak=1 {draw_sprite_ext(s_chwytak_dziala,0,x+20,y+20,1,1,chwytak_kat,c_white,1)}
}














