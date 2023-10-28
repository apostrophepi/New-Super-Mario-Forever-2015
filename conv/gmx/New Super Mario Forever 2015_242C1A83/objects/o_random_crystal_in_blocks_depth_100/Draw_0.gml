/*if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    if krysztal=0 {draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_white,1)}
    if krysztal=1 {draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_red,1)}
    if krysztal=2 {draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_yellow,1)}
    if krysztal=3 {draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_orange,1)}
    if krysztal=4 {draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_purple,1)}
    if krysztal=5 {draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_lime,1)}
    
    
       draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.underworld_crystals_2,0,x,y,image_xscale,image_xscale,image_angle,c_white,sin(stream)/5)
    draw_set_blend_mode(bm_normal)
    stream+=0.075
    
    
    
    }
    
    
    
    
    

/* */
/*  */
