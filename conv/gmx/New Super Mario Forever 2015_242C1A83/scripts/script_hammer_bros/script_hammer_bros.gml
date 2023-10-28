if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

// atakowanie

atakowanie+=1.2

if rzut_anim<>0 {rzut_anim=rzut_anim/1.1}

if x<obj_mario.x {kierunek=1};
if x>obj_mario.x {kierunek=-1};
if atakowanie>300
    {
    rzut_anim=100
    atakowanie=-random(100)
    SXMS_SFX_PlayExt(46,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);lolo=instance_create(x+20,y+20,o_enemy_hammers);lolo.ixor=4*kierunek
    }
// chodzenie
if sekwencer=0
    {
    if sekwencja_chodzenie=0
        {
        sekwencja_chodzenie=1
        chodzi_x=xstart+random(zasieg_x)-random(zasieg_x)
        }
    if sekwencja_chodzenie=1 && iyor=0
        {
        if !place_meeting(x+1,y-1,obj_wall) && x<chodzi_x {x+=1;stream+=0.1};
        if !place_meeting(x-1,y-1,obj_wall) && x>chodzi_x {x-=1;stream+=0.1};
        // wchodzenie pod gorke
        if place_meeting(x,y,obj_wall) {y-=1}
        if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+79,x+32,y+80,o_subplatform,0,1) {y+=1} 
        // jak zderzy sie wraca do punktu startowego
        if place_meeting(x+1,y-1,obj_wall) {chodzi_x=xstart+random(zasieg_x)-random(zasieg_x);stream+=0.1};
        if place_meeting(x-1,y-1,obj_wall) {chodzi_x=xstart+random(zasieg_x)-random(zasieg_x);stream+=0.1};
        if x>chodzi_x-5 && x<chodzi_x+5 {sekwencja_chodzenie=0;chodzi_x=0};
     
        }
    }
    
// ustaw poziom bazowy

    {
    if y>=ystart-40 && y<=ystart+40 {jest_na_poziomie=0}
    
    
    
    }
// spadanie z platformy

if sekwencer=0 && !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+79,x+32,y+80,o_subplatform,0,1)
    {
    sekwencer=1
    jest_na_poziomie=0
    iyor=0
    }
// skakanie
if jump_anim>1 {jump_anim=jump_anim/1.1}
if jump_anim<1 {jump_anim=1}

if sekwencer=0 {timer+=1};
if sekwencer=0 && timer>100
    {
    jump_anim=300
    jaki_y=y;timer=0;sekwencer=1;iyor=-15; sekwencja=1;dotyka_murku=0
    SXMS_SFX_PlayExt(77+round(random(4)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);
    if jest_na_poziomie=0 {leci_na_poziom=1};
    if jest_na_poziomie<>0 {leci_na_poziom=round(random(1))};
    };
if sekwencer=1
    {
    y+=iyor
    if iyor<10 {iyor+=0.5}
    if leci_na_poziom=1
        {
        if !place_meeting(x,y,obj_wall) && iyor>0 {dotyka_murku=1};
        if place_meeting(x,y,obj_wall) && dotyka_murku=1 {sekwencja=2;sekwencer=0;if y<ystart-20 {jest_na_poziomie+=1};timer=0 }
        }
        if global.is_subplatforms=1 && iyor>0 && dotyka_murku=1
            {
            for (i=0;i<ceil(iyor);i+=1)
                {
                if collision_rectangle(x,y+64+i,x+32,y+65+i,o_subplatform,0,1) {sekwencja=2;sekwencer=0;if y<ystart-20 {jest_na_poziomie+=1};timer=0;y+=i;break;break;break;break}
                }
            }
        
        
    if leci_na_poziom=0
        {
        if !place_meeting(x,y,obj_wall) && iyor>0 && y>jaki_y+20 {dotyka_murku=1};
        if place_meeting(x,y,obj_wall) && dotyka_murku=1 {sekwencja=2;sekwencer=0;if jest_na_poziomie>0 {jest_na_poziomie-=1};timer=0}
        if global.is_subplatforms=1 && iyor>0 && dotyka_murku=1
            {
            for (i=0;i<ceil(iyor);i+=1)
                {
                if collision_rectangle(x,y+64+i,x+32,y+65+i,o_subplatform,0,1) {sekwencja=2;sekwencer=0;if jest_na_poziomie>0 {jest_na_poziomie-=1};timer=0 ;y+=i;break;break;break;break}
                }
            }
        
        }
    };
    
if sekwencja=2 {for (i=0;i<ceil(iyor);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;iyor=0}


// kill
    
if kill=1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_troopa_shell
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }


if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_troopa_shell
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }

if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_troopa_shell
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    } 
      
// gfx

}}
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu {
if jump_anim>1 {draw_sprite_ext(s_spikey_10,0,x+18,y+30,(jump_anim/300),1,90,c_white,(jump_anim/300))}
draw_sprite_ext(global.gfx_troopa_leg,0,x+18,y+20+sin(stream)+25,kierunek,1,(sin(stream)*40)/jump_anim+360+jump_anim*kierunek,c_white,1)
draw_sprite_ext(global.gfx_troopa_4,0,x+16,y+sin(stream)*2-10+25,kierunek,1,sin(stream)*8+360+rzut_anim*kierunek/2,c_white,1)
draw_sprite_ext(global.gfx_troopa_leg,0,x+18,y+20+sin(stream)+25,kierunek,1,(sin(-stream)*40)/jump_anim+360-jump_anim*kierunek,c_white,1)
if atakowanie<200 {draw_sprite_ext(global.gfx_troopa_arm,0,x+18,y+5+sin(stream)+25,kierunek+rzut_anim/80*kierunek,1+rzut_anim/80,sin(stream)*40+360+rzut_anim*kierunek,c_white,1)}
if atakowanie>100 {draw_sprite_ext(global.gfx_troopa_arm_hammer,0,x+18,y+5+sin(stream)+25,kierunek,1,sin(stream)*40+360+rzut_anim*kierunek,c_white,(atakowanie-100)/100)}

}



//draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,0.5)
