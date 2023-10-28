if global.pauza=0{
energy=ma_energy
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2 {seened=0}

// chodzenie

    {
    x+=kierunek
    if place_meeting(x,y,obj_wall) {y-=1}
    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y-1,x+32,y,o_subplatform,0,1) {y+=1}
    }

if place_meeting(x+kierunek,y-1,obj_wall)
    {
    kierunek=kierunek*-1
    }

if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y-1,x+32,y,o_subplatform,0,1) {sekwencja=1}
if sekwencja=1
    {
    if global.is_subplatforms=1
        {
        for (i=0;i<ceil(grawitacja);i+=1)
            {
            if collision_rectangle(x,y+i-1,x+32,y+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
            }
        }
    if grawitacja<12 {grawitacja+=0.5}
    y+=grawitacja;
    }
if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}


// animacja
image_yscale=1*energy
image_xscale=1

// gfx
stream+=1
spadnix=spadnix/1.2
}}


if image_index=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
    {
    for (i=0;i<energy-1;i+=1)
        {
        draw_sprite_ext(global.gfx_enemy_pokey_5,0,x+sin(degtorad(stream*5+360*(i/(energy+1))))*5,y-40*i-20-spadnix,kierunek,1,360*(i/(energy+1))+stream*5,c_white,1)
        }
    draw_sprite_ext(global.gfx_enemy_pokey_6,0,x+sin(degtorad(stream*5+i))*5,y-40*energy+15-spadnix,kierunek,1,sin(degtorad(stream*5+i))*3+360,c_white,1)

    }}
