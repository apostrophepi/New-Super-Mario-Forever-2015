if global.pauza=0
    {
    if !place_meeting(x+ixor,y,obj_wall) {x+=ixor}
    if place_meeting(x+ixor,y,obj_wall) {ixor=ixor*-1}
    
    if iyor<0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor}
    if iyor<0 && place_meeting(x,y+iyor,obj_wall) {iyor=iyor*-1}
    
    if iyor>0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor; }
    if iyor>0 && place_meeting(x,y+iyor,obj_wall)
        {
        for (i=0;i<ceil(iyor);i+=1)
            {
            if place_meeting(x,y+i,obj_wall) {y+=i-1; iyor=iyor*-1; iyor=iyor/1.5; break;break}
            
            }
        }
    
    
    ixor=ixor/1.01
    if !place_meeting(x,y+1,obj_wall) {iyor+=0.2}
    if iyor>-0.2 && iyor<0.2 {iyor=0}
    
    krecenie-=ixor
    
    // tworzenie szkieletu
    
    if element1.sekwencja=1 && element2.sekwencja=1 && element3.sekwencja=1
        && element4.sekwencja=1 && element5.sekwencja=1
            {
            SXMS_SFX_PlayExt(53,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            instance_create(x,y,o_enemy_dry_bones)
            instance_destroy()
            with(element1) {instance_destroy()}
            with(element2) {instance_destroy()}
            with(element3) {instance_destroy()}
            with(element4) {instance_destroy()}
            with(element5) {instance_destroy()}
            }
    }
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu{
draw_sprite_ext(s_dry_bones_1,0,x+20,y+20,1,1,krecenie,c_white,1)}

