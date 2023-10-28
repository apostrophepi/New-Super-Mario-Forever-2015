kat=0
kat2=random(360)
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
    sznurek[i]=lolo.id
    dlugosc_sznurka=i
    }
