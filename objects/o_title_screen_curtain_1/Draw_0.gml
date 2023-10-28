for(ii=0;ii<6;ii+=1)

    {
    for(i=0;i<7;i+=1)
        {
        draw_background_ext(back_palace_curtain,-40-sin(degtorad(stream))*10+__view_get( e__VW.XView, 0 )+133*i*global.ekran_size_act+i*sin(degtorad(stream))*2,(6-ii)*podniesione/10+podniesione+__view_get( e__VW.YView, 0 )+6*80-ii*80-80,1*global.ekran_size_act+sin(degtorad(stream))/40,1*global.ekran_size_act,0,c_white,1)
        }
    }
    
    
    stream+=2
    
    zaczyna_sie+=1
    if zaczyna_sie>60 {
    if podnos=1 {podnos=2}
    if podnos=2 && podniesione>-2000 {podniesione-=2}}
    if podniesione<=-600 {instance_destroy()}

