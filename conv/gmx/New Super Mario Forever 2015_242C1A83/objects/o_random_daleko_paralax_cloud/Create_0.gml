kind=round(random(4))
chmurka=0
stream=random(400)


if kind=0 {chmurka=s_cloud_1}
if kind=1 {chmurka=s_cloud_2}
if kind=2 {chmurka=s_cloud_3;image_xscale=0.75}
if kind=3 {chmurka=s_cloud_5;image_xscale=0.75}
if kind=4 {chmurka=s_cloud_4}




script_paralax_create()
visible_size=1.5

wielkosc=random(0.5)

image_xscale=0.2+wielkosc
image_yscale=0.2+wielkosc
image_angle=0
image_alpha=0.5
dzielnik=1.4+y/5000+wielkosc/100
mnoznik=0
depth=60000000-y
odleglosc_przemijania=40000000+wielkosc*1000


kafel=round(random(4))

if kafel=0 {sprite_index=s_hill_2}
if kafel=1 {sprite_index=s_hill_3}
if kafel=2 {sprite_index=s_hill_4}
if kafel=3 {sprite_index=s_hill_5}
if kafel=4 {sprite_index=s_hill_6}


