if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
if random(100)>80 {instance_create(x,y+random(80),o_water_bubble_small_antygrawiton2)}
if place_meeting(x,y,obj_mario)
    {
    player=instance_place(x,y,obj_mario)
    player.szybkosc+=1
    }
    
    
    

}

