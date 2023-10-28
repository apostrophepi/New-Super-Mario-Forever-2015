function script_enemy_pirania_zwykla_2() {
	if global.pauza=0
	    {
	    // absorber obrazen jak pirania jest schowana
	    if poszedl=0 && energy<absorber_obrazen {energy=absorber_obrazen}
	    if poszedl<>0 && absorber_obrazen<>energy {absorber_obrazen=energy}
    
    
    
	    // efekt oberwania
	    if oberwal_ile_mial<>energy {oberwal_ile_mial=energy; oberwal=1}
    
    
	    // algorytmy
	    timer+=1
	    if sekwencja=0 && timer>40 && (x<obj_mario.x-130 || x>obj_mario.x+130) {timer=0;sekwencja=1}
	    if sekwencja=1 && poszedl<dlugosc*40 {poszedl+=2;timer=0}
	    if sekwencja=1 && poszedl>=dlugosc*40 && timer>60 {timer=0;sekwencja=2}
	    if sekwencja=2 && poszedl>0 {poszedl-=2; timer=0}
	    if sekwencja=2 && poszedl<=0 && timer>60 {sekwencja=0}
    
	    if energy<=0 {kill=10}
    
	    if kill=10 {instance_destroy();
	        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        for(i=0;i<round(poszedl/20);i+=1)
	        {part_particles_create(global.particle_sys_1,x+sin(degtorad(kierunek_wychodzenia+180))*i*20,y+cos(degtorad(kierunek_wychodzenia+180))*i*20,global.part_effect_lisciong,2)}}
    
	   if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    instance_destroy();
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    for(i=0;i<round(poszedl/20);i+=1)
	    {part_particles_create(global.particle_sys_1,x+sin(degtorad(kierunek_wychodzenia+180))*i*20,y+cos(degtorad(kierunek_wychodzenia+180))*i*20,global.part_effect_lisciong,2)}
	    } 
    
	    // animacja
	    anim+=10
	    if sekwencja<>0 {
	    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
    
	    if anim>360 {global.one_sample_pirania_bite=1;anim=0}}}
	    }
    
    
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {  
	for(i=0;i<ceil(poszedl/40);i+=1)
	    {
	    draw_sprite_ext(s_pirania_4,anim_losowacz,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),1,1,kierunek_wychodzenia,c_white,1)  
	    }
 
	kolorek=make_color_rgb(255,220,220)    
	draw_sprite_ext(s_pirania_1,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.2,1.2,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20,kolorek,1)
	draw_sprite_ext(s_pirania_2,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.2,1.2,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20,kolorek,1) 
	draw_sprite_ext(s_pirania_3,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.2,1.2,kierunek_wychodzenia,c_white,1)  


	image_yscale=1+poszedl/40
	image_angle=kierunek_wychodzenia+180}


	if oberwal>0 {
	draw_set_blend_mode(bm_add)
	for(i=0;i<ceil(poszedl/40);i+=1)
	    {
	    draw_sprite_ext(s_pirania_4,anim_losowacz,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),1,1,kierunek_wychodzenia,c_white,oberwal)  
	    }
	draw_sprite_ext(s_pirania_1,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.2,1.2,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20,c_white,oberwal)
	draw_sprite_ext(s_pirania_2,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.2,1.2,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20,c_white,oberwal) 
	draw_sprite_ext(s_pirania_3,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1.2,1.2,kierunek_wychodzenia,c_white,oberwal)  

	draw_set_blend_mode(bm_normal)
	oberwal-=0.1
	}






}
