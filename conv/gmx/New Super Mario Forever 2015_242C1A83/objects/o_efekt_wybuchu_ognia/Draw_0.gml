if global.pauza=0
    {
    lifetime=lifetime/1.1
    if dym>90 {dym=0; effect_create_above(ef_smoke,x,y-20,1,c_white)}
    
    }



draw_set_blend_mode(bm_add)
draw_sprite_ext(s_fireball,0,x,y,lifetime,lifetime,0,c_white,lifetime)
draw_set_blend_mode(bm_normal)


