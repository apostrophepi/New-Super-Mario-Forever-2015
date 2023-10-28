if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_arrow_show,0,x,y+sin(degtorad(stream))*30,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,0,c_white,timer)
draw_sprite_ext(s_arrow_head,0,x,y+sin(degtorad(stream))*30,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,0,c_white,timer)
stream+=5
zniszcz=1
if sekwencja=0 {timer+=0.05; if timer>=1 {sekwencja=1}}
if sekwencja>=1 && sekwencja<=130 {sekwencja+=1}
if sekwencja=131 {timer-=0.05; if timer<=0 {timer=0;sekwencja=132}}
if sekwencja>=132 && sekwencja<=150 {sekwencja+=1}
if sekwencja=151 {sekwencja=0} 

}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*2 && zniszcz=1 {
instance_destroy()
}


/*

stream=0
timer=0
sekwencja=0

/* */
/*  */
