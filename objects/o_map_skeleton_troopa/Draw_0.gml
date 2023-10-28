if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if kierunek=1 {x+=0.5}
if kierunek=-1 {x-=0.5}
if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=0.1







draw_sprite_ext(s_map_shadow_1,0,x+18,-25+y+25+sin(stream),kierunek/2,1/2,sin(stream)*40+360,c_white,1)
draw_sprite_ext(s_dry_bones_3,0,x+18,-25+y+15+sin(stream),kierunek/2,1/2,sin(stream)*40+360,c_white,1)
draw_sprite_ext(s_dry_bones_1,0,x+16,-25+y+sin(stream)*2+10,kierunek/2,1/2,sin(stream)*5+360,c_white,1)
draw_sprite_ext(s_dry_bones_3,0,x+18,-25+y+15+sin(stream),kierunek/2,1/2,sin(-stream)*40+360,c_white,1)
draw_sprite_ext(s_dry_bones_4,0,x+18,-25+y+5+sin(stream),kierunek/2,1/2,sin(stream)*40+360,c_white,1)
draw_sprite_ext(s_dry_bones_2,0,x+16+sin(degtorad(180-30*kierunek))*15,-3+y+sin(stream)*2+cos(degtorad(180-30*kierunek))*30,kierunek/2,1/2,sin(stream)*5+360,c_white,1)


}

