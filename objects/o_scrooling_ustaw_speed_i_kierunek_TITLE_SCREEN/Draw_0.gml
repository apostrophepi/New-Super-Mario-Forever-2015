delay+=1

obj_mario_anim.animacja=6
if delay=300 {speed=0.5}

if delay>=200 && delay<=300
    {
    if global.ekran_size_act<1.2 {global.ekran_size_act+=0.0025}
    }
if delay>3 {

//draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1)
aktywuj_poziomy_scrolling=1000
        obj_mario_anim.size2=1
    obj_mario.kierunek=1

// zniewidzialniuj pustynie
zniewidzialniuj_pustynie+=1
    if zniewidzialniuj_pustynie=2
        {

        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            with(iii)
                {
                if object_index=o_desert_paralax_1 {visible=0} 
                if object_index=o_desert_paralax_2 {visible=0} 
                if object_index=o_desert_paralax_3 {visible=0}
                if object_index=o_desert_paralax_3_old_script {visible=0}
                if object_index=o_desert_paralax_4_old_script {visible=0}
                }

            }
            }
            
            
            
// NISZCZ HUD
if niszcz_HUD=0  {if instance_exists(o_HUD_tworzony_przez_gracza) {niszcz_HUD=1; with(o_HUD_tworzony_przez_gracza) {instance_destroy()}}}        
// START
if sekwencja=0
    {
    y-=0.75
    timer+=1
    if timer>0 && global.ekran_size_act<1.2 {global.ekran_size_act+=0.025}
    if timer>200 && przyciemniaj=0 {przyciemniaj=1}
    }
if przyciemniaj>=1 && przyciemniaj<2 && trans=0
    {
    trans=0
    przyciemniaj+=0.05
    draw_set_color(c_black)
    draw_set_alpha(-1+przyciemniaj)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )+__view_get( e__VW.YView, 0 ),0)
    draw_set_alpha(1)
    if przyciemniaj=2 {sekwencja+=1;trans=1;przyciemniaj=0}
    }
if trans>0
    {
    przyciemniaj=0
    trans=trans/1.03
    if trans<=0.01 {trans=0}
    draw_set_color(c_black)
    draw_set_alpha(trans)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )+__view_get( e__VW.YView, 0 ),0)
    draw_set_alpha(1)
    }
    
if sekwencja=23
    {
    obj_mario.x=250
    obj_mario.y=800
    sekwencja=24
    timer=0
    global.background_kind=75
    x=360
    y=6680
    speed=1
    doluj_y=60
    }
if sekwencja=24
    {
    timer+=1
    if global.ekran_size_act<1.3 {global.ekran_size_act+=0.0001}
    if doluj_y>0 {doluj_y-=0.5;y+=1}
    if timer>=200 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    }
if sekwencja=25
    {
    sekwencja=26
    timer=0
    doluj_y=50
    x+=800
    }
if sekwencja=26
    {
    timer+=1
    if timer>=200 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    if doluj_y>0 {doluj_y-=1;y-=1}
    }
if sekwencja=27
    {
    sekwencja=28
    timer=0
    speed=1.5
    x+=800
    }
if sekwencja=28
    {
    timer+=1
    if timer>=200 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    }
if sekwencja=29
    {
    x+=1000
    timer=0
    sekwencja=30
    }
if sekwencja=30
    {
    timer+=1
    if timer>=200 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    sekwencja=0
    global.background_kind=30
    x=xstart
    y=ystart
    speed=1
    }
    
    
    // SECOUND SEQUENCE
if sekwencja=1
    {
    global.background_kind=0
    sekwencja=2;timer=0
    x+=1300
    speed=1
    global.ekran_size_act=0.5
    zabieraj_odleglosc=0.5
    przyciemniaj=0
    }
if sekwencja=2
    {
    y+=0.25
    global.ekran_size_act=1.3-zabieraj_odleglosc
    zabieraj_odleglosc=zabieraj_odleglosc/1.03
    timer+=1
    if timer>300 && przyciemniaj=0 {przyciemniaj=1}
    }
    // THIRD SEQUENCE
if sekwencja=3
    {
    global.background_kind=30
    sekwencja=4
    x+=800
    timer=0   
    }
if sekwencja=4
    {
    timer+=1 
    if timer>300 && przyciemniaj=0 {przyciemniaj=1}
    }
    
    // FORTH SEQ
