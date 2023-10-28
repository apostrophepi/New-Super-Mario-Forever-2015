if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{


draw_sprite_ext(global.ring_points,0,x,y,1+sin(stream)/20,1-sin(stream)/20,0,c_white,1/dzielnik)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(stream+0.5)/5,1-sin(stream+0.5)/5,0,c_white,sin(stream)/dzielnik+1/dzielnik)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(stream+0.5)/5,1-sin(stream+0.5)/5,sin(stream+2)*55,c_white,sin(stream+2)/dzielnik+1/dzielnik)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(stream+0.5+2)/5,1-sin(stream+0.5+2)/5,sin(stream+4)*55,c_white,sin(stream+4)/dzielnik+1/dzielnik)
draw_set_blend_mode(bm_normal)
stream+=0.1
draw_sprite_ext(s_boo_glow,0,x+sin(degtorad(stream*50))*30,y+cos(degtorad(stream*50))*60,1,1,0,c_white,1/dzielnik)

if random(100)>60 && dzielnik=1{
part_particles_create(global.particle_sys_1,x+sin(degtorad(stream*50))*30,y+cos(degtorad(stream*50))*60,global.part_effect_star2,3)}

}


if global.pauza=0{


if collected=1 {dzielnik+=1+dzielnik/10}
if place_meeting(x,y,obj_mario) && sekwencja=0 {sekwencja=1;collected=1;global.coins_red_time=660;obj_mario.music_tick=0}
if sekwencja=1
    {
    wielkol+=0.1
    draw_set_blend_mode(bm_add)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(1)/5+wielkol,1-sin(stream+0.5)/5+wielkol,dzielnik*10,c_white,sin(1)+1/dzielnik)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(2)/5+wielkol,1-sin(stream+0.5)/5+wielkol,sin(2)*55+dzielnik*10,c_white,sin(stream+2)+1/dzielnik)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(3)/5+wielkol,1-sin(stream+0.5+2)/5+wielkol,sin(3)*55+dzielnik*10,c_white,sin(stream+4)+1/dzielnik)
draw_sprite_ext(global.ring_points,0,x,y,1+sin(3)/5+wielkol/2,1-sin(stream+0.5+2+1)/5+wielkol/2,sin(3+1)*55+dzielnik*20,c_white,sin(stream+4)+1/dzielnik)
draw_set_blend_mode(bm_normal)
    
    if dzielnik>200 {sekwencja=2;instance_destroy()}
    }



}

