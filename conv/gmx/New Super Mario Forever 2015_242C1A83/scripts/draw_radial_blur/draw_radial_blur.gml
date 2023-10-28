var xx,yy,quality;
xx=(argument1-__view_get( e__VW.XView, 0 ))/__view_get( e__VW.WView, 0 )
yy=(argument2-__view_get( e__VW.YView, 0 ))/__view_get( e__VW.HView, 0 )

xx*=2;
yy*=2;
quality=ceil(argument0/argument3);
argument0/=quality;

for(i=argument0;i>=0;i-=1)
{
draw_surface_ext(b,-(i*(quality/2))*xx,-(i*(quality/2))*yy,(__view_get( e__VW.WView, 0 )+i*quality)/__view_get( e__VW.WView, 0 ),(__view_get( e__VW.HView, 0 )+i*quality)/__view_get( e__VW.HView, 0 ),0,c_white,1/(argument0/2))
}
