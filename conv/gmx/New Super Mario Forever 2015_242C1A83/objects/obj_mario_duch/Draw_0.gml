




if global.pauza=0{

if random(100)>90 {
part_particles_create(global.particle_sys_1,x+random(40)-random(40),y+random(40)-random(40),global.part_effect_star2,3)}
if random(100)>95 {
part_particles_create(global.particle_sys_1,x+random(40)-random(40),y+random(40)-random(40),global.part_lava_smoke,3)}


// sterowanie duchem
if global.ducher_wracaj=0 {
obj_mario.szybkosc=min(abs(speedo_x+speedo_y)*3,10)
if keyboard_check(global.ster_up) && speedo_y>-4 {speedo_y-=0.2}
if keyboard_check(global.ster_down) && speedo_y<4 {speedo_y+=0.2}
if keyboard_check(global.ster_left) && speedo_x>-4 {speedo_x-=0.2}
if keyboard_check(global.ster_right) && speedo_x<4 {speedo_x+=0.2}

if  !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right)
    {
    speedo_x=speedo_x/1.02
    }
if !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down)
    {
    speedo_y=speedo_y/1.02
    }}
    
// powracanie duchem

if global.ducher_wracaj=1
    {
    if wracaj_czy_respawnuj=0 {
    if place_meeting(x+5,y,obj_wall) || place_meeting(x-5,y,obj_wall) || place_meeting(x,y-5,obj_wall) || place_meeting(x,y+5,obj_wall) {wracaj_czy_respawnuj=1}
    if !place_meeting(x,y,obj_wall) {wracaj_czy_respawnuj=2}

        for (i=0;i<100000;i+=1)
            {
            if tile_exists(10000000+i)
                {
                idd=10000000+i
                if tile_get_depth(idd)<=20000 {
                
                if x+41>tile_get_x(idd) && x<tile_get_x(idd)+tile_get_width(idd)
                && y+41>tile_get_y(idd) && y<tile_get_y(idd)+tile_get_height(idd)
                {wracaj_czy_respawnuj=1}}
                }}
        
        }
    }
    
    
if wracaj_czy_respawnuj=2{
    obj_mario.x=x
    obj_mario.y=y
    global.ducher_zamieniony=0;
    global.ducher_wracaj=0;
    instance_destroy();
    instance_create(x,y,obj_mario_duch_efekt_1);}
    
if wracaj_czy_respawnuj=1{
    
    // sprawdz od ktorej strony wraca duch do punktu poczatkowego
    if sprawdz=0 {
    if x>=global.ducher_x+20 {od_strony=1}
    if x<global.ducher_x+20 {od_strony=-1}
    if y>=global.ducher_y+20 {od_wysokosci=1}
    if y<global.ducher_y+20 {od_wysokosci=-1}
    sprawdz=1}

    

    // powrot ducha
    if y>global.ducher_y+20 && speedo_y>-4 {speedo_y-=0.4};
    if y<global.ducher_y+20 && speedo_y<4 {speedo_y+=0.4};
    if x>global.ducher_x+20 && speedo_x>-4 {speedo_x-=0.4};
    if x<global.ducher_x+20 && speedo_x<4 {speedo_x+=0.4}; 
    
    // popraw wspolrzedne gdy przekroczy punkt startowy
    
    if od_strony=1 && x<global.ducher_x+20 {x=global.ducher_x+20;speedo_x=0}
    if od_strony=-1 && x>global.ducher_x+20 {x=global.ducher_x+20;speedo_x=0}
    if od_wysokosci=1 && y<global.ducher_y+20 {y=global.ducher_y+20;speedo_y=0}
    if od_wysokosci=-1 && y>global.ducher_y+20 {y=global.ducher_y+20;speedo_y=0}
    
    
    
    
if x=global.ducher_x+20 && y=global.ducher_y+20
    {
    obj_mario.x=global.ducher_x;
    obj_mario.y=global.ducher_y;
    global.ducher_zamieniony=0;
    global.ducher_wracaj=0;
    instance_destroy();
    instance_create(x,y,obj_mario_duch_efekt_1);
    }}







