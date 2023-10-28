if place_meeting(x,y,obj_mario)
    {
    if mario_ok=0
        {
        mario_ok=1
        SXMS_SFX_PlayExt(313,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        
        }
    }
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*2
    {
    mario_ok=0
    
    
    }

