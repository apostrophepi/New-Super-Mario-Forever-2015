if global.pauza=0
    {
    
    grawitacja+=0.5
    lifetime-=1
    y+=grawitacja
    image_angle+=obracacz
    
    if lifetime<=10 {image_alpha-=0.1}
    if image_alpha<=0 {instance_destroy()}
    
    
    
    
    }