x+=speedo_x
y+=speedo_y
podkatem=speedo_y*10*-kierunek

if wracaj_czy_respawnuj=0 {
if x<40 {x=40}
if x>room_width+40 {x=room_width+39}
if y<40 {y=40}
if y>room_width-40 {y=room_width-40}}

if speedo_x>0 {kierunek=1}
if speedo_x<0 {kierunek=-1}

if speed<>0 {y+=sin(degtorad(lot))/2; lot+=5}
// gfx
stream+=0.25


draw_sprite_ext(s_boo_glow,0,x,y+sin(degtorad(stream*10))*5,1,1,0,c_white,1)

    draw_sprite_ext(s_boo_glow,0,x,y,4,4,0,c_white,1)
    
    pozycja_oczu_x=x+(sin(degtorad(podkatem+(130*kierunek)))*36)
    pozycja_oczu_y=y+(cos(degtorad(podkatem+(130*kierunek)))*36)+sin(degtorad(stream*10))*5
    
    pozycja_oczu_x2=x+(sin(degtorad(podkatem+(115*kierunek)))*25)
    pozycja_oczu_y2=y+(cos(degtorad(podkatem+(115*kierunek)))*25)+sin(degtorad(stream*10))*5
    
    pozycja_reki_x=x
    pozycja_reki_y=y+sin(degtorad(stream*10))*5
    kat_reki=-125*kierunek+sin(stream/5)*20

    pozycja_nos_x=x+sin(degtorad(podkatem+(kierunek*90)))*30
    pozycja_nos_y=y+cos(degtorad(podkatem+(kierunek*90)))*30+sin(degtorad(stream*10))*5
    
    
    pozycja_buzioxa_x=x+sin(degtorad(podkatem+(45*kierunek)))*30
    pozycja_buzioxa_y=y+cos(degtorad(podkatem+(45*kierunek)))*30+sin(degtorad(stream*10))*5
    buziowanie=1+sin(stream/10)/10
    
    pozycja_buzioxa_x2=x+sin(degtorad(podkatem+(45*kierunek)))*30
    pozycja_buzioxa_y2=y+cos(degtorad(podkatem+(45*kierunek)))*30+sin(degtorad(stream*10))*5
    buziowanie2=sin(stream/10)*10
    }
    
    
    
    
    draw_sprite_ext(s_mario_duch,stream,x+32,y+32+sin(degtorad(stream*10))*5,kierunek,1,podkatem,c_white,1)
    draw_sprite_ext(s_boo_eyes,stream,pozycja_oczu_x2+32,pozycja_oczu_y2+32,kierunek/2,1/2,podkatem,c_white,1)
    draw_sprite_ext(s_mario_duch_brwi,stream,pozycja_oczu_x+32,pozycja_oczu_y+sin(degtorad(stream*10))*3+32,kierunek+sin(degtorad(stream*10))/10,1,podkatem,c_white,1)
    
    draw_sprite_ext(s_buzia,stream,pozycja_buzioxa_x+32,pozycja_buzioxa_y+32,kierunek/2.2,buziowanie/2.2,podkatem/1.02,c_white,1)
    draw_sprite_ext(s_jezor,stream,pozycja_buzioxa_x2+32,pozycja_buzioxa_y2+32,kierunek/2.2,buziowanie/2.2,360+buziowanie2+podkatem/1.02,c_white,1)
    
    draw_sprite_ext(s_boo_hand,stream,pozycja_reki_x+32,pozycja_reki_y+32,kierunek/2,1/2,kat_reki,c_white,1)
    
    draw_sprite_ext(s_mario_duch_nos,stream,pozycja_nos_x+32,pozycja_nos_y+32,kierunek,1,podkatem/1.02,c_white,1)
    
    
    



