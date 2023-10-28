if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=0.5
direction=point_direction(x,y,o_map_player_1.x,o_map_player_1.y)
if direction>360 {stream-=360}
if direction>0 && stream<90 {kierunek=1}
if direction>=90 && stream<270 {kierunek=-1}
if direction>270 {kierunek=1}


draw_sprite_ext(s_shy_boo_2,stream,x+sin(degtorad(stream))*10,y+sin(degtorad(stream*4))*20,1/1.2,kierunek*1/1.2,direction,c_white,1)

}

