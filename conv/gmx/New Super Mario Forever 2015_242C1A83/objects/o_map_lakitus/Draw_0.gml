if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=1


x=xstart+sin(degtorad(stream))*40
if stream>0 && stream<90 {kierunek=1}
if stream>90 && stream<270 {kierunek=-1}
if stream>270 {kierunek=1}
if stream>360 {stream=0}




draw_sprite_ext(global.gfx_lakitus_1,0,x,y+sin(degtorad(stream*2))*10,0.6*kierunek+sin(degtorad(stream*5))/20*kierunek,0.6-sin(degtorad(stream*5))/20,0,c_white,1)
draw_sprite_ext(global.gfx_lakitus_2,0,x,y-20+sin(degtorad(stream*2))*10,0.6*kierunek,0.6,0,c_white,1)


draw_sprite_ext(s_map_cloud_2,0,x,100+y+sin(degtorad(stream*2))*10,0.5*kierunek+sin(degtorad(stream*5))/20*kierunek,0.6-sin(degtorad(stream*5))/20,0,c_white,0.4)

}


