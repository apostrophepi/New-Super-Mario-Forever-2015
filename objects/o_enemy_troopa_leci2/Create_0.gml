SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
kierunek=0
stream=0
globalny_kat=0
rozdeptywalny=1
energy=99999999

kierunek=1
ixor=8
iyor=0

timer=0

seened=0
kill=0

sekwencja=0

kick_timer=0
kickable=0
kicked=0

for (i=0;i<20;i+=1)
    {
    if place_meeting(x,y,obj_wall) {y-=1}
    }
    
dotknal=1


rodzaj=0
jaka_grafika=0 // czy koopa troopa, czy buzzy beetle
gwiazdker=0
combo_life=0
combo_tick=0

nie_zabijaj_mario=1

muszluje=1

