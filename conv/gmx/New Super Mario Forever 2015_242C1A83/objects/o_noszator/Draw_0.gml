if ktory=0
    {
    draw_sprite_ext(global.gfx_rzodkiewa,0,x,y,0.75,0.75,0,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_1,0,x,y-18,0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x,y-18,-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x,y-18,-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+(min(33,obj_mario.szybkosc*4)),c_white,1)
    promien+=0.01+obj_mario.szybkosc/20+trzasacz
    if obj_mario.szybkosc<-10 || obj_mario.szybkosc>10
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    }
if ktory=1
    {
    draw_sprite_ext(global.gfx_rzodkiewa2,0,x,y,0.75,0.75,0,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_1,0,x,y-10,0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x,y-10,-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x,y-10,-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+(min(33,obj_mario.szybkosc*4)),c_white,1)
    promien+=0.01+obj_mario.szybkosc/20+trzasacz
    if obj_mario.szybkosc<-10 || obj_mario.szybkosc>10
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    }
if ktory=2
    {
    draw_sprite_ext(global.gfx_rzodkiewa3,0,x,y,0.75,0.75,0,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_1,0,x,y-10,0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x,y-10,-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x,y-10,-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+(min(33,obj_mario.szybkosc*4)),c_white,1)
    promien+=0.01+obj_mario.szybkosc/20+trzasacz
    if obj_mario.szybkosc<-10 || obj_mario.szybkosc>10
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    }
if ktory=3
    {
    draw_sprite_ext(global.gfx_rzodkiewa4,0,x,y,0.75,0.75,0,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_1,0,x-4,y-20,0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x-4,y-20,-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x-4,y-20,-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+(min(33,obj_mario.szybkosc*4)),c_white,1)
    promien+=0.01+obj_mario.szybkosc/20+trzasacz
    if obj_mario.szybkosc<-10 || obj_mario.szybkosc>10
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    }
if ktory=4
    {
    draw_sprite_ext(global.gfx_rzodkiewa5,0,x,y,0.75,0.75,0,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_1,0,x,y-10,0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x,y-10,-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x,y-10,-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+(min(33,obj_mario.szybkosc*4)),c_white,1)
    promien+=0.01+obj_mario.szybkosc/20+trzasacz
    if obj_mario.szybkosc<-10 || obj_mario.szybkosc>10
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    }
if ktory=5
    {
    draw_sprite_ext(global.gfx_rzodkiewa6,0,x,y,0.75,0.75,0,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_1,0,x,y-10,0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x,y-10,-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+(min(33,obj_mario.szybkosc*4)),c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x,y-10,-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+(min(33,obj_mario.szybkosc*4)),c_white,1)
    promien+=0.01+obj_mario.szybkosc/20+trzasacz
    if obj_mario.szybkosc<-10 || obj_mario.szybkosc>10
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    }
if ktory=6
    {
    draw_sprite_ext(global.gfx_point_brick_alone,0,x,y-sizer*5,1-sizer,1-sizer,0,c_white,1)
    if sizer<0.15 {sizer+=0.01}
    }
if ktory=8
    {
    draw_sprite_ext(global.gfx_point_brick_alone2,0,x,y-sizer*5,1-sizer,1-sizer,0,c_white,1)
    if sizer<0.15 {sizer+=0.01}
    }
if ktory=7
    {
    part_particles_create(global.particle_sys_2,x+32*sin(degtorad(image_angle+180))+random(10)-random(10),y+32*cos(degtorad(image_angle+180))+random(10)-random(10),global.part_effect_star3,1)
    if timer3=0 {draw_sprite_ext(global.gfx_bomba,0,x,y,1,1,image_angle,c_white,1)}
    if timer3=1 {draw_sprite_ext(global.gfx_bomba2,0,x,y,1,1,image_angle,c_white,1)}
    timer+=1
    if timer>150 {timer2+=1}
    if timer2>4 {timer2=0;if timer3=0 {timer3=1;break;break}; if timer3=1 {timer3=0;break;break}}
    if timer>250
        {
        SXMS_SFX_PlayExt(66,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        instance_destroy(); instance_create(x,y,o_explosion_bomb);obj_mario.kont_noszenia=360;obj_mario.nosi_wyrwane=0;obj_mario.niesie=0;obj_mario_anim.niesie=0}
    }

