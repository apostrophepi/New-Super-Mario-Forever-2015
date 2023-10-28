if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if kierunek=1 {x+=0.5}
if kierunek=-1 {x-=0.5}
if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=0.1







draw_sprite_ext(global.gfx_troopa_leg,0,-20+x+18,-40+y+5+sin(stream)+25,kierunek/2,1/2,(sin(stream)*40)/jump_anim+360+jump_anim*kierunek,c_white,1)
draw_sprite_ext(global.gfx_troopa_4,0,-20+x+16,-40+y++sin(stream)*2-10+25,kierunek/2,1/2,sin(stream)*8+360+rzut_anim*kierunek/2,c_white,1)
draw_sprite_ext(global.gfx_troopa_leg,0,-20+x+18,-40+y+5+sin(stream)+25,kierunek/2,1/2,(sin(-stream)*40)/jump_anim+360-jump_anim*kierunek,c_white,1)
if atakowanie<200 {draw_sprite_ext(global.gfx_troopa_arm,0,-20+x+18,-40+y+5+sin(stream)+25,kierunek/2+rzut_anim/80*kierunek,1/2+rzut_anim/80,sin(stream)*40+360+rzut_anim*kierunek,c_white,1)}
if atakowanie>100 {draw_sprite_ext(global.gfx_troopa_arm_hammer,0,-20+x+18,-40+y+5-15+sin(stream)+25,kierunek/2,1/2,sin(stream)*40+360+rzut_anim*kierunek,c_white,(atakowanie-100)/100)}



}

