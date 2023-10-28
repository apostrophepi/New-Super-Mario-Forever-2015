if on=1
    {
    if !place_meeting(x,y,obj_mario) {
    instance_create(x,y,o_point_blue_block)
    instance_destroy()}
    if place_meeting(x,y,obj_mario) {on=0}
    }

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if image_alpha>0.2 {image_alpha-=0.05}
draw_sprite_ext(global.gfx_point_blue_activator,0,x+20,y+20,1,1,0,c_white,image_alpha)
draw_set_font(global.font)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
promien+=0.1
draw_text_ext_transformed(x+18,y+sin(promien/4)*3+downed+bump,string_hash_to_newline("!"),0,0,1,1,0)

} // end of deactivator

