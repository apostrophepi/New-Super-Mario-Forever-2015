draw_sprite_ext(global.big_glow_sloneczny,0,x,y+przesowanko*global.ekran_size_act,2,2,zaczyna_sie,c_white,1)
draw_sprite_ext(global.big_glow_sloneczny,0,x,y+przesowanko*global.ekran_size_act,1,1,-zaczyna_sie,c_white,1)

zaczyna_sie+=1
if zaczyna_sie=400 && used_1=0
    {
    used_1=1
    przesowanko2=-15
    }
if przesowanko2<>0 {przesowanko+=przesowanko2;przesowanko2=przesowanko2/1.1}


x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2


merdacz_delay+=1
if merdacz_delay=100 {merdacz_kat=40;SXMS_SFX_PlayExt(31,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if merdacz_delay=130 {merdacz_kat=40;SXMS_SFX_PlayExt(31,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if merdacz_kat>0 {merdacz_kat=merdacz_kat/1.03}
merdacz+=1+merdacz_kat



k2+=1
if k2>300 && k1<0.3 {k1+=0.001}


draw_sprite_ext(s_mega_sparcle_1,0,x+adder1-220*global.ekran_size_act,y+przesowanko*global.ekran_size_act,wielkosc*global.ekran_size_act*3,wielkosc*global.ekran_size_act*3,sin(stream)*1+stream*22,c_white,k1)
draw_sprite_ext(s_mega_sparcle_1,0,x+adder1-220*global.ekran_size_act+44*global.ekran_size_act,y+przesowanko*global.ekran_size_act+44*global.ekran_size_act,wielkosc*global.ekran_size_act*2,wielkosc*global.ekran_size_act*2,sin(stream)*1+stream*5,c_white,k1/3)
draw_sprite_ext(s_mega_sparcle_1,0,x+adder1-220*global.ekran_size_act+104*global.ekran_size_act,y+przesowanko*global.ekran_size_act+24*global.ekran_size_act,wielkosc*global.ekran_size_act*2,wielkosc*global.ekran_size_act*2,sin(stream)*1+stream*10+41,c_white,k1/2)


draw_sprite_ext(global.title_tail,0,x+adder1+240*global.ekran_size_act,y+przesowanko*global.ekran_size_act,wielkosc*global.ekran_size_act+sin(stream)/100+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*global.ekran_size_act-sin(stream*2)/500-sin(degtorad(stream1))/20*(pompon1+1),sin(stream)*1+sin(degtorad(merdacz))*merdacz_kat,c_white,1)
draw_sprite_ext(global.title_screen_main1,0,x+adder1,y+przesowanko*global.ekran_size_act,wielkosc*global.ekran_size_act+sin(stream)/100+sin(degtorad(stream1))/20*(pompon1+1),wielkosc*global.ekran_size_act-sin(stream*2)/500-sin(degtorad(stream1))/20*(pompon1+1),sin(stream)*1,c_white,1)
draw_sprite_ext(global.title_screen_main2,0,x+170*global.ekran_size_act+adder2,y+50*global.ekran_size_act+przesowanko*global.ekran_size_act,wielkosc*global.ekran_size_act+sin(stream+2)/100+sin(degtorad(stream2))/20*(pompon2+1),wielkosc*global.ekran_size_act-sin(stream*2+2)/500-sin(degtorad(stream2))/20*(pompon2+1),sin(stream+2)*1,c_white,1)
stream+=0.01



stream1+=2+pompon1*5
if pompon1>0 {pompon1=pompon1/1.05}

stream2+=2+pompon2*5
if pompon2>0 {pompon2=pompon2/1.05}


if sampleroza=0 && adder1<200 {SXMS_SFX_PlayExt(411,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);sampleroza=1}
if sampleroza=1 && adder2<10 {SXMS_SFX_PlayExt(412,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku/1.2,-1,0,0);sampleroza=2}



timer+=1
if timer>20 {adder1=adder1/1.3}
if timer=50 {pompon1=10}
if timer>40 {adder2=adder2/1.3}
if timer=60 {pompon2=10}




