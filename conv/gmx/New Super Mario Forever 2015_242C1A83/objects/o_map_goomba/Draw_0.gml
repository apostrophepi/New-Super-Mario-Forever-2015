if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if kierunek=1 {x+=0.5}
if kierunek=-1 {x-=0.5}
if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=0.1






draw_sprite_ext(global.gfx_goomba,0,x+16-20,-28+y+15+sin(stream)*2,kierunek/2,1/2,sin(stream)*5+360,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+10-20,-28+y+25+sin(stream)*4,kierunek/2,1/2,0,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+20-20,-28+y+25+sin(-stream)*1,kierunek/2,1/2,0,c_white,1)
}

