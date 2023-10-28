if global.pauza=0
    {
    // absorber obrazen jak pirania jest schowana
    if poszedl=0 && energy<absorber_obrazen {energy=absorber_obrazen}
    if poszedl<>0 && absorber_obrazen<>energy {absorber_obrazen=energy}
    
    // odwracanie sie
    
    if sekwencja=1 {
    desdir=abs(point_direction(x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,obj_mario.x,obj_mario.y+32-200))
    if abs(kierunek-desdir)<=180 {if kierunek<desdir-2 {kierunek+=2}; if kierunek>desdir+2 {kierunek-=2}}
    else {if kierunek<desdir+2 {kierunek-=2} ;if kierunek>desdir-2 {kierunek+=2}}}
    
    if sekwencja<>1 {
    desdir=kierunek_wychodzenia+90
    if abs(kierunek-desdir)<=180 {if kierunek<desdir-2 {kierunek+=2}; if kierunek>desdir+2 {kierunek-=2}}
    else {if kierunek<desdir+2 {kierunek-=2} ;if kierunek>desdir-2 {kierunek+=2}}}
    
    if kierunek<0 {kierunek=360}
    if kierunek>360 {kierunek=0}
    
    
    
    
    // efekt oberwania
    if oberwal_ile_mial<>energy {oberwal_ile_mial=energy; oberwal=1}
    
    
    // algorytmy
    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.6{timer+=1};
    if sekwencja=0 && timer>40 && (x<obj_mario.x-130 || x>obj_mario.x+130) {timer=0;sekwencja=1}
    if sekwencja=1 && poszedl<dlugosc*40 {poszedl+=4;timer=0}
    if sekwencja=1 && poszedl>=dlugosc*40 && timer<30 && anim>-120 {anim-=10}
    if sekwencja=1 && timer=40
    {SXMS_SFX_PlayExt(74,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);lolo=instance_create(sin(degtorad(kierunek+180))*5+x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,cos(degtorad(kierunek+180))*5+y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,o_pirania_mega_big_fireball_3);
    lolo.speed=5
    }
    if sekwencja=1 && poszedl>=dlugosc*40 && timer>150 && anim<0 {anim+=20}
    if sekwencja=1 && poszedl>=dlugosc*40 && timer>180 {timer=0;sekwencja=2}
    if sekwencja=2 && poszedl>0 {poszedl-=4; timer=0}
    if sekwencja=2 && poszedl<=0 && timer>60 {sekwencja=0}
    
    
    // zjadanie MARIO
    if sekwencja=1 && anim<=-120 && collision_circle(sin(degtorad(desdir+180))*5+x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,cos(degtorad(desdir+180))*5+y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,80,obj_mario,0,1)
        {sekwencja=10}
    if sekwencja=10 && anim<60 {anim+=20}
    
    
    if energy<=0 {kill=10}
    
    if kill=10 {instance_destroy();
        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        for(i=0;i<round(poszedl/20);i+=1)
        {part_particles_create(global.particle_sys_1,x+sin(degtorad(kierunek_wychodzenia+180))*i*20,y+cos(degtorad(kierunek_wychodzenia+180))*i*20,global.part_effect_lisciong,2)}}
 if kill=1000
    {
    obj_mario.power_star_combo+=1
instance_destroy();
        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        for(i=0;i<round(poszedl/20);i+=1)
        {part_particles_create(global.particle_sys_1,x+sin(degtorad(kierunek_wychodzenia+180))*i*20,y+cos(degtorad(kierunek_wychodzenia+180))*i*20,global.part_effect_lisciong,2)}
    }    
 
    // animacja
    if sekwencja<>0 {
    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.6{
    
    if anim>360 {global.one_sample_pirania_bite=1;anim=0}}}
    }
  
    
    
    
    
      
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.6{  
for(i=0;i<ceil(poszedl/40);i+=1)
    {
    draw_sprite_ext(s_pirania_6,i,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),0.9,1,kierunek_wychodzenia,c_white,1)  
    }
 
kolorek=make_color_rgb(255,190,190)    
draw_sprite_ext(s_pirania_5,0,sin(degtorad(kierunek+180))*5+x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,cos(degtorad(kierunek+180))*5+y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1,1,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20+kierunek-90-kierunek_wychodzenia+20,kolorek,1)
draw_sprite_ext(s_pirania_5,0,sin(degtorad(kierunek))*5+x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,cos(degtorad(kierunek))*5+y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,-1,1,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20+kierunek-90-kierunek_wychodzenia-20,kolorek,1) 

image_yscale=1+poszedl/40
image_angle=kierunek_wychodzenia+180}


if oberwal>0 {
draw_set_blend_mode(bm_add)
for(i=0;i<ceil(poszedl/40);i+=1)
    {
    draw_sprite_ext(s_pirania_6,i,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),1,1,kierunek_wychodzenia,c_white,oberwal)  
    }
draw_sprite_ext(s_pirania_1,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.8,1.8,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20+kierunek-90-kierunek_wychodzenia,c_white,oberwal)
draw_sprite_ext(s_pirania_2,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.8,1.8,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20+kierunek-90-kierunek_wychodzenia,c_white,oberwal) 
draw_sprite_ext(s_pirania_3,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.8,1.8,kierunek_wychodzenia+kierunek-90,c_white,oberwal)  
 



draw_set_blend_mode(bm_normal)
oberwal-=0.1
}

image_xscale=2
//draw_sprite_ext(s_piranha_mark,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5)
