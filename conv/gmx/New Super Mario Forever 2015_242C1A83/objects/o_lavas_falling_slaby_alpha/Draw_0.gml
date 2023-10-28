if x>__view_get( e__VW.XView, 0 )-80*global.ekran_size_act && x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+80*global.ekran_size_act {

for(i=0;i<ceil(room_height/151)+1;i+=1)
    {
    draw_sprite_ext(global.lava_falling,0,x,151*i-151+stream,1,1,0,c_white,1/2)
    
    }    
    stream+=151/50
    if stream>151 {stream-=151}
    
    }

