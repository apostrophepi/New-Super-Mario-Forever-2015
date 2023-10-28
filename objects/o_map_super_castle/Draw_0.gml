if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {

if random(100)>90 {part_particles_create(global.particle_map_zamkowyglow,x+random(40)-random(40),y-100,global.part_effect_map_podswietlanie,1)}
part_system_depth(global.particle_map_zamkowyglow,depth+10) 


draw_sprite_ext(s_cien_budynkowy,0,x,y,1.5+sin(koko)/100,1-sin(koko)/100,0,c_white,0.5)
draw_sprite_ext(s_map_super_castle2,0,x,y-190,1/2+sin(koko*5+2)/50,1/2-sin(koko*5+4)/40,0,c_white,1)
draw_sprite_ext(s_map_super_castle2,0,x,y-60,1+sin(koko*5+2)/50,1-sin(koko*5+4)/40,0,c_white,1)
draw_sprite_ext(s_map_super_castle,0,x,y,1+sin(koko*5)/50,1-sin(koko*5+2)/40,0,c_white,1)


dodo=sin(koko*5+2)*4


draw_sprite_ext(s_map_castle_flag2,0,x-72,y-160+sin(koko)*3+dodo,-1+sin(koko*30)/10,1+sin(koko*20)/20,360+sin(koko*25)*10,c_white,1)
draw_sprite_ext(s_map_castle_flag2,0,x+66,y-160+sin(koko+1)*4+dodo,-1+sin(koko*30+3)/10,1-sin(koko)/100,360+sin(koko*25+1)*10,c_white,1)
draw_sprite_ext(s_map_castle_flag2,0,x+26-70,y-265+38+sin(koko+2)*2+dodo,-1+sin(koko*30+1)/100,1-sin(koko)/100,360+sin(koko*25+2)*10,c_white,1)
draw_sprite_ext(s_map_castle_flag2,0,x+44,y-265+38+sin(koko+3)*3+dodo,-1+sin(koko*30+2)/10,1-sin(koko)/100,360+sin(koko*25+3)*10,c_white,1)


draw_sprite_ext(s_map_mario_help,0,x+80,y-150,lolok+lolok*sin(koko*20)/5,lolok+lolok*sin(koko*20)/5,360,c_white,1)



if sekwencja<100 {sekwencja+=1}
if sekwencja=100 && lolok<1 {lolok+=0.05}
if lolok>=1 && sekwencja>=100 && sekwencja<200 {sekwencja+=1}
if sekwencja=200 && lolok>0 {lolok-=0.05}
if sekwencja=200 && lolok<=0 {sekwencja=0}




/*

175 95



64 23


152   22*/




koko+=0.005
}

/* */
/*  */
