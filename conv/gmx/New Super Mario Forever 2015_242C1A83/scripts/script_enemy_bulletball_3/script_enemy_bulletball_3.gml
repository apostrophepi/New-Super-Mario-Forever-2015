if global.pauza<>0 && speed<>0 {nagraj_speed=speed; speed=0}
if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0}


if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}
timer+=1

if timer<100 {speed=1; direction=nalezy_do.kierunek}
if timer>100 {speed=4}
image_angle=direction

// do przodu
    
do_przodu+=3
if do_przodu>=200 {depth=-1000}

// kill

if rodzaj=1 {rozdeptywalny=0}
  
   
if energy<=0 {kill=10}

if kill=1
    {
    SXMS_SFX_PlayExt(68,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_big_bullet
    lolo.kierunek_idzie=kierunek
    lolo.image_angle=kierunek
    lolo.spowalniacz=5
    instance_destroy()
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_big_bullet
    lolo.kierunek_idzie=kierunek
    lolo.image_angle=kierunek
    lolo.spowalniacz=5
    instance_destroy()
    }  
    
    
    
// gfx
stream+=0.1
if ogonek<1 {ogonek+=0.05}

}}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
if rodzaj=0 {draw_sprite_ext(s_big_bullet,0,x,y,1,1-obroc,direction,c_white,1)}
if rodzaj=1 {draw_sprite_ext(s_big_bullet_2,0,x,y,1,1-obroc,direction,c_white,1)}
draw_sprite_ext(s_cannon_lapa,0,x+sin(degtorad(kierunek+270))*10,y+cos(degtorad(kierunek+270))*20,1,1,image_angle+sin(degtorad(stream*30))*40,c_white,1)}
