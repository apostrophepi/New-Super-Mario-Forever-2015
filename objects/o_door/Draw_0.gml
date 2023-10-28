if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {


draw_sprite_ext(global.castle_door_2,0,x,y,1,1,0,c_white,1)
draw_sprite_ext(global.castle_door_1,0,x-40,y-120,1-otwarcie-otwierane,1,otwarcie*5,c_white,1)
draw_sprite_ext(global.castle_door_1,0,x+40,y-120,-1+otwarcie+otwierane,1,-otwarcie*5,c_white,1)

if aktywowane=0 {
if place_meeting(x,y,obj_mario)
    {
    if otwarcie<0.2 {otwarcie+=0.01}
    }
if !place_meeting(x,y,obj_mario)
    {
    if otwarcie>0 {otwarcie-=0.01}
    }}
if aktywowane=1
    {
    aktywowane=2
    otwarcie=0
    }
if aktywowane=2
    {
    if otwierane<2 && door<100 {otwierane+=0.05}
    door+=1
    if door>=100 {otwierane=otwierane/1.3;otwarcie=otwarcie/1.3}
    if door=100 {SXMS_SFX_PlayExt(201,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    }
    
    
}

