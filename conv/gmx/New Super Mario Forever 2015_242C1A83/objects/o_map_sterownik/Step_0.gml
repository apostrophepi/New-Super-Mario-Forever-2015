if global.map_number=8 {

// obliczanie srodka ekranu

global.odleglosc_ekranu=sqrt((__view_get( e__VW.WView, 0 )/2)*(__view_get( e__VW.WView, 0 )/2)+(__view_get( e__VW.HView, 0 )/2)*(__view_get( e__VW.HView, 0 )/2))
global.ekran_srodek_x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
global.ekran_srodek_y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2



//view_angle[0]=360+sin(koko)*5;
koko+=0.05

__background_set( e__BG.Y, 0, __background_get( e__BG.Y, 0 ) + (sin(koko/2)/10) )
__background_set( e__BG.Y, 1, __background_get( e__BG.Y, 1 ) + (sin(koko/2+1.5)/10) )
__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) + (cos(koko/2)/20) )
__background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (cos(koko/2+1.5)/20) )


__background_set( e__BG.HSpeed, 0, 0 )
//background_vspeed[0]=-0.1

__background_set( e__BG.HSpeed, 1, 0 )
__background_set( e__BG.VSpeed, 1, 0.25 )//-1/2
__background_set( e__BG.VSpeed, 0, 0.25 )

__background_set( e__BG.Alpha, 1, sin(koko/2)/10+0.55 )
__background_set( e__BG.Alpha, 0, cos(koko/2)/10+0.85 )


}


if global.map_number<>8 {

// obliczanie srodka ekranu

global.odleglosc_ekranu=sqrt((__view_get( e__VW.WView, 0 )/2)*(__view_get( e__VW.WView, 0 )/2)+(__view_get( e__VW.HView, 0 )/2)*(__view_get( e__VW.HView, 0 )/2))
global.ekran_srodek_x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
global.ekran_srodek_y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2



//view_angle[0]=360+sin(koko)*5;
koko+=0.01

__background_set( e__BG.Y, 0, __background_get( e__BG.Y, 0 ) + (sin(koko)/3) )
__background_set( e__BG.Y, 1, __background_get( e__BG.Y, 1 ) + (sin(koko+1.5)/3) )
__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) + (cos(koko)/4) )
__background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (cos(koko+1.5)/4) )


__background_set( e__BG.HSpeed, 0, 0 )
//background_vspeed[0]=-0.1

__background_set( e__BG.HSpeed, 1, 0 )
__background_set( e__BG.VSpeed, 1, -1/2 )

__background_set( e__BG.Alpha, 1, 0.5+sin(koko)/20 )
__background_set( e__BG.Alpha, 0, 1+sin(koko+2)/20 )

}





/*
view_wview[0]=800+sin(koko)*40
view_hview[0]=600+sin(koko)*40


/* */
/*  */
