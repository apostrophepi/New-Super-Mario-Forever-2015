

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(s_check_point_1,0,x,y,1,1,sin(stream)*(10+adder/10),c_white,1)
}




if global.pauza=0{
if efekter>0 {efekter+=1}
    if efekter>0 && efekter<100 && random(50)>5 {part_particles_create(global.particle_sys_1,x+random(50)-random(50),y-random(50),global.part_effect_star,1)}
    
if timer>=1 {timer+=1}
if timer=30 {instance_create(x,y,o_check_point_animer)}
stream+=0.01+adder/100
if sekwencja=0 {
if collision_rectangle(x-50,y-200,x+50,y,obj_mario,1,1) 
    {
    efekter=1;
    if timer=0 {timer=1}
    if adder=0 {adder=1;sekwencja=1
    global.punkty+=1000;SXMS_SFX_PlayExt(118,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);
    global.check_point_slot=global.last_level_played
    
    global.chpoint_id=id
    global.chpoint_sublevel=room
    }
    
    
    }}
if sekwencja=1 {adder=100;sekwencja=2}
if sekwencja=2 {adder=adder/1.03; if adder<30 && sampel=0 {sampel=1;    lolo=instance_create(x+16,y-150,o_cyferkownia)
    lolo.napis="CHECK_POINT!"}}
}

