if on=1
    {
    instance_create(x,y,o_point_gold_block_offed)
    instance_destroy()
    }

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if image_alpha<1 {image_alpha+=0.05}
draw_sprite_ext(global.gfx_point_gold_activator,0,x+20,y+20+downed+bump,1,1,bump2,c_white,image_alpha)
draw_set_font(global.font)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
promien+=0.1
draw_text_ext_transformed(x+18,y+sin(promien/4)*3+downed+bump,string_hash_to_newline("!"),0,0,1,1,0)


if global.graphics>=1{
draw_set_blend_mode(bm_add)
if bump3=0 {draw_sprite_ext(global.gfx_point_gold_activator,0,x+20,y+20+downed+bump,1,1,bump2,c_white,sin(promien)/5)}
draw_set_blend_mode(bm_normal)
promien+=0.2
}

if global.pauza=0{
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if destroy=1
    {
    SXMS_SFX_PlayExt(43,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    destroy=0
    bump=-10
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x,y-16,o_block_killer)
    }
}

} // end of deactivator

