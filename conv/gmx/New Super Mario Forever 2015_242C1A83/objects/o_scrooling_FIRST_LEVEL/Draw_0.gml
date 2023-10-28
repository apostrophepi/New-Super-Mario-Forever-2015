if sekwencja=0
    {
    sekwencja=1
    if efektuj_spadniecie=0 {global.ekran_size_act=1.5}
    }
if sekwencja=1
    {
    timer+=1
    if timer>150 {timer=0;sekwencja=2;adder_scroller=50}
    }
if sekwencja=2
    {
    global.level_death_pit=room_height+90000
    //if global.ekran_size_act>1.1 && efektuj_spadniecie=0 {global.ekran_size_act-=0.01}
    /*if obj_mario.x>1210 && obj_mario.x<1800 && setter<>1200 {setter=1200;adder_scroller+=50}
    if obj_mario.x<1210 && setter=1200 {setter=1000;adder_scroller-=50}
    
    if obj_mario.x<400 && setter=800 {setter=1;adder_scroller-=50}
    if obj_mario.x>400 && setter=1 {setter=2;adder_scroller+=50}
    
    
    if obj_mario.x<960 && obj_mario.x>400 && setter<>800 && setter<>2 {setter=800;adder_scroller-=150}
    if obj_mario.x>960 && (setter=800 || setter=2) {setter=0;adder_scroller+=150}*/
    
    if steruj_scroolem=0 && obj_mario.x>0 {steruj_scroolem=1;steruj_scroolem_nagraj_x=x;steruj_roznica=obj_mario.x-x}
    if steruj_scroolem=1 {x=obj_mario.x-steruj_roznica;steruj_roznica=steruj_roznica/1.03
    if obj_mario.x<0 {steruj_scroolem=3;steruj_roznica2=x-steruj_scroolem_nagraj_x}}
    if steruj_scroolem=3 {steruj_roznica2=steruj_roznica2/1.3;x=steruj_scroolem_nagraj_x+steruj_roznica2}
    if steruj_scroolem=3 && steruj_roznica2>=-0.01 && steruj_roznica2<0.01 {steruj_scroolem=0;steruj_scroolem=0}
    
    }
    
if adder_scroller<>0 {x+=adder_scroller;adder_scroller=adder_scroller/1.3}




/* */
/*  */
