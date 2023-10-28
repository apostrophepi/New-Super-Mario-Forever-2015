if global.pauza=0
    {
    if place_meeting(x,y,obj_mario) && sekwencja=0
        {
        sekwencja=1
        nagraj_x_gracza=obj_mario.x
        nagraj_y_gracza=obj_mario.y
        SXMS_SFX_PlayExt(24,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    if sekwencja=1
        {
        if przyciemniacz>0 {przyciemniacz-=0.05}
        if przyciemniacz<=0 {sekwencja=2}
        for(i=0;i<tilesy;i+=1)
            {
            tile_set_alpha(set_tile_secret[i],przyciemniacz)
            }
        }
    if sekwencja=2
        {
        if x<obj_mario.x && !place_meeting(x,y,obj_mario) && lewo=1 {SXMS_SFX_PlayExt(24,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);sekwencja=3}
        if x>obj_mario.x && !place_meeting(x,y,obj_mario) && prawo=1 {SXMS_SFX_PlayExt(24,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);sekwencja=3}
        }
    if sekwencja=3
        {
        if przyciemniacz<1 {przyciemniacz+=0.05}
        if przyciemniacz>=1 {sekwencja=0}
        for(i=0;i<tilesy;i+=1)
            {
            tile_set_alpha(set_tile_secret[i],przyciemniacz)
            }
        }
    }

