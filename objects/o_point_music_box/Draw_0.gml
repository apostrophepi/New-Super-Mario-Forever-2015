if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_music_box,0,x+20+image_alpha*2-sin(promien/5)*4,y+20+downed+bump+sin(promien/7)*4,1+abs(downed/40)+abs(image_alpha/10)-sin(promien/20)/10,1+sin(promien/10)/10,downed/40+sin(promien/10)*5,c_white,1-bump3)
draw_sprite_ext(global.gfx_point_music_box_nuta,0,x+20+sin(promien/10)*3+image_alpha*2,y+20+downed+bump+sin(promien/4)*6,1+abs(image_alpha/40),1,image_index+sin(promien/14)*20,c_white,1-bump3)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_point_music_box_nuta,0,x+20+sin(promien/10)*3+image_alpha*2,y+10+downed+bump+sin(promien/4)*6,1+downed/20+abs(image_alpha/40),1+downed/20,image_index+sin(promien/14)*20,c_white,downed/20)
draw_set_blend_mode(bm_normal)
promien+=0.6+downed+image_alpha

if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom

if place_meeting(x+1,y,obj_mario)
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    part_particles_create(global.particle_sys_1,x+16,y+16,global.part_effect_music_box,3)
    obj_mario.szybkosc=3
    image_alpha=-20;kicked=1
    lolo=instance_create(x-20,y+38,o_block_killer)
    lolo.image_angle=90
    }
if place_meeting(x-1,y,obj_mario)
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    part_particles_create(global.particle_sys_1,x+16,y+16,global.part_effect_music_box,3)
    obj_mario.szybkosc=-3
    image_alpha=20;kicked=1
    lolo=instance_create(x+40,y+38,o_block_killer)
    lolo.image_angle=90
    }   
    
if place_meeting(x,y-2,obj_mario)
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    part_particles_create(global.particle_sys_1,x+16,y+16,global.part_effect_music_box,3)
    obj_mario.grawitacja=-10
    obj_mario.sekwencja=1
    downed=20;kicked=1
    instance_create(x,y+36,o_block_killer)
    }
if destroy=1
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    part_particles_create(global.particle_sys_1,x+16,y+16,global.part_effect_music_box,3)
    destroy=0
    obj_mario.grawitacja=4
    obj_mario.sekwencja=1
    downed=-20;kicked=1
    instance_create(x,y-16,o_block_killer)
    }
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;image_index=image_index/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if image_alpha<>0 {image_alpha=image_alpha/1.1}
}


} // end deactivator

