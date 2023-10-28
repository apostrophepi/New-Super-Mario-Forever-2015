// circle fish generator sluzy do szybkiego i latwego generowania lawic ryb


/*zmienne

ilosc_ryb=1
promien=0
szybkosc=0
kierunek=1
sinus=90
sinus_adder=0
sinus_promien=0

przemienne_latanie=0 
optymalne_latanie=0 

przemienne_latanie ustaw to jak chcesz przemienne latanie
optymalne_latanie ustaw to jak chcesz aby przeciwnicy mieli po rowno przydzielona odleglosc wahania sie
*/


for (i=0;i<ilosc_ryb;i+=1)
    {
    koko=instance_create(x,y,o_enemy_small_fish_circle_swim)
    koko.circle_kat=360/ilosc_ryb*i
    koko.circle_promien=promien
    koko.circle_speed=szybkosc
    koko.kierunek=kierunek
    if przemienne_latanie=1 {koko.sinus=180*i}
    if optymalne_latanie=1 {koko.sinus=360/ilosc_ryb*i*2}
    koko.sinus_adder=sinus_adder
    koko.sinus_promien=sinus_promien
    }
    
instance_destroy();

/* */
/*  */
