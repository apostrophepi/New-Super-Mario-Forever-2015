if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if global.pauza=0{

koko=point_distance(xstart,ystart,obj_mario.x,obj_mario.y)
if koko>250 {x=-1000;oddalony_za_ekran=1}
if koko<250 {x=xstart;oddalony_za_ekran=0}

if x>obj_mario.x {kierunek=-1}
if x<obj_mario.x {kierunek=1}
        
    
// gfx
stream+=0.25



obj_mario.scrool_sterowalny_obiektami=((250-(koko))/200)*100
}}
