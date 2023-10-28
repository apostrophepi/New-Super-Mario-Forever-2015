if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1 {
if sekwencja=0
    {
    if obrot<1 {obrot+=0.1}
    x-=szybkosc/dzielnik
    stream+=0.5
    timer+=1
    if timer>=500 {timer=0;sekwencja=1}
    if timer>=400 {dzielnik+=1}
    if timer<=400 && dzielnik>1 {dzielnik-=1}
    }
    
if sekwencja=1
    {
    if obrot>-1 {obrot-=0.1}
    x+=szybkosc/dzielnik
    stream+=0.5
    timer+=1
    if timer>=500 {timer=0;sekwencja=0}
    if timer>=400 {dzielnik+=1}
    if timer<=400 && dzielnik>1 {dzielnik-=1}
    }
        
    draw_sprite_ext(global.small_fishashy,0,x+sin(degtorad(stream))*10,y,obrot/zmniejszy_rybke,1/zmniejszy_rybke,sin(degtorad(stream*20))*10,kolorek,1)}

