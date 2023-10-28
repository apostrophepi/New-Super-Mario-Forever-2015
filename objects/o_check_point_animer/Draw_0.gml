draw_sprite_ext(global.gfx_check_point,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/7+kartofel,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/1.2,1.5+sin(stream)/20+sin(stream)/5,1.5-sin(stream)/20+sin(stream)/5,sin(stream)/20-30+sin(stream/2)*10,c_white,1)


if global.pauza=0
    {
    
    
    stream+=0.1
    if sekwencja=0 {kartofel=kartofel/1.3}
    if sekwencja=0 && kartofel>=-1 {sekwencja=1; kartofel=0}
    if sekwencja=1 {timer+=1;if timer>50 {sekwencja=2;timer=0}}
    if sekwencja=2 {kartofel-=10;kartofel=kartofel*1.01}
    if sekwencja=2 && kartofel<=-2500 {instance_destroy()}
    }

