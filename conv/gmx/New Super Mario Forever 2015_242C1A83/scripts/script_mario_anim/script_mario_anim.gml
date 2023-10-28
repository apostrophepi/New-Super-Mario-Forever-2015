// pomniejszaj Mario jak wchodzi do rury przesowanej

if anim_mario_zmiana=0 {
if global.pauza=5 && size>0.2 {size-=0.05}
if global.pauza<>5 && size<0.7 && global.rodzaj_mario=0 {size+=0.1}
if global.pauza<>5 && size>0.7 && global.rodzaj_mario=0 {size=0.7}
if global.pauza<>5 && size<1 && global.rodzaj_mario<>0 {size+=0.1}
if global.pauza<>5 && size>1 && global.rodzaj_mario<>0 {size=1}}


// animacja POWER STAR

power_star_kolorek=obj_mario.power_star_kolorek
if obj_mario.power_star_time>0 {if power_star_powiekszator<1 {power_star_powiekszator+=0.05};animowanie+=20}
if obj_mario.power_star_time<=0 {if power_star_powiekszator>0 {power_star_powiekszator-=0.1};animowanie+=20}

if power_star_powiekszator>0 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x,y,power_star_powiekszator*1.2,power_star_powiekszator*1.2,animowanie/10,c_white,0.4)
draw_sprite_ext(s_bonus_efekter,1,x,y,power_star_powiekszator*2.5,power_star_powiekszator*2.5,animowanie/15,c_white,0.2)
draw_sprite_ext(s_bonus_efekter,1,x,y,power_star_powiekszator*3.5,power_star_powiekszator*3.5,animowanie/20,c_white,0.1)
draw_set_blend_mode(bm_normal)}


if swim_nozkowanie>0 {swim_nozkowanie-=0.2}
// dodatkowe efekty podczas grania

if ogon_merda>0 {ogon_merda-=30;if obj_mario.szybkosc>3 {obj_mario.szybkosc-=1};if obj_mario.szybkosc<-3 {obj_mario.szybkosc+=1}}
if ogon_uderzak>0 {ogon_uderzak-=20}
if ogon_uderzak<0 {ogon_uderzak+=20}
if abs(ogon_uderzak)=180
    {
    if size2=1 {lolo=instance_create(x+50,y,o_swing_hit);lolo.dir=-2}
    if size2=-1 {lolo=instance_create(x-50,y,o_swing_hit);lolo.image_xscale=-1;lolo.dir=2}
    }

// efekt swiatla

if obj_mario.grawitacja<0
    {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.gfx_effect_star3,0,x,y+16,abs(obj_mario.grawitacja)/15,0.25,-90,c_white,abs(obj_mario.grawitacja)/120)
    draw_set_blend_mode(bm_normal)
    }



// sekwencje animacji
if kierunek=1 {

if strzelanie2>0 {strzelanie2=strzelanie2/1.3;}
if strzelanie2<=0.1 {strzelanie=1}



// przyspieszone wiatraczkowanie

    wiatrak_obracator=wiatrak_obracator/1.01
    wiatraczkowanie+=wiatrak_obracator
// TANOOKI STATUE

script_anim_tanooki_statue()
script_anim_goomba_kick()
script_anim_wyrywanie_krzakow()
script_anim_odschylanie()
script_anim_walljump()
script_anim_plywanie()
script_anim_stanie()
script_anim_hamowanie()
script_anim_berserk_i_torpeda() 
script_anim_schylanie()
script_anim_skok()
script_anim_trzymanie_sie_liny()
script_anim_trzymanie_sie_drazka()
script_anim_trzymanie_sie_trampoliny()
script_anim_bieg()


script_anim_trzymanie_sie_konca_etapu()

// mruganie
if global.rodzaj_mario=6 {mrugacz[2]=0}
if global.rodzaj_mario<>6 {
if mrugacz[1]=0 {mrugacz[0]=random(1000)}
if mrugacz[0]>990 && mrugacz[1]=0 {mrugacz[1]=1}
if mrugacz[1]=1 && mrugacz[2]<1 {mrugacz[2]+=0.1}
if mrugacz[1]=1 && mrugacz[2]>=1 {mrugacz[1]=2}
if mrugacz[1]=2 && mrugacz[2]>0 {mrugacz[2]-=0.1}
if mrugacz[1]=2 && mrugacz[2]<=0 {mrugacz[2]=0;mrugacz[1]=0}}
} // koniec kierunku prawego



if global.pauza=0
    {
    // MIGANIE GRACZA PO OBERWANIU
    if obj_mario.shield_skuszenia>0 {miganie=sin(migacz2);migacz2+=0.5}
    if obj_mario.shield_skuszenia<=0 {miganie=0;migacz2=0}
    //
    if anim_mario_start=0 && global.rodzaj_mario=0 {anim_mario_start=1;obj_mario_anim.size=0.70}
    
    // zmiana koloru mario - zdobywanie z duzego na kwiatkowy, z kwiatkowego na burakowy itp
    if anim_mario_zmiana>=2000 && anim_mario_zmiana<2100
        {
        anim_mario_zmiana+=1
        migacz+=1
        if migacz<3 {anim=anim_docelowy-1}
        if migacz>=3 {anim=global.rodzaj_mario-1}
        if migacz>6 {migacz=0}
        size=1.00
        }
    if anim_mario_zmiana=2100
        {
        anim_mario_zmiana=0
        anim=global.rodzaj_mario-1
        size=1.00
        }
    
    
        // Pomniejszanie Mario po stracie Power Upa
    if anim_mario_zmiana>=3000 && anim_mario_zmiana<=3090
        {
        anim_mario_zmiana+=1
        size-=0.1
        if size<=0.4 {size=1}
        if anim_mario_zmiana=3090 {anim_mario_zmiana=0;size=0.70}
        }
        
    
    
    // Powiekszanie sie malego mario po zdobyciu grzyba lub innego bonusu
    if anim_mario_zmiana>=1000 && anim_mario_zmiana<=1090
        {
        anim_mario_zmiana+=1
        size+=0.1
        if size>1.00 {size=0.40}
        if anim_mario_zmiana=1090 {anim_mario_zmiana=0;size=1.00}
        }
    }

