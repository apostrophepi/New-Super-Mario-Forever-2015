if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {

draw_sprite_ext(global.armata_3,0,x,y,0.75+sin(degtorad(stream))/20*(pompon+1),0.75-sin(degtorad(stream))/20*(pompon+1),0,c_white,1)



}

if global.pauza=0
    {
    stream+=2+pompon*5
    if pompon>0 {pompon=pompon/1.05}
    
    
    }

