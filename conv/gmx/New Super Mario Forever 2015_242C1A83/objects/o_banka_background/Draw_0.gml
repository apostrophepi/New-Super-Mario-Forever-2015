if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {


draw_sprite_ext(sprite_index,0,x,y+sin(degtorad(stream/2))*20,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,sin(degtorad(stream/4))*30,c_white,1)


stream+=5+migaj
migaj=migaj/1.03
}

