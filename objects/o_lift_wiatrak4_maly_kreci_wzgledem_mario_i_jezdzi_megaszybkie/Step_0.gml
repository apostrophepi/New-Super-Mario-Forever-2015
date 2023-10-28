if global.pauza=0
    {
    sampel+=abs(kreciuj)
    if sampel>20{
    sampel=0
    SXMS_SFX_PlayExt(115,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    kreciuj=kreciuj/1.01
    

    if krec=1{
    if obj_mario.x>x {kreciuj+=(x-obj_mario.x)/500}
    if obj_mario.x<x {kreciuj+=(x-obj_mario.x)/750};krec=0}
    
    if kreciuj<0 && place_meeting(x-kreciuj*2,y,o_lift_blocker_odbijacz) {kreciuj=0}
    if kreciuj>0 && place_meeting(x-kreciuj*2,y,o_lift_blocker_odbijacz) {kreciuj=0}
    
    if kreciuj<0 && !place_meeting(x-kreciuj*2,y,o_lift_blocker_odbijacz) {x-=kreciuj/2;kat+=kreciuj}
    if kreciuj>0 && !place_meeting(x-kreciuj*2,y,o_lift_blocker_odbijacz) {x-=kreciuj/2;kat+=kreciuj}
    
    
    
    for(i=0;i<4;i+=1)
        {
        dodo[i].doceluj_x=x+sin(degtorad(kat+i*90))*odleglosc
        dodo[i].doceluj_y=y+cos(degtorad(kat+i*90))*odleglosc
        
        
        }
    
    
    
    
    
    }
    
    
    






/*kat=0
odleglosc=0
for (i=0;i<4;i+=1)
    {
    dodo[i]=instance_create(x,y,obj_lift)
    dodo[i].rodzaj=100
    }

/* */
/*  */
