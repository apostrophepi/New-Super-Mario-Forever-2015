if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_arrow_show,0,x,y+sin(degtorad(stream))*30,1+sin(degtorad(stream))/10,-1-sin(degtorad(stream))/10,0,c_white,timer)
draw_sprite_ext(s_arrow_head,0,x,y+sin(degtorad(stream))*30,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,0,c_white,timer+0.2)
stream+=5

if sekwencja=0 {timer+=0.05; if timer>=1 {sekwencja=1}}
if sekwencja>=1 && sekwencja<=30 {sekwencja+=1}
if sekwencja=31 {timer-=0.05; if timer<=0 {timer=0;sekwencja=32}}
if sekwencja>=32 && sekwencja<=50 {sekwencja+=1}
if sekwencja=51 {sekwencja=0} 

}
/*

stream=0
timer=0
sekwencja=0

/* */
/*  */
