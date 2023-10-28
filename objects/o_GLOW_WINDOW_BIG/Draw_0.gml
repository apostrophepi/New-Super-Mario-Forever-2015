if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
draw_sprite_ext(s_boo_glow,0,x,y,3,3,0,c_white,sin(stream))}
stream+=0.2


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu
    {
    timer+=1
    if timer>czestotliwosc
        {
        timer=0
        lolo=instance_create(x+random(10)-random(10)-60,y+random(60)-random(60),o_chmurken_efekt_small)
        lolo.szybkosc=0.1+random(2)
        }
    
    
    }

