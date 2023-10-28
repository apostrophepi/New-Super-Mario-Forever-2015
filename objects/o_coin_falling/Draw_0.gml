draw_sprite_ext(global.gfx_coin,0,x+12,y+12,abs(sin(kont)),1,0,c_white,image_alpha)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_coin,0,x+12,y+12,abs(sin(kont)),1,0,c_white,(sin(kont)/2)*image_alpha)
draw_set_blend_mode(bm_normal)
kont+=0.5

if global.pauza=0
    {
    y+=iyor/1.3
    iyor+=1
    iyor=iyor/1.03
    if place_meeting(x,y,obj_wall) {iyor=iyor*-1}
    lifetime+=1
    if lifetime>100 {image_alpha-=0.01}
    if image_alpha<=0 {instance_destroy()}
    
    
    
    }
