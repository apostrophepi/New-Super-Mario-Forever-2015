if global.pauza=0{

y+=sin(stream*10)
if place_meeting(x,y,o_boo_latacz_marker) && dotyka=0
    {
    koko=instance_place(x,y,o_boo_latacz_marker)
    dotyka=koko.id
    nagraj_szybkosc=koko.predkosc
    nagraj_direction=koko.kierunek
    sekwencja=1
    }
if !place_meeting(x,y,dotyka) {dotyka=0}
if sekwencja=1
    {
    speed=speed/1.03
    if speed>=-0.1 && speed<=0.1 {sekwencja=2}
    }
if sekwencja=2
    {
    if speed<nagraj_szybkosc {speed+=0.025}
    direction=nagraj_direction
    }

    desdir=point_direction(x,y,x+hspeed*2,y+vspeed*2)
    if abs(kierunek-desdir)<=180 {if kierunek<desdir kierunek+=2 else kierunek-=2}
    else {if kierunek<desdir kierunek-=2 else kierunek+=2}
    if kierunek>360 {kierunek=0}
    if kierunek<0 {kierunek=360}

if place_meeting(x,y,o_boo_latacz_marker_znikacz) && znikacz=0
    {
    znikacz=1
    x-=100000
    y-=100000
    znikacz_x=100000
    znikacz_y=100000
    }
if znikacz>=1 && znikacz<100
    {
    znikacz+=1
    if image_alpha>0.1 {image_alpha-=0.05}
    }
if znikacz>=100
    {
    if image_alpha<1 {image_alpha+=0.02}
    if image_alpha>=1 {znikacz=0;image_xscale=1;image_yscale=1;x+=100000;y+=100000;znikacz_x=0;znikacz_y=0}
    }
        
    
// gfx
stream+=0.25

if nagraj_speed<>0 {speed=nagraj_speed;nagraj_speed=0}
}
if global.pauza<>0 && speed<>0 {nagraj_speed=speed;speed=0}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1 || znikacz<>0 {
draw_sprite_ext(s_boo_glow,0,x+18+znikacz_x,y+18+znikacz_y+sin(degtorad(stream*10))*5,1,1,0,c_white,image_alpha)
draw_sprite_ext(s_shy_boo_2,stream,x+18+znikacz_x,y+18+znikacz_y+sin(degtorad(stream*10))*5,1,1,kierunek,c_white,image_alpha)


}

