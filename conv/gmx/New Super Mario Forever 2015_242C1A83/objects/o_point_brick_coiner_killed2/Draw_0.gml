if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(s_golden_bigga,0,x,y+downed*2+bump*2,1-killed,1-killed,bump2,c_white,1-killed)
draw_sprite_ext(s_golden_bigga2,0,x,y+downed*2+bump*2,1,1,bump2,c_white,killed)


if global.pauza=0{
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.20}
if coin_numba>=1 && coin_numba<19 {coin_numba+=0.05}
if killed>0 && killed<1 {killed+=0.05}

if destroy=1
    {
    killed=0.05
    destroy=0
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    }
}


} // end of deactivator

