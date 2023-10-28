if global.pauza=0
    {
    if zapamietaj_predkosc<>0 {speed=zapamietaj_predkosc;zapamietaj_predkosc=0}
    obracacz-=10
    if x<__view_get( e__VW.XView, 0 )-50 || x>__view_get( e__VW.XView, 0 )+850 || y<__view_get( e__VW.YView, 0 )-50 || y>__view_get( e__VW.YView, 0 )+650 {instance_destroy()}
    if place_meeting(x,y,obj_wall) {instance_create(x,y,o_fireball_boom); instance_destroy()}
    vspeed+=0.05
    
    }
if global.pauza<>0 && zapamietaj_predkosc=0
    {
    zapamietaj_predkosc=speed
    speed=0
    }
    
    draw_sprite_ext(s_fireball_boom,0,x,y,1,1,0,c_white,0.5)
    draw_sprite_ext(s_pirania_fireball,0,x,y,1,1,obracacz,c_white,1)
