if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1 {
if random(100)>99 {instance_create(x+random(20)-random(20),y,o_water_bubble_small)}
if random(100)>99 {instance_create(x+random(20)-random(20),y,o_water_bubble_big)}

}

