draw_sprite_ext(global.gfx_explosion,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_explosion,0,x,y,image_xscale*1.5,image_yscale*1.5,image_angle*3,c_white,image_alpha/5)
draw_sprite_ext(global.gfx_explosion,0,x,y,image_xscale*2,image_yscale*2,image_angle*2,c_white,image_alpha/10)
draw_set_blend_mode(bm_normal)






if global.pauza=0{

hitter+=1;killing_time+=1
if hitter>2 && killing_time<10 {hitter=0
if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        }
if place_meeting(x,y,o_enemy_goomba_lezy)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba_lezy);
        with (koko) {kill=1;instance_create(x,y,o_fireball_boom);};
        } }
        
        
        
if explosion_sekwencja=0 && image_alpha<1 {image_alpha+=0.1}
if explosion_sekwencja=0 && image_alpha>=1 {explosion_sekwencja=1}
if explosion_sekwencja=1 && image_alpha>0 {image_alpha=image_alpha/1.3; image_xscale=image_xscale/1.2; image_yscale=image_yscale/1.2}




boom_random=boom_random/1.2
boom_life-=1
if boom_life<=0 {boom_alpha=boom_alpha/1.03}
boom_iyor=boom_iyor/1.08
boom_iyor2-=boom_iyor
draw_sprite_ext(global.gfx_explosion2,0,x+random(boom_random)-random(boom_random),y+boom_iyor2+random(boom_random)-random(boom_random),boom_alpha2,boom_alpha2,0,c_white,boom_alpha2)


boom_alpha3+=1
if boom_alpha3>40 {boom_alpha2=boom_alpha2/1.13}
if boom_alpha2<=0.01 {instance_destroy()}


explosion_life-=1
// destroyabling


}

