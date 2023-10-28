if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=randomer/100







if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(global.gfx_enemy_jelectro,0,x,y+sin(stream)*2,1/2,1/2,360+sin(stream)*3,c_white,0.5)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.gfx_enemy_jelectro,0,x,y+sin(stream)*2,1.1/2,1.1/2,360+sin(stream)*3,c_white,sin(stream)/2)
    draw_set_blend_mode(bm_normal)
    }
}

