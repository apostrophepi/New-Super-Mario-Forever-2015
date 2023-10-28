stream+=0.05
image_xscale=1+sin(stream)/100
image_yscale=1-sin(stream)/100
image_angle=sin(stream/4)

if ustaw_mario_w_prawo=0
    {
    ustaw_mario_w_prawo=1
    obj_mario_anim.size2=1
    }
    
if sekwencja=0
    {
    sekwencja=1
    global.ekran_size_act=1.5
    obj_mario.scrool_animation_x=4200
    obj_mario.scrool_animation_y=-400
    obj_mario.scrool_animation_fun=-100
    }
if sekwencja=1
    {
    obj_mario.scrool_animation_x=obj_mario.scrool_animation_x/1.005
    obj_mario.scrool_animation_y=obj_mario.scrool_animation_y/1.005
    global.ekran_size_act=wielkosciownik+1
    wielkosciownik=wielkosciownik/1.01
    
    }
    
    
    
    if obj_mario.x>5500 {obj_mario.x=5500}
    if obj_mario.x<200 {obj_mario.x=200}

