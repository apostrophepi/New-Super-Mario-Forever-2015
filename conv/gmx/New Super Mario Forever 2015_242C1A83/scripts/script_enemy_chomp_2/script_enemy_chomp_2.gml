if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 && global.pauza=0
    {
            
    
    if x>start_x+zasieg {x=start_x+zasieg}
    if x<start_x-zasieg {x=start_x-zasieg}
    
    
    if x<start_x {obliczator=x/start_x};
    if x>start_x {obliczator=start_x/x};
    timer+=1
    
    if timer=200 {cel_x=obj_mario.x;cel_y=obj_mario.y+20; SXMS_SFX_PlayExt(100,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) }
    if timer>200 {sekwencja=1; if naciagniety>0 {naciagniety=naciagniety/1.1}};
    if timer>400 {sekwencja=0; timer=0;sekwencer=0}

    if sekwencja=1{
    if x>cel_x && x>start_x-zasieg {x-=5;kierunek=-1};
    if x<cel_x && x<start_x+zasieg {x+=5;kierunek=1};
    if y<cel_y && y<start_y+zasieg {y+=5};
    if y>cel_y && y>start_y-zasieg {y-=5};}
    
    
    if sekwencja=0 
        {
        if naciagniety<1 {naciagniety+=0.01}
        if sekwencer=0
            {
            if place_meeting(x,y,obj_wall) {
                if x>start_x {x-=2}
                if x<start_x {x+=2}
                if y>start_y {y-=2}
                if y<start_y {y+=2}}
            }
        
                
            if (x>start_x-2 && x<start_x+2 && y>start_y-2 && y<start_y+2) || !place_meeting(x,y,obj_wall) {sekwencer=1};
            if sekwencer=1
                {
                
                
                if chance<1000 {chance=random(1000)}
                if chance>=900 && chance<1000 {iyor=-1-random(6);ixor=random(5)-random(5); chance=11101}
                if chance=11101 {iyor+=0.2}
                
                if ixor<>0
                    {
                    if ixor>0 {kierunek=1}
                    if ixor<0 {kierunek=-1}
                    if !place_meeting(x+ixor,y,obj_wall) {x+=ixor}
                    ixor=ixor/1.01
                    }
                if iyor<0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor}
                if iyor>0
                    {
                    y+=iyor
                    if place_meeting(x,y+iyor,obj_wall) {sekwencer=2}
                    }}
        if sekwencer=2
            {
            for (i=0;i<ceil(iyor);i+=1)
                {
                if place_meeting(x,y,obj_wall) {y-=1}
                }
            iyor=0;
            sekwencer=1;
            chance=0;
            }
        }
                
                
                
                
}

    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5{
    for (i=0;i<ceil(zasieg/30);i+=1)
        {
        draw_sprite_ext(s_chain,i,
        (start_x+20)+(x-start_x)*(i/(ceil(zasieg/30))),
        (start_y+20)+(y-start_y)*(i/(ceil(zasieg/30)))+(sin(degtorad(180*(i/(ceil(zasieg/30)))))*50*naciagniety)*obliczator,
        ((max(1,point_distance(x,y,start_x,start_y))/30)/(zasieg/30)/2+0.5),1,
        point_direction((start_x+20)+(x-start_x)*(i/(ceil(zasieg/30))),
        (start_y+20)+(y-start_y)*(i/(ceil(zasieg/30)))+(sin(degtorad(180*(i/(ceil(zasieg/30)))))*50*naciagniety)*obliczator,
        (start_x+20)+(x-start_x)*((i+1)/(ceil(zasieg/30))),(start_y+20)+(y-start_y)*((i+1)/(ceil(zasieg/30)))+(sin(degtorad(180*((i+1)/(ceil(zasieg/30)))))*50*naciagniety)*obliczator)
        ,c_white,1)}
    }

   
    
    
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5{
draw_background(back_wiatrak_kulka,xstart-60+30,ystart-60+20)


draw_sprite_ext(s_bigchomp_2,0,x+37,y+37,kierunek,1,sin(degtorad(-stream*kierunek))*20-20*kierunek,c_white,1)
draw_sprite_ext(s_bigchomp_1,0,x+37,y+37,kierunek,1,sin(degtorad(stream*kierunek))*20+20*kierunek,c_white,1)
draw_sprite_ext(s_bigchomp_3,0,x+37,y+37,kierunek,1,0,c_white,1)
draw_sprite_ext(s_bigchomp_4,0,x+37,y+37,kierunek,1,sin(degtorad(stream*kierunek))*20+20*kierunek,c_white,1)
stream+=5+sekwencja*50}
