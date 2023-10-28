if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=1


x=xstart+sin(degtorad(stream))*30
if stream>0 && stream<90 {kierunek=1}
if stream>90 && stream<270 {kierunek=-1}
if stream>270 {kierunek=1}
if stream>360 {stream=0}




draw_sprite_ext(s_enut_1,0,x,y,kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc,0,c_white,1)
draw_sprite_ext(s_enut_2,0,x+(80*kierunek)*wielkosc,y-(240*wielkosc),kierunek*(wielkosc),wielkosc+sin(degtorad(stream*2))*wielkosc/5,0,c_white,1)

draw_sprite_ext(s_enut_4,0,x+kierunek,y-(420*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)  
draw_sprite_ext(s_enut_3,0,x+kierunek,y-(350*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)
draw_sprite_ext(s_enut_3,0,x+20*kierunek,y-(350*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)


if random(100)>50 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y,global.part_effect_red_smoke,1)}
    

}