if sekwencja=5
    {
    sekwencja=6
    timer=0
    x=4760
    }
if sekwencja=6
    {
    timer+=1
    if timer>200 && przyciemniaj=0 {przyciemniaj=1}
    }
    // CAVE 1
if sekwencja=7
    {
    poziomy_scrolling_adder=0
        obj_mario_anim.size2=1
    obj_mario.kierunek=1
    obj_mario.x=120
    obj_mario.y=10760-800
    global.ekran_size_act=1
    global.background_kind=4
    x=400
    y=10760
    __view_set( e__VW.YView, 0, 10760 )
    sekwencja=8
    doluj_y=40
    }
if sekwencja=8
    {
    //view_yview[0]=y
    if doluj_y>0 {y+=0.1;doluj_y-=0.1}
    if global.ekran_size_act<1.2 {global.ekran_size_act+=0.001}
    timer+=1
    if timer>=250 {if przyciemniaj=0 {przyciemniaj=1}}
    }
// CAVE 2
if sekwencja=9
    {
    sekwencja=10
    x+=800
    timer=0
    global.ekran_size_act=0.5
    }
if sekwencja=10
    {
    timer+=1
    if timer>=250 {if przyciemniaj=0 {przyciemniaj=1}}
    if global.ekran_size_act<1.2 {global.ekran_size_act+=0.01}
    }
// CAVE 3
if sekwencja=11
    {
    sekwencja=12
    x+=800
    timer=0
    global.ekran_size_act=1.2
    }
if sekwencja=12
    {
    speed=1
    timer+=1
    if timer>=400 {if przyciemniaj=0 {przyciemniaj=1}}
    global.ekran_size_act=1.2+sin(degtorad(timer/5))/10
    }
// DESERT
if sekwencja=13
    {
    obj_mario.x=250
    obj_mario.y=800
    __background_set( e__BG.Visible, 0, 0 )
    __background_set( e__BG.Visible, 1, 0 )
    __background_set( e__BG.Visible, 2, 0 )
    __background_set( e__BG.Visible, 3, 0 )
    
    __background_set( e__BG.Foreground, 3, 0 )
    __background_set( e__BG.Visible, 0, 0 )
    __background_set( e__BG.Visible, 1, 0 )
    __background_set( e__BG.Visible, 2, 0 )
    __background_set( e__BG.Visible, 3, 0 )
    global.ekran_size_act=1.2
    sekwencja=14
    timer=0
    x=400
    y=1050-100
    global.background_kind=16
            for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            with(iii)
                {
                if object_index=o_desert_paralax_1 {visible=1} 
                if object_index=o_desert_paralax_2 {visible=1} 
                if object_index=o_desert_paralax_3 {visible=1}
                if object_index=o_desert_paralax_3_old_script {visible=1}
                if object_index=o_desert_paralax_4_old_script {visible=1}
                }

            }
    }
if sekwencja=14
    {
    o_desert_paralax_3.visible=1
    timer+=1
    if timer>=400 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    }
// DESER 2
if sekwencja=15
    {
    speed=2
    sekwencja=16
    x+=800
    obj_mario.x+=2000
    obj_mario.y-=200
    }
if sekwencja=16
    {
    
    timer+=1
    if timer>=400 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    }
// DESERT 3
if sekwencja=17
    {
    x+=200
    sekwencja=18
    timer=0
    speed=1
    }
if sekwencja=18
    {
    timer+=1
    if timer>=200 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    }
// DESERT 4
if sekwencja=19
    {
    timer=0
    x+=300
    sekwencja=20
    }
if sekwencja=20
    {
    timer+=1
    if timer>=200 {if przyciemniaj=0 {przyciemniaj=1;timer=0}}
    }
// desert 5
if sekwencja=21
    {
    x+=300
    sekwencja=22
    timer=0
    }
if sekwencja=22
    {
    timer+=1
    if timer>=200 {if przyciemniaj=0
        {
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            with(iii)
                {
                if object_index=o_desert_paralax_1 {visible=0} 
                if object_index=o_desert_paralax_2 {visible=0} 
                if object_index=o_desert_paralax_3 {visible=0}
                if object_index=o_desert_paralax_3_old_script {visible=0}
                if object_index=o_desert_paralax_4_old_script {visible=0}
                }

            }
            
        
        
        przyciemniaj=1;timer=0}}
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }

sekwencja_dzwieku+=1

if sekwencja_dzwieku=3 {}

