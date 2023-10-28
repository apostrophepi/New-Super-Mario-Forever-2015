if global.pauza=0
    {
    instance_destroy()
    if rodzaj<>20 && rodzaj<>21{
    if rodzaj=666
        {
        kafel=instance_create(x,y,s_shy_boo)
        kafel.wysun_z_puntow=1

        
        
        }
    if global.rodzaj_mario=0 && rodzaj=1
        {
        instance_create(x+7,y+12,o_bonus_mushroom)
        }
    if global.rodzaj_mario=0 && rodzaj<>1 && rodzaj<>0 && rodzaj<>666 && rodzaj<20
        {
        instance_create(x+7,y+12,o_bonus_mushroom)
        }    
        
       
    if global.rodzaj_mario<>0 && rodzaj=2
        {
        instance_create(x+7,y+12,o_bonus_kwiatek)
        }
         
    if global.rodzaj_mario<>0 && rodzaj=3
        {
        instance_create(x+7,y+12,o_bonus_rzodkiew)
        }
        
    if global.rodzaj_mario<>0 && rodzaj=4
        {
        instance_create(x+7,y+12,o_bonus_boomer_salad)
        }
    if global.rodzaj_mario<>0 && rodzaj=5
        {
        instance_create(x+7,y+12,o_bonus_duchowy_grzyb)
        } 
    if global.rodzaj_mario<>0 && rodzaj=6
        {
        instance_create(x+7,y+12,o_bonus_mlotker_grzyb)
        }   
    if global.rodzaj_mario<>0 && rodzaj=7
        {
        instance_create(x+7,y+12,o_bomber_bonus)
        }     
    if global.rodzaj_mario<>0 && rodzaj=8
        {
        instance_create(x+7,y+12,o_bonus_listek)
        }  
           
    if global.rodzaj_mario<>0 && rodzaj=9
        {
        instance_create(x+7,y+12,o_bonus_tanooki_suit)
        }    
    if global.rodzaj_mario<>0 && rodzaj=10
        {
        instance_create(x+7,y+12,o_bonus_flaying_mushroom)
        }     }
    if rodzaj=20
        {
        gugu=instance_create(x,y,o_triggerus);gugu.wysowator=1;
        }
    if rodzaj=21
        {
        gugu=instance_create(x,y,o_bonus_mushroom_zycie);gugu.wysowator=1;
        }
    if rodzaj=22
        {
        gugu=instance_create(x,y,o_power_star);gugu.wysowator=1;
        }  
      if rodzaj=23
        {
        instance_create(x+20,y+20,o_HAPPY_STAR)
        
        
        } 
      if rodzaj=24
        {
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        }     
      if rodzaj=25
        {
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        instance_create(x+20,y+20,o_HAPPY_STAR)
        }     
        
           
        

    }

