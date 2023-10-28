SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
mario_cieszy_sie=round(random(6))

if mario_cieszy_sie=1 {SXMS_SFX_PlayExt(60,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if mario_cieszy_sie=2 {SXMS_SFX_PlayExt(61,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if mario_cieszy_sie=3 {SXMS_SFX_PlayExt(10,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if mario_cieszy_sie=4 {SXMS_SFX_PlayExt(11,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if mario_cieszy_sie=5 {SXMS_SFX_PlayExt(12,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if mario_cieszy_sie=6 {SXMS_SFX_PlayExt(13,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

muszluje=1
kierunek=0
stream=0
globalny_kat=0

kierunek=1
ixor=8
iyor=-8

timer=0

sekwencja=0

kick_timer=0
kickable=0
kicked=0

for (i=0;i<20;i+=1)
    {
    if place_meeting(x,y,obj_wall) {y-=1}
    }
    
    


