draw_set_color(c_black)
draw_set_alpha(life)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)

if global.pauza=0 {
if sekwencja=0
    {
life+=0.05
if life>=1 {sekwencja=1}


}

if sekwencja=1
    {
    life-=0.05
    if life<=0 {instance_destroy()}
    
    }

}

