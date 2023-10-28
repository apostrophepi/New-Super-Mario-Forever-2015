if global.pauza=0{

y+=sin(degtorad(stream*5))


    desdir=point_direction(x,y,xstart,ystart)
    if abs(direction-desdir)<=180 {if direction<desdir direction+=1 else direction-=1}
    else {if direction<desdir direction-=1 else direction+=1}
    if direction<90 || direction>270 {kierunek=1} else {kierunek=-1}

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
draw_sprite_ext(s_shy_boo_2,stream,x+18+znikacz_x,y+18+znikacz_y+sin(degtorad(stream*10))*5,kierunek,1,0,c_white,image_alpha)


}

