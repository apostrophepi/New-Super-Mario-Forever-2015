if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {

if instance_number(o_duel_ball_life) {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_map_castle_3,0,x,y-80,1,5,kieruneczek,c_white,0.2)
draw_set_blend_mode(bm_normal)

}


draw_sprite_ext(s_map_efekter_1,0,x,y-80,0.75,0.75,stream,c_white,0.6)
stream+=0.5

draw_sprite_ext(global.armata_2,0,x,y-80,1,1,90+obracacz+kieruneczek,c_white,1)
draw_sprite_ext(global.armata_1,0,x,y,1,1,0,c_white,1)







}



if global.pauza=0
    {
    if sekwencja=0
        {
        if point_distance(x,y-150,obj_mario.x,obj_mario.y)<200
            {
            sekwencja=1
            }
        }
    if sekwencja=1 && destroying=0
        {
        if kieruneczek<>0 {kieruneczek=kieruneczek/1.3}
        if obracacz<>0 {obracacz=obracacz/1.3}
        if obracacz<=0.1 && obracacz>=-0.1 && kieruneczek<=0.1 && kieruneczek>=-0.1 {obracacz=0;sekwencja=2}
        
        
        }
    }


