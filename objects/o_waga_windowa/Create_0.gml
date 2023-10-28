kreciuj2=0

stopper=0
sampel=0
kreciuj=0
krec=0

kat=0

for (i=0;i<2;i+=1)
    {
    dodo[i]=instance_create(x,y,obj_lift)
    dodo[i].rodzaj=101
    dodo[i].nalezydo=id
    }
    
    
    

odleglosc=100



dodo[0].doceluj_x=x+sin(degtorad(kat+90))*odleglosc
dodo[0].doceluj_y=y+cos(degtorad(kat+90))*odleglosc
            
dodo[1].doceluj_x=x+sin(degtorad(kat+270))*odleglosc
dodo[1].doceluj_y=y+cos(degtorad(kat+270))*odleglosc

