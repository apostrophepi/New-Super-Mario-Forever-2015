xscrooling_ixor-=10

for(i=0;i<5;i+=1) {
if xscrooling_ixor<-200 {xscrooling_ixor+=200};draw_sprite_ext(s_back_clouds,0,__view_get( e__VW.XView, 0 )+i*200+xscrooling_ixor,__view_get( e__VW.YView, 0 )+360,1,1,0,c_white,1)}


