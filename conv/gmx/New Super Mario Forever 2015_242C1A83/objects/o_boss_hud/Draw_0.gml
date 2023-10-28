draw_sprite_ext(s_boom_boom_9,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/6-kolos,1+energy/10,1,0,c_white,1)
for (i=0;i<energy;i+=1)
    {
    draw_sprite_ext(s_boom_boom_10,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+i*40-energy*40/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/6-kolos,1,1,0,c_white,1/podzielnik)
    }


kolos=kolos/1.1
if energy<=0 && podzielnik<1000 {podzielnik+=1+podzielnik/100}

