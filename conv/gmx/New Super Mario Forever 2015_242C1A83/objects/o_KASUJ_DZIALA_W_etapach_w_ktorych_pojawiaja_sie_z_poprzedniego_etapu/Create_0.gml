    if instance_number(o_enemy_cannon)>0
        {
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            if iii.object_index=o_enemy_cannon
                {
                instance_destroy()
                }
            }
        }

