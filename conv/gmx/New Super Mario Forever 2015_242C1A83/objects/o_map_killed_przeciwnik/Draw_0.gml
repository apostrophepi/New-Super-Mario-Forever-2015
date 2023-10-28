x+=ixor
y+=iyor
iyor+=0.5
if y>ystart+iyor_killing
    {
    instance_destroy()
    
    if random(2)>1 {part_particles_create(global.particle_sys_1,x+random(32)-random(32),y+random(32)-random(32),global.part_effect_water_sparkle,1)}
    repeat(5){part_particles_create(global.particle_sys_1,x+random(32)-random(32),y+random(32)-random(32),global.part_effect_smoker_mapmini,1)}
    repeat(5){part_particles_create(global.particle_sys_1,x+random(32)-random(32),y+random(32)-random(32),global.part_effect_water_sparkle,1)}
    repeat(5){part_particles_create(global.particle_sys_1,x+random(32)-random(32),y+random(32)-random(32),global.part_effect_map_watering_2,1)}
    
    part_system_depth(global.particle_map_za_mario,o_map_player_1.depth) 
    
    
    }

if rodzaj=0{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_goomba,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),1,1,globalny_kat*kierunek+sin(stream)*40,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),-1,1,globalny_kat*kierunek-sin(stream)*40,c_white,1)}}

if rodzaj=1{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_troopa_shell,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
}}

if rodzaj=2{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_troopa_shell,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
}}

if rodzaj=3{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_troopa_7,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
}}

if rodzaj=4{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_troopa_8,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
}}

if rodzaj=5{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_troopa_shell,0,x+16,y+15+sin(stream)*2,1.5,1.5,globalny_kat*kierunek,c_white,1)
}}


if rodzaj=6{
globalny_kat-=ixor*2
stream+=0.1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.gfx_lakitus_1,0,x+16,y+15+sin(stream)*2,1/1.5,1/1.5,globalny_kat*kierunek,c_white,1)
}}







