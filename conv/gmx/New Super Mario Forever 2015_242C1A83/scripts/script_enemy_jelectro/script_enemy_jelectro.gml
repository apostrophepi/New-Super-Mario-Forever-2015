if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu {


    
    
    
// gfx
stream+=0.05
}}

//if global.pauza<>0 && speed<>0 {nagraj_speed=speed;speed=0};
//if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0};

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    draw_sprite_ext(global.gfx_enemy_jelectro,0,x,y+sin(stream)*2,1,1,360+sin(stream)*3,c_white,1)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.gfx_enemy_jelectro,0,x,y+sin(stream)*2,1.1,1.1,360+sin(stream)*3,c_white,sin(stream)/2)
    draw_set_blend_mode(bm_normal)
    }


