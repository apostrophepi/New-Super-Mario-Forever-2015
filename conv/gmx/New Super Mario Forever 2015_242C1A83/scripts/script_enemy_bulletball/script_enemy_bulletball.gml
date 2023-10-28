if global.pauza<>0 && speed<>0 {nagraj_speed=speed; speed=0}
if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0}



if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1  {
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}
if kierunek=-1 && rodzaj<>2
    {
    x-=szybkosc; direction=0
    }
if kierunek=1 && rodzaj<>2
    {
    x+=szybkosc; direction=180
    }

// naprawadzajacy RED-BULLET-BILL

if rodzaj=1
    {
    if kierunek=1 && x<obj_mario.x && szybkosc<3 {szybkosc+=0.1}
    if kierunek=1 && x>obj_mario.x && szybkosc>0 {szybkosc-=0.1}
    if kierunek=1 && x>obj_mario.x && szybkosc<=0 {kierunek=-1}
    
    if kierunek=-1 && x>obj_mario.x && szybkosc<3 {szybkosc+=0.1}
    if kierunek=-1 && x<obj_mario.x && szybkosc>0 {szybkosc-=0.1}
    if kierunek=-1 && x<obj_mario.x && szybkosc<=0 {kierunek=1}
    }
    
    
// do przodu
    
do_przodu+=3
if do_przodu>=40 {depth=-90000}

if global.graphics=5 {
dymek+=1
if dymek>20 && kierunek=-1 {effect_create_above(ef_smoke,x+30,y,0.75,c_white);dymek=0}
if dymek>20 && kierunek=1 {effect_create_above(ef_smoke,x-30,y,0.75,c_white);dymek=0}}

// spadanie dla rodzaju=4

if spadanie>=0 {spadanie+=0.1;y+=spadanie}

// kill

if energy<=0 {kill=10}

if kill=1
    {
    SXMS_SFX_PlayExt(68,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_bullet_ball
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
    
if kill=10
    {
    SXMS_SFX_PlayExt(68,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_bullet_ball
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }   
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_bullet_ball
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }       
    
    
// gfx
stream+=0.1
if ogonek<1 {ogonek+=0.05}
}}
if global.graphics>=4 && rodzaj<>2 && rodzaj<4 {draw_sprite_ext(s_spikey_10,0,x,y,kierunek*ogonek,1,0,c_white,0.5)}
if global.graphics>=4 && rodzaj=2 {draw_sprite_ext(s_spikey_10,0,x,y,kierunek*ogonek,1,image_angle,c_white,0.5)}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
if rodzaj=0 {draw_sprite_ext(s_bullet,0,x,y,kierunek*-1,1,0,c_white,1)}
if rodzaj=1 {draw_sprite_ext(s_bulletred,0,x,y,kierunek*-1,1,0,c_white,1)}
if rodzaj>=4 {draw_sprite_ext(s_bullet_ball,0,x,y,kierunek*-1,1,0,c_white,1)}}
