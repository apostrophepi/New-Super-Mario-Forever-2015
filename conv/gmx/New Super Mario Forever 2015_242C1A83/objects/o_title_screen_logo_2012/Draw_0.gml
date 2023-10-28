zaczyna_sie+=1
if zaczyna_sie>=400
    {
    if wielkosc>0.5 {wielkosc-=0.01}
    
    }
if zaczyna_sie>=400 && koktail<100 {koktail+=0.1+koktail/10}
if zaczyna_sie>=400 && y>-1000 {kaczypcio-=koktail}

if zaczyna_sie>220 {

x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-150+kaczypcio

lustro.x=x
lustro.y=y+200*global.ekran_size_act*wielkosc
lustro.wielkosc=wielkosc

// ADDER

draw_set_blend_mode(bm_add)
draw_sprite_ext(global.title_screen_blank2,0,x-wielkosc*50*global.ekran_size_act+adderer2,y-50*global.ekran_size_act-(abs(sin(degtorad(stream2/3+stream_2_adder))/20*(pompon2+1))*1120)/dzielnior2,
wielkosc*1.2*global.ekran_size_act+sin(degtorad(stream2/2))/20,wielkosc*1.2*global.ekran_size_act+sin(degtorad(stream2/2))/20,sin(degtorad(stream2))*3,c_white,0.25/glowwing_podzielnik_adder) 
draw_set_blend_mode(bm_normal)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.title_screen_blank1,0,x+wielkosc*180*global.ekran_size_act+adderer4,y,
wielkosc*1.3*global.ekran_size_act+sin(degtorad(stream4/2+180))/20,wielkosc*1.3*global.ekran_size_act+sin(degtorad(stream4/2+180))/20,33+sin(degtorad(stream4))*2,c_white,0.25/glowwing_podzielnik_adder)
draw_set_blend_mode(bm_normal)
//ADDER
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.title_screen_blank1,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1,y,
wielkosc*1.2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20,wielkosc*1.2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20,sin(degtorad(stream1+90))*8,c_white,0.25/glowwing_podzielnik_adder)
draw_set_blend_mode(bm_normal)

draw_set_blend_mode(bm_add)
draw_sprite_ext(global.title_screen_blank3,0,x+wielkosc*50*global.ekran_size_act+adderer3,y,
wielkosc*1.2*global.ekran_size_act+sin(degtorad(stream3/2))/20,wielkosc*1.2*global.ekran_size_act+sin(degtorad(stream3/2))/20,sin(degtorad(stream3+180))*5,c_white,0.25/glowwing_podzielnik_adder) // 3
draw_set_blend_mode(bm_normal)

// NAPIS
draw_sprite_ext(global.title_screen_blank2,0,x-wielkosc*50*global.ekran_size_act+adderer2,y-50*global.ekran_size_act-(abs(sin(degtorad(stream2/3+stream_2_adder))/20*(pompon2+1))*1120)/dzielnior2,
wielkosc*(1*global.ekran_size_act+sin(degtorad(stream2/2))/20)+sin(degtorad(stream2))/20*(pompon2+1),wielkosc*(1*global.ekran_size_act-sin(degtorad(stream2/2))/20)-sin(degtorad(stream2))/20*(pompon2+1),sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10,c_white,1) // 2






draw_sprite_ext(global.title_screen_blank1,0,x+wielkosc*180*global.ekran_size_act+adderer4,y,
wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),33+sin(degtorad(stream4))*2,c_white,1) // 4





draw_sprite_ext(global.title_screen_blank3,0,x+wielkosc*50*global.ekran_size_act+adderer3,y,
wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)+sin(degtorad(stream3/2+180))/20,wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)-sin(degtorad(stream3/2+180))/20,sin(degtorad(stream3+180))*5,c_white,1) // 3







// NAPIS
draw_sprite_ext(global.title_screen_blank1,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1,y,
wielkosc*1*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(1*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8,c_white,1) //1







stream_2_adder+=10

stream1+=2+pompon1*5
stream2+=2+pompon2*5
stream3+=2+pompon3*5
stream4+=2+pompon4*5

timer+=1
if timer>10 {timer=0;sekwencja+=1}
if sekwencja>=1 && adderer1>0 {adderer1=adderer1/1.3}
if sekwencja>=2 && adderer2>0 {adderer2=adderer2/1.3}
if sekwencja>=3 && adderer3>0 {adderer3=adderer3/1.3}
if sekwencja>=4 && adderer4>0 {adderer4=adderer4/1.3}


if adderer1<=1 && zgniatacz1_tick=1 {zgniatacz1_tick=0;pompon1=10}
if pompon1>0 {pompon1=pompon1/1.05}

if adderer2<=1 && zgniatacz2_tick=1 {zgniatacz2_tick=0;pompon2=10}
if pompon2>0 {pompon2=pompon2/1.05}

if adderer3<=1 && zgniatacz3_tick=1 {zgniatacz3_tick=0;pompon3=10}
if pompon3>0 {pompon3=pompon3/1.05}



if pompon1<=0.7 && zgniatacz1_tick=0 {dzielnior1+=0.1}
if pompon2<=0.7 && zgniatacz2_tick=0 {dzielnior2+=0.1}}


