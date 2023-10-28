// KULA ARMATNIA
if animacja=4{
stream+=0.1
kula_obrot+=10
kula_alphar+=0.01+kula_alphar/20

draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek*1.2,1.2,kula_obrot*-kierunek/2,c_white,kula_alphar/10)
draw_sprite_ext(s_boss_bowser_7,0,x,y,kierunek/1.2,1/1.3,-kula_obrot*-kierunek/2,c_white,kula_alphar/10)


draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(90*kierunek))*50,y+sin(stream)*10+cos(degtorad(90*kierunek))*50,kierunek,1,+sin(stream)*10+kula_obrot*-kierunek,c_white,1/kula_alphar)

draw_sprite_ext(s_boss_bowser_3,0,x+sin(degtorad(35*kierunek))*50,y+cos(degtorad(35*kierunek))*50+sin(stream)*5,kierunek,1,sin(stream)*5+kula_obrot*-kierunek,c_white,1/kula_alphar)
draw_sprite_ext(s_boss_bowser_1,0,x,y+sin(stream)*10,kierunek,1,0+kula_obrot*kierunek,c_white,1/kula_alphar)
draw_sprite_ext(s_boss_bowser_2,0,x+sin(degtorad(-20*kierunek))*60,y+cos(degtorad(-20*kierunek))*60+sin(stream)*5,kierunek,1,-sin(stream)*2+kula_obrot*-kierunek,c_white,1/kula_alphar)

draw_sprite_ext(s_boss_bowser_4,0,x+sin(degtorad(150*kierunek))*30,y+sin(stream)*10+cos(degtorad(180*kierunek))*30,kierunek,1,-sin(stream)*10+kula_obrot*-kierunek,c_white,1/kula_alphar)

draw_sprite_ext(s_boss_bowser_6,0,x+sin(degtorad(115*kierunek))*65,y+sin(stream)*10+cos(degtorad(115*kierunek))*65,kierunek,1,sin(stream)*4+kula_obrot*-kierunek,c_white,1/kula_alphar)
draw_sprite_ext(s_boss_bowser_5,0,x+sin(degtorad(130*kierunek))*65,y+sin(stream)*10+cos(degtorad(130*kierunek))*65,kierunek,1,-sin(stream)*4+kula_obrot*-kierunek,c_white,1/kula_alphar)


}


if global.pauza=0
    {
    y+=grawitacja
    grawitacja+=0.25
    if y>3000 {y=3000;grawitacja=0}
    
    timer+=1
    
    if timer=200 {SXMS_SFX_PlayExt(323,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    koncz+=1
    if koncz>700 {room_goto(room_END_GAME_ANIM_1)}
    }
    
    
    

