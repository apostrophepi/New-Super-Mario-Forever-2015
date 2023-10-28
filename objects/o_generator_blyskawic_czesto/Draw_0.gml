if global.pauza=0
    {
    timer+=1
    if timer>100 {timer=-random(300);blanker=20
    instance_create(x,y,o_blyskawica_do_generatora)}
    
    if blanker>0 {blanker-=1}
    if blanker=15 {blank=1}
    
    
    }
    
    
    if blank>0
        {
        draw_set_color(c_white)
        draw_set_alpha(blank)
        draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
        draw_set_alpha(1)
        blank=blank/1.3
        
        }

