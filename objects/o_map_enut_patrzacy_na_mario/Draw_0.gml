if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

stream+=1

if x>o_map_player_1.x {kierunek=-1}
if x<o_map_player_1.x {kierunek=1}



draw_sprite_ext(s_enut_1,0,x,y,kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc,0,c_white,1)
draw_sprite_ext(s_enut_2,0,x+(80*kierunek)*wielkosc,y-(240*wielkosc),kierunek*(wielkosc),wielkosc+sin(degtorad(stream*2))*wielkosc/5,0,c_white,1)

draw_sprite_ext(s_enut_4,0,x+kierunek,y-(420*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)  
draw_sprite_ext(s_enut_3,0,x+kierunek,y-(350*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)
draw_sprite_ext(s_enut_3,0,x+20*kierunek,y-(350*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)


if random(100)>50 {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y,global.part_effect_red_smoke,1)}
    

}


