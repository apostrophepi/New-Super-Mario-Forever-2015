if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*(1+dlugosc_assign/15) {


for(i=0;i<dlugosc_assign;i+=1)
    {
    draw_sprite_ext(s_roslinker_2,0,x+20,y+i*40-dlugosc*40+20-dlugosc_dociagnij_grafike,1+sin(promien+i)/10,1,sin(promien+i)*5,c_white,1)
    }
for(i=0;i<dlugosc_assign;i+=1)
    {
    draw_sprite_ext(s_roslinker,0,x+20,y+i*40-dlugosc*40+20-dlugosc_dociagnij_grafike,wielkosciownik+sin(promien+i)/(5+dlugosc_dzielnik),wielkosciownik-sin(promien+i)/(5+dlugosc_dzielnik),0,c_white,1)
    }       
draw_sprite_ext(s_roslinker_3,0,x+20,y-dlugosc*40+20-dlugosc_dociagnij_grafike-20,-wielkosciownik,wielkosciownik,-sin(promien)*(20/dlugosc_dzielnik)-(30/dlugosc_dzielnik),c_white,1)
draw_sprite_ext(s_roslinker_3,0,x+20,y-dlugosc*40+20-dlugosc_dociagnij_grafike-20,wielkosciownik,wielkosciownik,+sin(promien)*(20/dlugosc_dzielnik)+(30/dlugosc_dzielnik),c_white,1)

draw_sprite_ext(global.gfx_point_block,0,x+20,y+20+downed+bump,1,1,bump2,c_white,1-bump3)
draw_sprite_ext(global.gfx_point_block_e,0,x+20,y+20+downed+bump,1,1,bump2,c_white,bump3)
draw_sprite_ext(global.gfx_point_block_u,0,x+20,y+20+sin(promien/2)*5+downed+bump,1,abs(cos(promien/2)/5)+0.75+downed/20,bump2,c_white,1-bump3)
if global.graphics>=1{
draw_set_blend_mode(bm_add)
if bump3=0 {draw_sprite_ext(global.gfx_point_block,0,x+20,y+20+downed+bump,1,1,bump2,c_white,sin(promien)/5)}
draw_set_blend_mode(bm_normal)
promien+=0.2



}


    
    
    
    
if global.pauza=0{

if dlugosc<dlugosc_roslinki {dlugosc+=0.05;dodawacz+=0.05}

if dlugosc>dlugosc_roslinki {dlugosc=dlugosc_roslinki-0.1}
//if dlugosc>=dlugosc_roslinki-1 && dlugosc_dociagnij_grafike<40 {dlugosc_dociagnij_grafike+=1}
if dodawacz>=1 {dodawacz=0;dlugosc_assign+=1;gogo=instance_create(x,y-dlugosc_assign*40,o_chamak);gogo.depth=-99999;gogo.visible=0;}


if dlugosc>=dlugosc_roslinki && dlugosc_dzielnik<10000 {dlugosc_dzielnik+=0.1+dlugosc_dzielnik/100}
if wielkosciownik<1 {wielkosciownik+=0.01}

/*
dlugosc_roslinki=0
dlugosc=0
*/
if place_meeting(x,y,o_explosion_bomb_marker) {destroy=1} // boom
if !place_meeting(x,y,obj_mario_windor) {kicked=0}
if place_meeting(x,y,obj_mario_windor) && kicked=0 {downed=10;kicked=1}
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
if destroy=1 && killed=0
    {
    killed=1
    destroy=2
    bump=-40
    bump2=random(40)-random(40)
    bump3=0.05
    part_particles_create(global.particle_sys_1,x+16,y,global.part_point_block,3)
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
    instance_create(x+16,y+16,o_point_coin)
    instance_create(x,y-16,o_block_killer)
    }
}




} // end of deactivator

/* */
/*  */
