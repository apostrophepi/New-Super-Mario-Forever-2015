       lampka_najblizsza=100000
        lampka_najblizsza_id=0
          for (i=0;i<instance_count-1;i+=1)
            {
            
            iii=instance_id_get( i )
            if instance_exists(iii) {
            if iii.object_index=o_darkerer_ekranowy_lampka
                {
                if point_distance(obj_mario.x,obj_mario.y,iii.x,iii.y)<lampka_najblizsza {lampka_najblizsza=point_distance(obj_mario.x,obj_mario.y,iii.x,iii.y);lampka_najblizsza_id=iii}
                }
                }
            }

