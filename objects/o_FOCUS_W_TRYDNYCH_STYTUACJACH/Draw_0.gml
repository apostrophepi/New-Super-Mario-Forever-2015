if global.pauza=0{

koko=point_distance(xstart,ystart,obj_mario.x,obj_mario.y)
if koko>1250 {x=-1000;oddalony_za_ekran=1}
if koko<1250 {x=xstart;oddalony_za_ekran=0}

if x>obj_mario.x {kierunek=-1}
if x<obj_mario.x {kierunek=1}
        
    
// gfx
stream+=0.25

}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2.5 {
if koko<1250 {
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1.5+alphar/4,1.5+alphar/4,0,c_white,(1250-(koko))/1200)
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 ),-1.5-alphar/4,1.5+alphar/4,0,c_white,(1250-(koko))/1200)
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),1.5+alphar/4,-1.5-alphar/4,0,c_white,(1250-(koko))/1200)
draw_sprite_ext(s_map_boczek,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),-1.5-alphar/4,-1.5-alphar/4,0,c_white,(1250-(koko))/1200)}}

