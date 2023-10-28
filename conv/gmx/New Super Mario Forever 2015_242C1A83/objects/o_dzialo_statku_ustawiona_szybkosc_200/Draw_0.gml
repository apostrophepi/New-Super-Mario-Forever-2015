if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu
    {
    if global.pauza=0
        {
        timer+=1
        if timer>szybkosc_strzalu
            {
            timer=0;
            SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            effect_create_above(ef_smoke,x+random(20)-random(20),y+random(20)-random(20),1,c_white)
            effect_create_above(ef_smoke,x+random(20)-random(20),y+random(20)-random(20),1,c_white)
            effect_create_above(ef_smoke,x+random(20)-random(20),y+random(20)-random(20),1,c_white)
            part_particles_create(global.particle_sys_3,x,y,global.part_effect_smoke_big,10)
            instance_create(x,y,o_dzialo_efekter_1)
            instance_create(x-20,y-20,o_dzialo_killer_1)
            }
        
        }
    
    }

