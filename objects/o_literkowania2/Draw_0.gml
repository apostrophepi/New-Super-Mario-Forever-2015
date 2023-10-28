if global.pauza=0
    {
    y-=iyor
    iyor=iyor/1.3
    life-=1
    if life<=0 {image_alpha-=0.1}
    if image_alpha<=0 {instance_destroy()}
    }


draw_set_font(global.map_fonts_1)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_blend_mode(bm_add)
draw_set_alpha(image_alpha/2)
draw_text_ext_transformed(x,y,string_hash_to_newline(wartosc),0,0,1+life/400-0.25,1+life/400-0.25,0)
draw_set_blend_mode(bm_normal)
draw_set_alpha(image_alpha)
draw_text_ext_transformed(x,y,string_hash_to_newline(wartosc),0,0,0.75+life/400-0.25,0.75+life/400-0.25,0)



