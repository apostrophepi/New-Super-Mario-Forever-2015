function script_paralax_add_glow() {
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*visible_size*image_yscale
	    {
	    draw_sprite_ext(s_boo_glow,0,x,y,3,3,image_angle,c_white,image_alpha)
	    }



}
