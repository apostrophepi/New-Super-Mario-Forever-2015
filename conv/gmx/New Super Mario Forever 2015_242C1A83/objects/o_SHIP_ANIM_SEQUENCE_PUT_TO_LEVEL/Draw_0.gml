scrooluj_x+=scrooluj_x_adder
if scrooluj_x_adder>0 && scrooluj_x_adder<10 {scrooluj_x_adder+=0.046}

// INIT
if aktywuj_gracza=0
    {
    aktywuj_gracza=1
    obj_mario.sekwencja=0
    obj_mario.grawitacja=0
    obj_mario_anim.animacja=6
    obj_mario_anim.size2=1
    obj_mario.power_star_kolorek=c_white
        with (obj_mario_anim)
        {
        //szybkosc_biegu
        power_star_kolorek=c_white
        }
    }
// SEQUENCE GO
if sekwencja=0
    {
    timer+=1
    if timer>50 {timer=0; sekwencja=1}
    if timer=20 {SXMS_SFX_PlayExt(128,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    }
if sekwencja=1
    {
    with(obj_mario)
        {
        if random(100)>85 {part_particles_create(global.particle_map_sterring,x,y+50,global.part_BOOMBOOM_smoke3,1)}
        }
        
    obj_mario.x+=szybkosc_gracza
    obj_mario_anim.animacja=0
    if szybkosc_gracza<=10 {szybkosc_gracza+=0.1;scrooluj_x_adder+=0.01}
    timer+=1
    if timer>300
        {
        timer=0
        sekwencja=2
        grawitacja_gracza=-15
        SXMS_SFX_PlayExt(10+round(random(3)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        SXMS_SFX_PlayExt(19,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    }
if sekwencja=2
    {
    timer+=1
    obj_mario.y+=grawitacja_gracza
    obj_mario.x+=szybkosc_gracza
    if obj_mario.x>global.sekwencja_statku.x {x-=50}
    if obj_mario.x<global.sekwencja_statku.x {x+=50}
    
    grawitacja_gracza+=0.5
    obj_mario_anim.animacja=1
    if grawitacja_gracza>=5 && obj_mario.y>=global.sekwencja_statku.y {SXMS_SFX_PlayExt(25,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);sekwencja=3;timer=0;part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20)}
    }
if sekwencja=3
    {
    wylatuj+=0.1
    y-=wylatuj
    obj_mario_anim.animacja=11
    obj_mario.x=global.sekwencja_statku.x
    obj_mario.y=global.sekwencja_statku.y
    timer+=1
    if timer>150 {room_goto(gdzie_idzie)}
    }
    

x=__view_get( e__VW.XView, 0 )+1100-min(obj_mario.x/5,500)
draw_sprite_ext(global.ship_anim,0,x,y,1,1,sin(degtorad(stream))*5,c_white,1)

kotwica.x=x+sin(degtorad(-40+sin(degtorad(stream))*5))*150
kotwica.y=y+cos(degtorad(-40+sin(degtorad(stream))*5))*150


stream+=2
if stream>0.01 {global.pauza=90}
if random(100)>85 {part_particles_create(global.particle_map_sterring,x+200,y+random(200)-random(200),global.part_BOOMBOOM_smoke3,1)}






draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1+alphar/4,1+alphar/4,0,c_white,alphar)
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 ),-1-alphar/4,1+alphar/4,0,c_white,alphar)
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),1+alphar/4,-1-alphar/4,0,c_white,alphar)
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),-1-alphar/4,-1-alphar/4,0,c_white,alphar)


alphar+=0.005

