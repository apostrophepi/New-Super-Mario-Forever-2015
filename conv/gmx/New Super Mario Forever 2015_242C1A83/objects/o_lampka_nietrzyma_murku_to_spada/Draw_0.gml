if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_lampka_jaskiniowa,0,x,y,1,1,sin(stream)*20+obracator,c_white,1);stream+=0.02

draw_sprite_ext(s_swiatlo_jaskiniowe,0,x+sin(stream)*20,y+40,1+sin(stream)/5,1+sin(stream)/5,0,c_white,0.5)


if !place_meeting(x,y-10,o_point_brick_alone) && sekwencja=0 {sekwencja=1}


}

if global.pauza=0 {
if sekwencja=1
    {
    x+=ixor
    y+=iyor
    iyor+=0.5
    if y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+500 {instance_destroy()}
    obracator+=ixor
    
    }}

