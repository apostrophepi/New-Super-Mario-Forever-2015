if global.pauza=0{
strzela+=1
if strzela>300
    {
    strzela=-random(100)
    SXMS_SFX_PlayExt(45,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);
    lolo=instance_create(x+20,y+20,o_enemy_fireballs);lolo.ixor=4*kierunek;lolo.iyor=-2-random(3)
    strzela_sizer=1
    }
strzela_sizer=strzela_sizer/1.03
    
    
    
y+=sin(stream*10)
if global.graphics>=5
    {
    if random(100)>60 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_torch_fire,1)}
    if random(100)>99 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_smoke,1)}
    
    }


    if direction<90 || direction>270 {kierunek=1}
    if direction>=90 && direction<=270 {kierunek=-1}
        
    
// gfx
stream+=0.25

if nagraj_speed<>0 {speed=nagraj_speed;nagraj_speed=0}
}
if global.pauza<>0 && speed<>0 {nagraj_speed=speed;speed=0}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1 || znikacz<>0 {
draw_sprite_ext(s_boo_glow,0,x+18+znikacz_x,y+18+znikacz_y+sin(degtorad(stream*10))*5,1+sin(stream/10)/5,1+sin(stream/10)/5,0,c_white,image_alpha)
draw_sprite_ext(s_shy_boo_2,stream,x+18+znikacz_x,y+18+znikacz_y+sin(degtorad(stream*10))*5,kierunek+strzela_sizer/2*kierunek,1-strzela_sizer/2,strzela_sizer*20*kierunek,kolorek,image_alpha)
draw_sprite_ext(s_boo_oczy,stream,x+18+13*kierunek+znikacz_x,y+18-7+znikacz_y+sin(degtorad(stream*10))*5,kierunek+strzela_sizer/2*kierunek,1+strzela_sizer,strzela_sizer*20*kierunek,c_white,image_alpha)


}

