//boss_level=0

completed_boss=0
kill=0



sampel1=0


key=1 // czy pisada klucz, jezeli posiada to pojawi sie, ale nic sie na mapie nie zrobi, do tego sluza inne zmienne

w_muszli=0
byl_w_muszli=0


boss_blur_controller=instance_create(x,y,o_boss_blur_controller)
skacze_delay=0 // zeby mario mial troche czasu na nadepniecie bossa
kierunek=1

rozdeptywalny=1
energy=10000
energy_ma=10000
boss_ENERGY=5
niezjadywalny=1 // zmienna ktora chroni przeciwnika przed zjedzeniem
aktywuj=0
image_yscale=1.2
image_xscale=1

animacja=0
stream=random(360)
szybkosc=0


anim_chowanie=0
trudnosc=1 //0 slabiak, 1 - skacze, 2 uderza mocno!, 3 rzuca kulami
iyor=0
anim_podskok=0
podskoczyl=0
obracanie_reka=0
obracanie_reka2=0
obracanie_reka3=0
uderza=0

skok_tytana=0
skok_tytana2=0
skok_tytana3=y

skacze3razy=3

for (i=0;i<100;i+=1)
    {
    y+=10
    if place_meeting(x,y,obj_wall) {break;}
    }
for (i=0;i<11;i+=1)
    {
    if place_meeting(x,y,obj_wall) {y-=1}
    }
    
    
    sekwencja=0
    timer=0

