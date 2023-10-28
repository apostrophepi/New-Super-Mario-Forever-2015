if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_buziol,0,x+20,y+20+bump,1,abs(sin(degtorad(promien))),bump2,c_white,1)
if sin(degtorad(promien))>0 {draw_sprite_ext(global.gfx_point_buziol_eyes,0,x+20,y+20+bump,1,abs(sin(degtorad(promien))),bump2,c_white,1)}

if global.pauza=0{
promien+=5
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if promien>=460+360*4 && !place_meeting(x,y,obj_mario) {instance_destroy();instance_create(x,y,o_point_buziol_solid)}
if promien>=460+360*4 && place_meeting(x,y,obj_mario) {promien-=360}

}


} // end of deactivator

