script_mario_anim()

if global.pauza=0{
if global.rodzaj_mario=5
    {
    if ducher_y>0 {ducher_y=ducher_y/1.05}
    if duch_alpha<1 {duch_alpha+=0.05}
    }
if global.rodzaj_mario<>5
    {
    if ducher_y<80 {ducher_y+=1+ducher_y/10}
    if duch_alpha>0 {duch_alpha-=0.05}
    }
    
    
    
    } // koniec pauzy
    
    ducher_obracacz+=2
    
    if ducher_y<80{
    
    
    
    
    if global.ducher_zamieniony=0 {draw_sprite_ext(s_changer,0,x,y,global.ducher_ladowanie/20,global.ducher_ladowanie/20,0,c_white,global.ducher_ladowanie/20)}
    }
    
    
    
    


