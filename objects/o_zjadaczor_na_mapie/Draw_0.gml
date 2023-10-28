// UMIESC DLA CALEGO SKRYPTU SPRAWDZANIE CZY ZNAJDUJE SIE NA EKRANIE
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.zjadacz_buziowy_1,0,x,y,0.2+powiekszator,0.2+powiekszator,sin(degtorad(stream))*20,c_white,1)
draw_sprite_ext(global.zjadacz_buziowy_2,0,x+sin(degtorad(0+sin(degtorad(stream))*20))*((18+powiekszator*80)+10*sin(degtorad(stream*2))/10),
y+cos(degtorad(0+sin(degtorad(stream))*20))*((18+powiekszator*80)+10*sin(degtorad(stream*2))/10),0.2+powiekszator,0.2+powiekszator+sin(degtorad(stream*2))/21,sin(degtorad(stream))*20,c_white,1)
draw_sprite_ext(global.zjadacz_buziowy_3_mask,0,x,y+3,1.03+powiekszator*5,1.03+powiekszator*5,0,c_white,0.1-powiekszator*5)

}



stream+=10


if global.pauza=0
    {
    if skacze_na_mario=0 {
    if sekwencja=0 && random(100)>99 {sekwencja=1;grawitacja=-4}
    if sekwencja=1 {y+=grawitacja; grawitacja+=0.25; if y>=ystart && grawitacja>0 {sekwencja=0;y=ystart}}
    
    
    if sekwencja_idzie=0 && random(100)>5
        {
        sekwencja_idzie=1; sekwencja_daleko=round(random(5))-round(random(5)); jak_daleko_poszedl+=sekwencja_daleko
        if jak_daleko_poszedl>10 {jak_daleko_poszedl-=5;sekwencja_daleko-=5}
        if jak_daleko_poszedl<-10 {jak_daleko_poszedl+=5;sekwencja_daleko+=5}
        }
    if sekwencja_idzie=1 && sekwencja_daleko>0 {sekwencja_daleko-=0.1;x+=0.1}
    if sekwencja_idzie=1 && sekwencja_daleko<0 {sekwencja_daleko+=0.1;x-=0.1}
    if sekwencja_idzie=1 && sekwencja_daleko=0 {sekwencja_idzie=0}}
    
    
    
    // skacze na mario

    
    
    
    }

