if global.pauza=0{

x=xstart+sin(degtorad(stream))*zasieg
koko=point_distance(xstart+sin(degtorad(stream))*zasieg,ystart,obj_mario.x,obj_mario.y)
if koko>250 {y=-1000;oddalony_za_ekran=1}
if koko<250 {y=ystart;oddalony_za_ekran=0}

        
    if stream<90 || stream>270 {kierunek=1}
    if stream>=90 && stream<=270 {kierunek=-1}
    
    
// gfx
stream+=szybkosc_ruchu
if stream>360 {stream=stream-360}

}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1 {

draw_sprite_ext(s_boo_glow,0,x+18,y+18+sin(degtorad(stream*10))*5,1,1,0,c_white,(250-(koko))/200)
draw_sprite_ext(s_shy_boo_2,stream,x+18,y+18+sin(degtorad(stream*10))*5,kierunek,1,0,c_white,(250-(koko))/200)


}

