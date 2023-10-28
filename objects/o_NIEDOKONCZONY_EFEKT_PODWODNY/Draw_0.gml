if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
draw_set_blend_mode_ext(efe,efe2)
draw_sprite_ext(global.fx_water_1,0,x,y,1,1,0,c_white,1)
draw_set_blend_mode(bm_normal)

}



if kefir=0 {efe=bm_zero}
if kefir=1 {efe=bm_one}
if kefir=2 {efe=bm_src_color}
if kefir=3 {efe=bm_inv_src_color}
if kefir=4 {efe=bm_src_alpha}
if kefir=5 {efe=bm_inv_src_alpha}
if kefir=6 {efe=bm_dest_alpha}
if kefir=7 {efe=bm_inv_dest_alpha}
if kefir=8 {efe=bm_dest_color}
if kefir=9 {efe=bm_inv_dest_color}
if kefir=10 {efe=bm_src_alpha_sat}
if kefir>10 {kefir=0}

if kefir2=0 {efe2=bm_zero}
if kefir2=1 {efe2=bm_one}
if kefir2=2 {efe2=bm_src_color}
if kefir2=3 {efe2=bm_inv_src_color}
if kefir2=4 {efe2=bm_src_alpha}
if kefir2=5 {efe2=bm_inv_src_alpha}
if kefir2=6 {efe2=bm_dest_alpha}
if kefir2=7 {efe2=bm_inv_dest_alpha}
if kefir2=8 {efe2=bm_dest_color}
if kefir2=9 {efe2=bm_inv_dest_color}
if kefir2=10 {efe2=bm_src_alpha_sat}
if kefir2>10 {kefir2=0}



