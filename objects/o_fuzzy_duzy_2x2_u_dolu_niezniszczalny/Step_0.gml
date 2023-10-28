if global.pauza=0{
if sekwencja<0 {sekwencja=3}
if sekwencja>3 {sekwencja=0}
if sekwencja=0 && ruch_testowy=0
    {
    if !place_meeting(x+szybkosc,y,obj_wall) {x+=szybkosc}
    if !place_meeting(x,y+szybkosc,obj_wall) && !place_meeting(x+szybkosc,y,obj_wall) {sekwencja+=1}
    if place_meeting(x+szybkosc,y,obj_wall) && place_meeting(x,y+szybkosc,obj_wall) {sekwencja-=1}
    
    
    if !place_meeting(x,y+szybkosc,obj_wall) && place_meeting(x+szybkosc,y,obj_wall) {sekwencja+=1;}
    }    
if sekwencja=1 && ruch_testowy=0
    {
    if !place_meeting(x,y+szybkosc,obj_wall) {y+=szybkosc}
    if !place_meeting(x-szybkosc,y,obj_wall) && !place_meeting(x,y+szybkosc,obj_wall) {sekwencja+=1}
    if place_meeting(x,y+szybkosc,obj_wall) && place_meeting(x-szybkosc,y,obj_wall){sekwencja-=1}
    
    
    if !place_meeting(x-szybkosc,y,obj_wall) && place_meeting(x,y+szybkosc,obj_wall){sekwencja+=1}
    }   
if sekwencja=2 && ruch_testowy=0
    {
    if !place_meeting(x-szybkosc,y,obj_wall) {x-=szybkosc}
    if !place_meeting(x,y-szybkosc,obj_wall) && !place_meeting(x-szybkosc,y,obj_wall) {sekwencja+=1}
    if place_meeting(x-szybkosc,y,obj_wall) && place_meeting(x,y-szybkosc,obj_wall) {sekwencja-=1}
    
    
    if !place_meeting(x,y-szybkosc,obj_wall) && place_meeting(x-szybkosc,y,obj_wall) {sekwencja+=1}
    }      
if sekwencja=3 && ruch_testowy=0
    {
    if !place_meeting(x,y-szybkosc,obj_wall) {y-=szybkosc}
    if !place_meeting(x+szybkosc,y,obj_wall) && !place_meeting(x,y-szybkosc,obj_wall) {sekwencja+=1}
    if place_meeting(x,y-szybkosc,obj_wall) && place_meeting(x+szybkosc,y,obj_wall) {sekwencja-=1}
    
    if !place_meeting(x+szybkosc,y,obj_wall) && place_meeting(x,y-szybkosc,obj_wall) {sekwencja+=1}
    }      
    
    
    

}

