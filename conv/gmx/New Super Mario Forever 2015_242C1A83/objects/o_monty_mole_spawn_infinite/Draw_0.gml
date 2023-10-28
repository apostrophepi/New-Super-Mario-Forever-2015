if global.pauza=0{
if point_distance(x,y,obj_mario.x,obj_mario.y)<450 || seened=1 {

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 && seened=1
    {
    timer1=0
    timer2=0
    timer3=0
    timer4=0
    timer5=0
    seened=0

    kierunek=random(360)
    wielkosc=random(0.4)+0.8
    }
    
seened=1
timer1+=2
if timer1=110 {SXMS_SFX_PlayExt(98,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if timer1>100 && timer1<200
    {
    timer2+=1
    }
if timer2>5
    {
    timer2=0
    part_particles_create(global.particle_sys_1,x,y,global.part_effect_monty_digging,2)
    part_particles_create(global.particle_sys_1,x,y,global.part_effect_smoke,1)
    }
if timer1>130 && timer3<1 && timer1<300
    {
    timer3+=0.05
    }
if timer1>150 && timer4<wielkosc
    {
    timer4+=0.01
    
    
    }

    
if timer1=230
    {
    instance_create(x,y,o_monty_mole_jump)
    }
if timer1>300 {timer3=timer3/1.03;}

}}


if (x<__view_get( e__VW.XView, 0 )+840 && x>__view_get( e__VW.XView, 0 )-80 && y>__view_get( e__VW.YView, 0 )-80 && y<__view_get( e__VW.YView, 0 )+640){
draw_sprite_ext(s_monte_mole_pekniecie,0,x,y,timer4,timer4,kierunek,c_white,timer3)

}

