if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=0.5
stream2+=1
if stream>360 {stream-=360}
if stream>0 && stream<90 {kierunek=1}
if stream>=90 && stream<270 {kierunek=-1}
if stream>270 {kierunek=1}

draw_sprite_ext(s_shy_boo_2,stream,x+sin(degtorad(stream))*50,y+sin(degtorad(stream*4))*20,kierunek/1.4,1/1.4,0,c_white,sin(degtorad(stream2)))

}

