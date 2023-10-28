if image_alpha<1 && used<1 {image_alpha+=0.01}
draw_sprite_ext(s_boo_glow,0,__view_get( e__VW.XView, 0 )+680*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),20*global.ekran_size_act,20*global.ekran_size_act,0,c_white,image_alpha)
draw_sprite_ext(s_boo_glow,0,__view_get( e__VW.XView, 0 )+680*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),10*global.ekran_size_act,10*global.ekran_size_act,0,c_white,image_alpha)
stro+=4
draw_sprite_ext(s_dialog_chmurken,0,__view_get( e__VW.XView, 0 )+680*global.ekran_size_act-100+sin(degtorad(stro/3))*11,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+sin(degtorad(stro/2))*10-290,-1*global.ekran_size_act+sin(degtorad(stro/2))/10,1*global.ekran_size_act-sin(degtorad(stro/2))/10,0+sin(degtorad(stro))*5,c_white,image_alpha)
draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, 0 )+680*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),1*global.ekran_size_act,1*global.ekran_size_act,0,c_white,image_alpha)

if kefir=SXMS_SFX_Position(1,global.bufor,0) {odliczator+=1}
if kefir<>SXMS_SFX_Position(1,global.bufor,0) {odliczator=0;kefir=SXMS_SFX_Position(1,global.bufor,0)}


if odliczator>=30 && used=0 {o_toad_talker_ANIM.sekwencor=103;used=1;global.blokuj_ruch_na_title_screenie=0
with(obj_mario)
    {
    instance_create(x+100,y,o_secret_show_RIGHT)
    instance_create(x-100,y,o_secret_show_LEFT)
    SXMS_SFX_PlayExt(313,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
    }
    
    
  with(178250)
    {
    instance_create(x,y-80,o_secret_show)
    }
    
  with(178249)
    {
    instance_create(x,y-80,o_secret_show)
    }    
      

}

if used>=1 && used<120 {global.sciszacz_sekwencyjny_muzyki=global.sciszacz_sekwencyjny_muzyki/1.3+0.1}
if used>800 {global.sciszacz_sekwencyjny_muzyki=5}
if used>120 {global.sciszacz_sekwencyjny_muzyki=5}
if used=120 {

if global.english_or_polish=0 {

odliczator=0
sampel=SXMS_SFX_PlayExt(503,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
}


if used>=1 {used+=1;image_alpha=image_alpha/1.05}
if used>=1 && image_alpha<=0.05 {image_alpha=0;}


if used=120 {

if global.english_or_polish=1 {

odliczator=0
sampel=SXMS_SFX_PlayExt(502,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
}

