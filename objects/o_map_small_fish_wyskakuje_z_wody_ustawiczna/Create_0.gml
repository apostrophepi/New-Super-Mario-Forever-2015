stream=random(256)
randomer=5
randomex=random(0.5)
kierunek=1
depth=-y

mrugacz=0
mrugacz2=0
wielkosc_x=0

sekwencja=0
ixor=0
iyor=0



timer=0
przesowator=0
/*

ile_iyor to ile ma miec predkosci poczatkowej - zaczynac sie musi od ujemnej wartosci chyba ze ma skoczyc do gory to musi od duzej wartosci ujemnej sie zaczynac a nie od malej
co_ile_wyskakuje - co ile stepow ma znowu wyskoczyc jak wpadnie do wody
jak_daleko_skacze_y - czyli jak daleko ryba moze wyskoczyc z wody, aczkolwiek to zalezy od wartosci ile_przesowator, gdyz ryba moze dogonic wartoscia iyor roznice pozycji docelowej
i nie obliczonej wartosci jak daleko skacze
Czyli jak daleko skacze = 200, ale co stepa ile przesowator dodaje 2 pixele,

losowuj_timer=0 // 0 lub 1, jak 1 to bedzie losowac przedzial czasowy dodatkowo do co ile skacze

ile_iyor=-5
ile_ixor=5
co_ile_wyskakuje=100
jak_daleko_skacze_y=50
ile_przesowator_y=0

/* */
/*  */
