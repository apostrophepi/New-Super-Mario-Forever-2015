// UMIESC DLA CALEGO SKRYPTU SPRAWDZANIE CZY ZNAJDUJE SIE NA EKRANIE
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(global.zjadacz_buziowy_1,0,x,y,0.2+powiekszator,0.2+powiekszator,sin(degtorad(stream))*20,c_white,1)
draw_sprite_ext(global.zjadacz_buziowy_2,0,x+sin(degtorad(0+sin(degtorad(stream))*20))*((18+powiekszator*80)+10*sin(degtorad(stream*2))/10),
y+cos(degtorad(0+sin(degtorad(stream))*20))*((18+powiekszator*80)+10*sin(degtorad(stream*2))/10),0.2+powiekszator,0.2+powiekszator+sin(degtorad(stream*2))/21,sin(degtorad(stream))*20,c_white,1)
draw_sprite_ext(global.zjadacz_buziowy_3_mask,0,x,y+3,1.03+powiekszator*5,1.03+powiekszator*5,0,c_white,0.8-powiekszator*5)

}




stream+=10


if global.pauza=0
    {
    if skacze_na_mario=0 {
    if sekwencja=0 && random(100)>99 {sekwencja=1;grawitacja=-4}
    if sekwencja=1 {y+=grawitacja; grawitacja+=0.25; if y>=ystart && grawitacja>0 {sekwencja=0;y=ystart}}
    
    
    if sekwencja_idzie=0 && random(100)>5
        {
        sekwencja_idzie=1; sekwencja_daleko=round(random(50))-round(random(50)); jak_daleko_poszedl+=sekwencja_daleko
        if jak_daleko_poszedl>100 {jak_daleko_poszedl-=50;sekwencja_daleko-=50}
        if jak_daleko_poszedl<-100 {jak_daleko_poszedl+=50;sekwencja_daleko+=50}
        }
    if sekwencja_idzie=1 && sekwencja_daleko>0 {sekwencja_daleko-=1;x+=1}
    if sekwencja_idzie=1 && sekwencja_daleko<0 {sekwencja_daleko+=1;x-=1}
    if sekwencja_idzie=1 && sekwencja_daleko=0 {sekwencja_idzie=0}}
    
    
    
    // skacze na mario
    if obj_mario.x>x-100 && obj_mario.x<x+100 && skacze_na_mario=0 && wyskok_sekwencja=0 {SXMS_SFX_PlayExt(405,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);skacze_na_mario=1;wyskok=-10;wyskok_sekwencja=1}
    if wyskok_sekwencja=1 {x+=2;y+=wyskok;wyskok+=0.1;if wyskok>=-5 {wyskok=-5}; powiekszator+=0.01
    if y<=__view_get( e__VW.YView, 0 )-300 {SXMS_SFX_PlayExt(406,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);instance_destroy();instance_create(x+150,y,o_WIELKI_ZJADACZOR_LECI)}
    
    
    }
    
    
    
    }

