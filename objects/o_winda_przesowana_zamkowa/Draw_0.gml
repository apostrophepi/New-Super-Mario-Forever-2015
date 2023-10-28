if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
{


draw_sprite_ext(s_windon_block_ruchany,0,x+20,y+20,1+sin(chmurkuj)/10,1-sin(chmurkuj)/10,sin(degtorad(stream))*10,c_white,1)



}
stream+=2


kefciorrr.x=x+20
kefciorrr.y=y+20

kefciorrr2.x=x+20
kefciorrr2.y=y+20

