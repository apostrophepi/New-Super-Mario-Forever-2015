if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if kierunek=1 {x+=0.5}
if kierunek=-1 {x-=0.5}
if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=0.1







draw_sprite_ext(global.gfx_troopa_leg,0,-10+x+12,-20+y+10+sin(stream),kierunek/2,1/2,sin(stream)*40+360,c_white,1)
draw_sprite_ext(global.gfx_troopa,0,-10+x+12,-20+y+sin(stream)*2,kierunek/2,1/2,sin(stream)*5+360,c_white,1)
draw_sprite_ext(global.gfx_troopa_leg,0,-10+x+12,-20+y+10+sin(stream),kierunek/2,1/2,sin(-stream)*40+360,c_white,1)
draw_sprite_ext(global.gfx_troopa_arm,0,-10+x+10,-20+y+5+sin(stream),kierunek/2,1/2,sin(stream)*40+360,c_white,1)
}