if zaczyna_sie>220 {

draw_set_blend_mode(bm_add)


draw_sprite_ext(global.title_glowwing,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1,y,
wielkosc*1*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(1*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8,c_white,1/glowwing_podzielnik) //1

draw_sprite_ext(global.title_glowwing,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1+sin(degtorad(sin(degtorad(stream1+90))*8))*100,y+cos(degtorad(sin(degtorad(stream1+90))*8))*100,
wielkosc*2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8,c_white,0.5/glowwing_podzielnik) //1

draw_sprite_ext(global.title_glowwing_sparcle,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1+sin(degtorad(sin(degtorad(stream1+90))*8))*100,y+cos(degtorad(sin(degtorad(stream1+90))*8))*100,
wielkosc*2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8+stream1,c_white,0.5/glowwing_podzielnik) //1

draw_sprite_ext(global.title_glowwing_sparcle,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1+sin(180+degtorad(sin(degtorad(stream1+90))*8))*60,y+cos(180+degtorad(sin(degtorad(stream1+90))*8))*60,
wielkosc*1*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(1*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8+stream1,c_white,0.25/glowwing_podzielnik) //1


draw_sprite_ext(global.title_glowwing,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1+sin(180+degtorad(sin(degtorad(stream1+90))*8))*60,y+cos(180+degtorad(sin(degtorad(stream1+90))*8))*60,
wielkosc*2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8+stream1,c_white,0.5/glowwing_podzielnik) //1

draw_sprite_ext(global.title_glowwing,0,x-wielkosc*180*global.ekran_size_act+adderer1-(abs(sin(degtorad(stream1/3))/20*(pompon1+1))*520)/dzielnior1+sin(180+degtorad(sin(degtorad(stream1+90))*8))*60,y+cos(180+degtorad(sin(degtorad(stream1+90))*8))*60,
wielkosc*2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*(2*global.ekran_size_act+sin(degtorad(stream1/2+180))/20)-sin(degtorad(stream1))/20*(pompon1+1),sin(degtorad(stream1+90))*8+stream1,c_yellow,sin(degtorad(stream1))/2/glowwing_podzielnik) //1



//


draw_sprite_ext(global.title_glowwing,0,x-wielkosc*50*global.ekran_size_act+adderer2+sin(25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100,cos(25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100+y-50*global.ekran_size_act-(abs(sin(degtorad(stream2/3+stream_2_adder))/20*(pompon2+1))*1120)/dzielnior2,
wielkosc*(2*global.ekran_size_act+sin(degtorad(stream2/2))/20)+sin(degtorad(stream2))/20*(pompon2+1),wielkosc*(2*global.ekran_size_act-sin(degtorad(stream2/2))/20)-sin(degtorad(stream2))/20*(pompon2+1),sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10,c_white,0.5/glowwing_podzielnik) // 2

draw_sprite_ext(global.title_glowwing_sparcle,0,x-wielkosc*50*global.ekran_size_act+adderer2+sin(25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100,cos(25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100+y-50*global.ekran_size_act-(abs(sin(degtorad(stream2/3+stream_2_adder))/20*(pompon2+1))*1120)/dzielnior2,
wielkosc*(2*global.ekran_size_act+sin(degtorad(stream2/2))/20)+sin(degtorad(stream2))/20*(pompon2+1),wielkosc*(2*global.ekran_size_act-sin(degtorad(stream2/2))/20)-sin(degtorad(stream2))/20*(pompon2+1),sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10+stream1/10,c_white,1/glowwing_podzielnik) // 2


draw_sprite_ext(global.title_glowwing_sparcle,0,x-wielkosc*50*global.ekran_size_act+adderer2+sin(180+25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100,cos(180+25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100+y-50*global.ekran_size_act-(abs(sin(degtorad(stream2/3+stream_2_adder))/20*(pompon2+1))*1120)/dzielnior2,
wielkosc*(2*global.ekran_size_act+sin(degtorad(stream2/2))/20)+sin(degtorad(stream2))/20*(pompon2+1),wielkosc*(2*global.ekran_size_act-sin(degtorad(stream2/2))/20)-sin(degtorad(stream2))/20*(pompon2+1),sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10+stream1/10,c_white,0.2/glowwing_podzielnik) // 2
draw_sprite_ext(global.title_glowwing_sparcle,0,x-wielkosc*50*global.ekran_size_act+adderer2+sin(180+25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100,cos(180+25+degtorad(sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10))*100+y-50*global.ekran_size_act-(abs(sin(degtorad(stream2/3+stream_2_adder))/20*(pompon2+1))*1120)/dzielnior2,
wielkosc*(2*global.ekran_size_act+sin(degtorad(stream2/2))/20)+sin(degtorad(stream2))/20*(pompon2+1),wielkosc*(2*global.ekran_size_act-sin(degtorad(stream2/2))/20)-sin(degtorad(stream2))/20*(pompon2+1),sin(degtorad(stream2))*3+sin(degtorad(stream2))/20*(pompon2/2+1)*10+stream1/10+123,c_white,0.55/glowwing_podzielnik) // 2


//

draw_sprite_ext(global.title_glowwing_sparcle,0,x+wielkosc*50*global.ekran_size_act+adderer3+sin(degtorad(sin(degtorad(stream3+180))*5))*100,y+cos(degtorad(sin(degtorad(stream3+180))*5))*100,
wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)+sin(degtorad(stream3/2+180))/20,wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)-sin(degtorad(stream3/2+180))/20,sin(degtorad(stream3+180))*5+stream3/2,c_white,1/glowwing_podzielnik) // 3

draw_sprite_ext(global.title_glowwing_sparcle,0,x+wielkosc*50*global.ekran_size_act+adderer3+sin(degtorad(180+sin(degtorad(stream3+180))*5))*140,y+cos(180+degtorad(sin(degtorad(stream3+180))*5))*140,
wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)+sin(degtorad(stream3/2+180))/20,wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)-sin(degtorad(stream3/2+180))/20,sin(degtorad(stream3+180))*5+stream3/2,c_white,1/glowwing_podzielnik) // 3

draw_sprite_ext(global.title_glowwing,0,x+wielkosc*50*global.ekran_size_act+adderer3+sin(degtorad(180+sin(degtorad(stream3+180))*5))*140,y+cos(180+degtorad(sin(degtorad(stream3+180))*5))*140,
wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)+sin(degtorad(stream3/2+180))/20,wielkosc*(1*global.ekran_size_act+sin(degtorad(stream3/2))/20)-sin(degtorad(stream3/2+180))/20,sin(degtorad(stream3+180))*5+stream3/2,c_white,1/glowwing_podzielnik) // 3


draw_sprite_ext(global.title_glowwing_sparcle,0,x+wielkosc*50*global.ekran_size_act+adderer3+sin(degtorad(180+sin(degtorad(stream3+180))*5))*140,y+cos(180+degtorad(sin(degtorad(stream3+180))*5))*140,
wielkosc*(10*global.ekran_size_act+sin(degtorad(stream3/2))/20)+sin(degtorad(stream3/2+180))/20,wielkosc*(10*global.ekran_size_act+sin(degtorad(stream3/2))/20)-sin(degtorad(stream3/2+180))/20,sin(degtorad(stream3+180))*5+stream3/2,c_white,0.25/glowwing_podzielnik) // 3



//


draw_sprite_ext(global.title_glowwing_sparcle,0,x+wielkosc*180*global.ekran_size_act+adderer4+sin(degtorad(145+sin(degtorad(stream4))*2))*100,y+cos(degtorad(145+sin(degtorad(stream4))*2))*100,
wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),33+sin(degtorad(stream4))*2,c_white,1/glowwing_podzielnik) // 4
draw_sprite_ext(global.title_glowwing,0,x+wielkosc*180*global.ekran_size_act+adderer4+sin(degtorad(145+sin(degtorad(stream4))*2))*100,y+cos(degtorad(145+sin(degtorad(stream4))*2))*100,
wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),33+sin(degtorad(stream4))*2,c_white,1/glowwing_podzielnik) // 4

draw_sprite_ext(global.title_glowwing,0,x+wielkosc*180*global.ekran_size_act+adderer4+sin(degtorad(45+sin(degtorad(stream4))*2))*75,y+cos(degtorad(45+sin(degtorad(stream4))*2))*75,
wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),wielkosc*(1.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),33+sin(degtorad(stream4))*2,c_white,1/glowwing_podzielnik) // 4
draw_sprite_ext(global.title_glowwing,0,x+wielkosc*180*global.ekran_size_act+adderer4+sin(degtorad(45+sin(degtorad(stream4))*2))*75,y+cos(degtorad(45+sin(degtorad(stream4))*2))*75,
wielkosc*(3.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),wielkosc*(3.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),33+sin(degtorad(stream4))*2,c_white,0.25/glowwing_podzielnik) // 4
draw_sprite_ext(global.title_glowwing_sparcle,0,x+wielkosc*180*global.ekran_size_act+adderer4+sin(degtorad(45+sin(degtorad(stream4))*2))*75,y+cos(degtorad(45+sin(degtorad(stream4))*2))*75,
wielkosc*(3.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),wielkosc*(3.1*global.ekran_size_act+sin(degtorad(stream4/2+180))/20),33+sin(degtorad(stream4))*2,c_white,0.25/glowwing_podzielnik) // 4






draw_set_blend_mode(bm_normal)



glowwing_timer+=1
if glowwing_timer>=50 {glowwing_alpha+=0.01}}

/*
glowwing_timer=0
glowwing_alpha=0



global.title_glowwing_sparcle

/* */
/*  */
