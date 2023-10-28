if global.pauza=0
    {
    addd+=1
    stream+=1
    if sekwencja=0 {x=-10000;sekwencja=1;}
    if sekwencja=1 {timer+=1}
    if sekwencja=1 && timer=150 {SXMS_SFX_PlayExt(107,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if timer>150 && sekwencja=1 {wielkosc+=0.01; if wielkosc>=1 {sekwencja=2;timer=0;x=xstart;}}
    if sekwencja=2 {timer+=1;if timer>100{timer=0;sekwencja=3}}
    if sekwencja=3
        {
        timer+=1
        if random(100)>95 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_smoke,1)}
        
        x+=xoxo
        y+=yoyo
        
        if x>obj_mario.x {xoxo-=0.1} else {xoxo+=0.1}
        if y>obj_mario.y {yoyo-=0.1} else {yoyo+=0.1}
        if xoxo>3 {xoxo=3}
        if xoxo<-3 {xoxo=-3}
        if yoyo>3 {yoyo=3}
        if yoyo<-3 {yoyo=-3}
        if timer>800 {timer=0;sekwencja=4}
        }
    if sekwencja=4
        {
        if random(100)>95 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_smoke,1)}
        
        x+=xoxo
        y+=yoyo
        
        if x>room_width/2 {xoxo-=0.1} else {xoxo+=0.1}
        if y>-10000 {yoyo-=0.1} else {yoyo+=0.1}
        if xoxo>5 {xoxo=5}
        if xoxo<-5 {xoxo=-5}
        if yoyo>5 {yoyo=5}
        if yoyo<-5 {yoyo=-5}
        if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2 {instance_destroy();with(element1){instance_destroy()};with(element2){instance_destroy()};with(element3){instance_destroy()};with(element4){instance_destroy()};with(element5){instance_destroy()}}
        }
    
    if x>obj_mario.x {kierunek=-1}
    if x<obj_mario.x {kierunek=1}
    
    if sekwencja=0 {
    
    if !place_meeting(x+ixor,y,obj_wall) {x+=ixor}
    if place_meeting(x+ixor,y,obj_wall) {ixor=ixor*-1}
    
    if iyor<0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor}
    if iyor<0 && place_meeting(x,y+iyor,obj_wall) {iyor=iyor*-1}
    
    if iyor>0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor; }
    if iyor>0 && place_meeting(x,y+iyor,obj_wall)
        {
        for (i=0;i<ceil(iyor);i+=1)
            {
            if place_meeting(x,y+i,obj_wall) {y+=i-1; iyor=iyor*-1; iyor=iyor/1.5; break;break}
            
            }
        }
    
    
    ixor=ixor/1.01
    if !place_meeting(x,y+1,obj_wall) {iyor+=0.2}
    if iyor>-0.2 && iyor<0.2 {iyor=0}
    
    krecenie-=ixor}
    
    // przeciwnika
    

    }
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2{





draw_sprite_ext(s_dry_bones_1,0,x+20,y+20,1,1,krecenie,c_white,1)
}




if sekwencja=1{

draw_sprite_ext(global.gfx_enemy_eater_1,0,xstart,ystart,wielkosc+sin(degtorad(stream))/5,wielkosc-sin(degtorad(stream))/5,stream*2,c_white,wielkosc/1.2)
draw_sprite_ext(global.gfx_enemy_eater_1,0,xstart,ystart,wielkosc-sin(degtorad(stream))/10,wielkosc+sin(degtorad(stream))/10,stream*2+180,c_white,wielkosc/2)
draw_sprite_ext(global.gfx_enemy_eater_2,0,xstart,ystart,wielkosc*kierunek,wielkosc,0,c_white,wielkosc)}
if sekwencja>=2{
draw_sprite_ext(global.gfx_enemy_eater_1,0,x,y,wielkosc+sin(degtorad(stream))/5,wielkosc-sin(degtorad(stream))/5,stream*2,c_white,wielkosc/1.2)
draw_sprite_ext(global.gfx_enemy_eater_1,0,x,y,wielkosc-sin(degtorad(stream))/10,wielkosc+sin(degtorad(stream))/10,stream*2+180,c_white,wielkosc/2)
draw_sprite_ext(global.gfx_enemy_eater_2,0,x+(obj_mario.x-x)/20,y+(obj_mario.y-y)/20,wielkosc*kierunek,wielkosc,0,c_white,wielkosc)}



