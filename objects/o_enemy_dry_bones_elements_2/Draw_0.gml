if global.pauza=0
    {
    if timer<250 {
    if !place_meeting(x+ixor,y,obj_wall) {x+=ixor}
    if place_meeting(x+ixor,y,obj_wall) {ixor=ixor*-1}}
    
    if timer<450 {
    if iyor<0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor}
    if iyor<0 && place_meeting(x,y+iyor,obj_wall) {iyor=iyor*-1}}
    
    if timer<450 {
    if iyor>0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor; }
    if iyor>0 && place_meeting(x,y+iyor,obj_wall)
        {
        for (i=0;i<ceil(iyor);i+=1)
            {
            if place_meeting(x,y+i,obj_wall) {y+=i-1; iyor=iyor*-1; iyor=iyor/1.5; break;break}
            
            }
        }}
    
    
    ixor=ixor/1.05
    if !place_meeting(x,y+1,obj_wall) && timer<450 {iyor+=0.2}
    if iyor>-0.2 && iyor<0.2 {iyor=0}
    
    krecenie-=ixor*10
    
    if y>room_height+100 {iyor=0;y=room_height+100}
    
    //wracanie elementow
    timer+=1
    if timer>150 && timer<250 {randomer+=50}
    if timer>=250 && sekwencja=0
        {

        x+=xoxo
        y+=yoyo
        
        if x>(nalezy_do).x && !place_meeting(x,y,(nalezy_do)) {xoxo-=0.2} else {xoxo+=0.2}
        if y>(nalezy_do).y && !place_meeting(x,y,(nalezy_do)) {yoyo-=0.2} else {yoyo+=0.2}
        if xoxo>5 {xoxo=5}
        if xoxo<-5 {xoxo=-5}
        if yoyo>5 {yoyo=5}
        if yoyo<-5 {yoyo=-5}
        
        }
    }
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu{
if rodzaj=0 {draw_sprite_ext(s_dry_bones_2,0,x,y+sin(degtorad(randomer+180))*5,1,1,krecenie,c_white,1)}
if rodzaj=1 {draw_sprite_ext(s_dry_bones_33,0,x,y+sin(degtorad(randomer+90))*5,1,1,krecenie,c_white,1)}
if rodzaj=2 {draw_sprite_ext(s_dry_bones_44,0,x,y+sin(degtorad(randomer))*5,1,1,krecenie,c_white,1)}}

