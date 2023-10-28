if global.pauza=0{

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu/2 {aktywuj=1}


if aktywuj=1 {
if sekwencja=0 {x=-10000;timer+=1;if timer>200{timer=0;sekwencja=1;kat=random(360);SXMS_SFX_PlayExt(99,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}
if sekwencja=1
    {
    strzela_sizer=strzela_sizer/1.1
    kat+=obracaj_ile_co_step
    if timer=120 {strzela_sizer=1;koko=instance_create(x+20,y+20,o_boo_pojawiator_strzelajacy_pocisk);koko.depth=depth;koko.energy=zasieg_pociskow;koko.speed=szybkosc_pociskow;koko.direction=point_direction(x,y,obj_mario.x,obj_mario.y-30);SXMS_SFX_PlayExt(73,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);}
    x=obj_mario.x+sin(degtorad(kat))*zasieg_od_gracza
    y=obj_mario.y+cos(degtorad(kat))*zasieg_od_gracza+sin(degtorad(stream*5))*10
    dire=point_direction(x,y,obj_mario.x,obj_mario.y)
    timer+=1
    if timer<200 && image_alpha<1 {image_alpha+=0.05}
    if timer>200 && image_alpha>0 {image_alpha-=0.05;znikacz_efekt+=1;if znikacz_efekt>znikaczus {znikaczus+=1;znikacz_efekt=0;part_particles_create(global.particle_sys_3,x+random(50)-random(50),y+random(50)-random(50),global.part_effect_torch_star,1)}}
    if timer>300 {znikaczus=0; timer=0; ilosc_objawien-=1; if ilosc_objawien>0 {sekwencja=0}; else {instance_destroy()}}
    }
        
    
// gfx
stream+=0.25

}}






if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1 {

if global.graphics>=5 && sekwencja=1
    {
    if random(100)>60 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_torch_fire,1)}
    if random(100)>99 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_smoke,1)}
    }
    
draw_sprite_ext(s_boo_glow,0,x+18,y+18+sin(degtorad(stream*10))*5,1+sin(stream/10)/5,1+sin(stream/10)/5,0,c_white,image_alpha)
draw_sprite_ext(s_shy_boo_2,stream,x+18,y+18,kierunek+strzela_sizer/2*kierunek,1-strzela_sizer/2,dire,kolorek,image_alpha)
draw_sprite_ext(s_boo_oczy,stream,x+18+sin(degtorad(dire+105))*15,y+18+cos(degtorad(dire+105))*15,kierunek+strzela_sizer/2*kierunek,1+strzela_sizer,dire,c_white,image_alpha)

}

