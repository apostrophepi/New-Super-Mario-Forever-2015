if place_meeting(x,y,obj_mario)
    {
    obj_mario.x=cofaj
    SXMS_SFX_PlayExt(314,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_create(x,y,o_FADE_blanker_out)
    }

