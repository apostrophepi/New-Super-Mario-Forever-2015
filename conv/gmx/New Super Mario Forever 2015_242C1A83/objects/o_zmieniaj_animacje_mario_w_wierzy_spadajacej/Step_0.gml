if obj_mario.y>1000 && obj_mario.sekwencja=1 && obj_mario.y<room_height-1000 && global.pauza=0
    {
    obj_mario_anim.animacja=4
    if keyboard_check(global.ster_right) {obj_mario_anim.size2=1}
    if keyboard_check(global.ster_left) {obj_mario_anim.size2=-1}
    
    }

