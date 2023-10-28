if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
if global.pauza=0
    {
        
    anim_5=random(1000)
    anim_8=(obj_mario.x-x)/10*image_xscale
    anim_9=(obj_mario.y-y)/10*image_xscale
    if anim_5>990 && anim_6<=0 {anim_6=12;anim_7=0}
    if anim_6>0 {anim_6-=0.25;anim_7+=10}
    
    
    anim_4+=0.5
    if anim<1000
        {
        anim=random(1000)
        if anim>990 {anim=2000}
        }
    if anim=2000
        {
        if anim_2=0 && anim_3>0 {anim_3-=0.1}
        if anim_2=0 && anim_3<=0 {anim_2=1}
        if anim_2=1 && anim_3<1 {anim_3+=0.1}
        if anim_2=1 && anim_3>=1 {anim_2=0;anim=0}
        }
    }

   
draw_sprite_ext(global.gfx_kolco_kuler_1,0,x,y,image_xscale/1.3,image_yscale/1.3,image_angle+sin(degtorad(anim_4))*5+sin(degtorad(anim_7))*anim_6,c_white,1)
    
draw_sprite_ext(global.gfx_kolco_kuler_2,0,x+sin(degtorad(image_angle+90))*20*image_xscale+anim_8,y+cos(degtorad(image_angle+90+anim_8))*20*image_xscale+anim_9,image_xscale/1.3,(image_yscale/1.3)*anim_3,image_angle+sin(degtorad(anim_4))*5,c_white,anim_3)
draw_sprite_ext(global.gfx_kolco_kuler_2,0,x-sin(degtorad(image_angle+90))*20*image_xscale+anim_8,y-cos(degtorad(image_angle+90+anim_8))*20*image_xscale+anim_9,image_xscale/1.3,(image_yscale/1.3)*anim_3,image_angle+sin(degtorad(anim_4))*5,c_white,anim_3)
        
//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5)
        }

