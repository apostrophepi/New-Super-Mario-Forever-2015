if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_blue_activator,0,x+20,y+20+downed+bump,1,1,bump2+sin(promien/5)*5,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_point_blue_activator,0,x+20,y+20+downed+bump,1+abs(bump/40),1+abs(bump/40),bump2+sin(promien/5)*5,c_white,abs(bump/40))
draw_set_blend_mode(bm_normal)
draw_set_font(global.font)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
promien+=0.1
if on=1 {draw_text_ext_transformed(x+18,y+sin(promien/4)*3+10+downed+bump,string_hash_to_newline("ON"),0,0,0.65,0.65,0)}
if on=0 {draw_text_ext_transformed(x+18,y+sin(promien/4)*3+10+downed+bump,string_hash_to_newline("OFF"),0,0,0.5,0.5,0)}


if global.graphics>=1{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
draw_set_blend_mode(bm_add)
if bump3=0 {draw_sprite_ext(global.gfx_point_blue_activator,0,x+20,y+20+downed+bump,1,1,bump2,c_white,sin(promien)/5)}
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
    SXMS_SFX_PlayExt(113,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    destroy=0
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x,y-16,o_block_killer)
    if global.english_or_polish=0 {
    if on=0 {on=1;lolo=instance_create(x,y,o_literkowania);lolo.wartosc="Blue_Switch_ON";with(o_point_blue_block){on=1};with(o_point_blue_block_offed){on=1};break}
    if on=1 {on=0;lolo=instance_create(x,y,o_literkowania);lolo.wartosc="Blue_Switch_OFF";with(o_point_blue_block){on=1};with(o_point_blue_block_offed){on=1};break}}
    if global.english_or_polish=1 {
    if on=0 {on=1;lolo=instance_create(x,y,o_literkowania);lolo.wartosc="Niebieski_włączony";with(o_point_blue_block){on=1};with(o_point_blue_block_offed){on=1};break}
    if on=1 {on=0;lolo=instance_create(x,y,o_literkowania);lolo.wartosc="Niebieski_wyłączony";with(o_point_blue_block){on=1};with(o_point_blue_block_offed){on=1};break}}
    }
}

} // end of deactivator

