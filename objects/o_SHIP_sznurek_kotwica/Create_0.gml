kat=0
kat2=0
dzielnik=1
mario=0
wisi_na=0
jest_bujane=0
odbujanie=0
odejmowacz=0
dlugosc_sznurka=0


for(i=0;i<15;i+=1)
    {
    lolo=instance_create(x,y,o_sznurek_child)
    lolo.nalezy=id
    lolo.mask_index=global.gfx_sznurek
    lolo.numer=i
    if i=0 {lolo.image_alpha=0.2}
    if i=1 {lolo.image_alpha=0.5}
    if i=2 {lolo.image_alpha=0.75}
    if i=5 {global.sekwencja_statku=lolo}
    
    
    if i=14 {lolo.kotwica=1}
    sznurek[i]=lolo.id
    dlugosc_sznurka=i
    }

