function script_backgrounds() {



	// USTAW OGNISTY GROUND

	if global.background_kind=75
	    {
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Index, 0, global.background_lavas_ground )
	    global.background_kind=76
	    }
	if global.background_kind=76
	    {
	    if random(100)>90 {part_particles_create(global.particle_sys_1,__view_get( e__VW.XView, 0 )+random(1000)*global.ekran_size_act,room_height-random(100),global.lavar2,1)}
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
	    }


	// USTAW PODWODE
	if global.background_kind=19
	    {
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Index, 0, global.background_grassland )
    
	    __background_set( e__BG.Index, 6, global.background_underwater )
	    __background_set( e__BG.Visible, 6, 1 )
	    __background_set( e__BG.X, 6, 0 )
	    __background_set( e__BG.Y, 6, 5925+490 )
	    __background_set( e__BG.HTiled, 6, 1 )
	    __background_set( e__BG.VTiled, 6, 0 )
	    __background_set( e__BG.Alpha, 6, 0.85 )
	    __background_set( e__BG.YScale, 6, 2.4 )
    
	    __background_set( e__BG.Index, 3, global.background_underwater3 )
	    __background_set( e__BG.Visible, 3, 1 )
	    __background_set( e__BG.X, 3, 0 )
	    __background_set( e__BG.Y, 3, 5925 )
	    __background_set( e__BG.HTiled, 3, 1 )
	    __background_set( e__BG.VTiled, 3, 0 )
	    __background_set( e__BG.YScale, 3, 8 )
	    __background_set( e__BG.Alpha, 3, 0.85 )
    
    
	    __background_set( e__BG.Index, 7, global.background_underwater2 )
	    __background_set( e__BG.Visible, 7, 1 )
	    __background_set( e__BG.X, 7, 0 )
	    __background_set( e__BG.Y, 7, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.HTiled, 7, 1 )
	    __background_set( e__BG.VTiled, 7, 0 )
    
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )

    
	    global.background_kind=20
	    }
	if global.background_kind=20
	    {    
	    ruszanie_podwodna_woda-=0.5
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.Alpha, 7, 0.85+sin(ruszanie_podwodna_woda/50)/5 )
	    __background_set( e__BG.YScale, 7, 2 )
	    __background_set( e__BG.XScale, 7, 2 )

	    __background_set( e__BG.X, 7, ruszanie_podwodna_woda*2+sin(degtorad(ruszanie_podwodna_woda))*50 )
	    __background_set( e__BG.Y, 7, room_height-280*2 )
    
	    __background_set( e__BG.Y, 3, 5925-70 )
	    __background_set( e__BG.X, 3, ruszanie_podwodna_woda )
	    __background_set( e__BG.X, 6, ruszanie_podwodna_woda )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
    
	    __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
    
	    }
    
    
    


	// USTAW PUSTYNIE
	if global.background_kind=16
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Visible, 1, 1 )
	    __background_set( e__BG.Visible, 2, 1 )
	    __background_set( e__BG.Visible, 3, 1 )
	    __background_set( e__BG.Visible, 4, 1 )
	    __background_set( e__BG.Visible, 5, 1 )


	    __background_set( e__BG.Alpha, 1, 0.8 )
	    __background_set( e__BG.Alpha, 2, 0.9 )
	    __background_set( e__BG.Alpha, 3, 1 )
	    __background_set( e__BG.Alpha, 4, 0.45 )
	    __background_set( e__BG.Alpha, 5, 1 )
	    __background_set( e__BG.Foreground, 4, 1 )
    
	    global.background_kind=17
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    __background_set( e__BG.HTiled, 1, 1 )
	    __background_set( e__BG.VTiled, 1, 0 )
	    __background_set( e__BG.HTiled, 2, 1 )
	    __background_set( e__BG.VTiled, 2, 0 )
	    __background_set( e__BG.HTiled, 3, 1 )
	    __background_set( e__BG.VTiled, 3, 0 )
	    __background_set( e__BG.HTiled, 4, 1 )
	    __background_set( e__BG.VTiled, 4, 0 )
	    __background_set( e__BG.HTiled, 5, 1 )
	    __background_set( e__BG.VTiled, 5, 0 )
    
	    __background_set( e__BG.Index, 0, global.background_ship_space )
	    __background_set( e__BG.Index, 1, back_desert_paralax )
	    __background_set( e__BG.Index, 2, back_desert_paralax )
	    __background_set( e__BG.Index, 3, back_desert_paralax )
	    __background_set( e__BG.Index, 4, back_desert_paralax )
	    __background_set( e__BG.Index, 5, global.background_ship_space_2 )
	    }
	if global.background_kind=17
	    {
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 )+300*global.ekran_size_act )
	    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 )+350*global.ekran_size_act )
	    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 )+450*global.ekran_size_act )
    
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.X, 1, __view_get( e__VW.XView, 0 )/1.111 )//background_x[0]*1.8
	    __background_set( e__BG.X, 2, __view_get( e__VW.XView, 0 )/1.505 )//background_x[0]*1.5
	    __background_set( e__BG.X, 3, __view_get( e__VW.XView, 0 )/1.901 )//background_x[0]*1.1
    
	    // PUSTYNNY WIATR
	    __background_set( e__BG.X, 4, __background_get( e__BG.X, 4 ) - (1) )
	    __background_set( e__BG.Y, 4, room_height-250 )
	    __background_set( e__BG.YScale, 4, 2 )
    
	    // CHMURY
	    __background_set( e__BG.XScale, 5, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 5, 1*global.ekran_size_act )
	    __background_set( e__BG.X, 5, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.Y, 5, __view_get( e__VW.YView, 0 ) )
	    }
    
    
    
    
    
    
	      // USTAW chmury wysoko - POWOLNE - DUCHOSTAN
	if global.background_kind=80
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Visible, 1, 1 )
	    __background_set( e__BG.Visible, 2, 1 )
	    __background_set( e__BG.Visible, 3, 1 )
	    global.background_kind=81
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    __background_set( e__BG.HTiled, 1, 1 )
	    __background_set( e__BG.VTiled, 1, 0 )
	    __background_set( e__BG.HTiled, 2, 1 )
	    __background_set( e__BG.VTiled, 2, 0 )
	    __background_set( e__BG.HTiled, 3, 1 )
	    __background_set( e__BG.VTiled, 3, 0 )
	    __background_set( e__BG.Index, 0, global.background_ship_space_3 )
	    __background_set( e__BG.Index, 1, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 2, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 3, global.background_ship_space_2 )
	    }
	if global.background_kind=81
	    {
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
    
    
	    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 )+200*global.ekran_size_act )
	    __background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (0.2*5) )
	    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 )+300*global.ekran_size_act )
	    __background_set( e__BG.X, 2, __background_get( e__BG.X, 2 ) + (1*5) )
	    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 )+400*global.ekran_size_act )
	    __background_set( e__BG.X, 3, __background_get( e__BG.X, 3 ) + (2*5) )
	    __background_set( e__BG.Foreground, 3, 1 )
    
	    }
    
    
     
    
	   // USTAW chmury wysoko - POWOLNE
	if global.background_kind=30
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Visible, 1, 1 )
	    __background_set( e__BG.Visible, 2, 1 )
	    __background_set( e__BG.Visible, 3, 1 )
	    global.background_kind=31
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    __background_set( e__BG.HTiled, 1, 1 )
	    __background_set( e__BG.VTiled, 1, 0 )
	    __background_set( e__BG.HTiled, 2, 1 )
	    __background_set( e__BG.VTiled, 2, 0 )
	    __background_set( e__BG.HTiled, 3, 1 )
	    __background_set( e__BG.VTiled, 3, 0 )
	    __background_set( e__BG.Index, 0, global.background_ship_space )
	    __background_set( e__BG.Index, 1, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 2, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 3, global.background_ship_space_2 )
	    }
	if global.background_kind=31
	    {
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
    
    
	    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 )+200*global.ekran_size_act )
	    __background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (0.2) )
	    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 )+300*global.ekran_size_act )
	    __background_set( e__BG.X, 2, __background_get( e__BG.X, 2 ) + (1) )
	    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 )+400*global.ekran_size_act )
	    __background_set( e__BG.X, 3, __background_get( e__BG.X, 3 ) + (2) )
	    __background_set( e__BG.Foreground, 3, 1 )
    
	    }
    
    
	   // USTAW chmury wysoko DLA MEGA ODDALAJACEGO SIE SCROLLA
	if global.background_kind=140
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Visible, 1, 1 )
	    __background_set( e__BG.Visible, 2, 1 )
	    __background_set( e__BG.Visible, 3, 1 )
	    global.background_kind=141
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    __background_set( e__BG.HTiled, 1, 1 )
	    __background_set( e__BG.VTiled, 1, 0 )
	    __background_set( e__BG.HTiled, 2, 1 )
	    __background_set( e__BG.VTiled, 2, 0 )
	    __background_set( e__BG.HTiled, 3, 1 )
	    __background_set( e__BG.VTiled, 3, 0 )
	    __background_set( e__BG.Index, 0, global.background_ship_space )
	    __background_set( e__BG.Index, 1, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 2, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 3, global.background_ship_space_2 )
	    }
	if global.background_kind=141
	    {
	    __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 )+200*global.ekran_size_act )
	    __background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (1) )
	    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 )+300*global.ekran_size_act )
	    __background_set( e__BG.X, 2, __background_get( e__BG.X, 2 ) + (5) )
	    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 )+400*global.ekran_size_act )
	    __background_set( e__BG.X, 3, __background_get( e__BG.X, 3 ) + (10) )
	    __background_set( e__BG.Foreground, 3, 1 )
    
	    }
    
    
    
      
	// USTAW chmury wysoko
	if global.background_kind=14
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    __background_set( e__BG.Visible, 1, 1 )
	    __background_set( e__BG.Visible, 2, 1 )
	    __background_set( e__BG.Visible, 3, 1 )
	    global.background_kind=15
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    __background_set( e__BG.HTiled, 1, 1 )
	    __background_set( e__BG.VTiled, 1, 0 )
	    __background_set( e__BG.HTiled, 2, 1 )
	    __background_set( e__BG.VTiled, 2, 0 )
	    __background_set( e__BG.HTiled, 3, 1 )
	    __background_set( e__BG.VTiled, 3, 0 )
	    __background_set( e__BG.Index, 0, global.background_ship_space )
	    __background_set( e__BG.Index, 1, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 2, global.background_ship_space_2 )
	    __background_set( e__BG.Index, 3, global.background_ship_space_2 )
	    }
	if global.background_kind=15
	    {
	        __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 )+200 )
	    __background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (1) )
	    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 )+300 )
	    __background_set( e__BG.X, 2, __background_get( e__BG.X, 2 ) + (5) )
	    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 )+400*global.ekran_size_act )
	    __background_set( e__BG.X, 3, __background_get( e__BG.X, 3 ) + (10) )
	    __background_set( e__BG.Foreground, 3, 1 )
    
	    }
    
    
    
	// USTAW PALACE
	if global.background_kind=12
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=13
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    }
	if global.background_kind=13
	    {
	    __background_set( e__BG.Index, 0, global.background_palace )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )-__view_get( e__VW.XView, 0 )/10 )
	    }
    
    
    
	// USTAW GHOSTLAND GRASSLAND
	if global.background_kind=10
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=11
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    }
	if global.background_kind=11
	    {
	    __background_set( e__BG.Index, 0, global.background_evil_forest )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )-__view_get( e__VW.XView, 0 )/100 )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
	    }
    
    
	// USTAW GHOSTLAND
	if global.background_kind=8
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=9
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    }
	if global.background_kind=9
	    {
	    __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.Index, 0, global.background_ghosts )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )-__view_get( e__VW.XView, 0 )/10 )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	    }
    
    

	// USTAW POZIOMY GRASSLAND
	if global.background_kind=0
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=1
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 0 )
	    }
	if global.background_kind=1
	    {
	    __background_set( e__BG.Index, 0, global.background_grassland )
	    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )-__view_get( e__VW.XView, 0 )/10 )
	    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
    
	    __background_set( e__BG.XScale, 0, 1*global.ekran_size_act )
	    __background_set( e__BG.YScale, 0, 1*global.ekran_size_act )
    
	    }


	// USTAW UNDERGROUNDS NIERUCHOMY
	if global.background_kind=2
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=3
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 1 )
	    }
	if global.background_kind=3
	    {
	    __background_set( e__BG.Index, 0, global.background_undegrounds )
	    //background_x[0]=0
	    }
    
	// USTAW UNDERGROUNDS RUCHOMY WZGLEDEM GRACZA
	if global.background_kind=4
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=5
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 1 )
	    }
	if global.background_kind=5
	    {
	    __background_set( e__BG.Index, 0, global.background_undegrounds )
    
	    //background_x[0]+=-(obj_mario.x-background_obliczator1)/10
	    if background_obliczator1<>obj_mario.x {background_obliczator1=obj_mario.x}
	    }
    
    
	    // USTAW UNDERGROUNDS RUCHOMY WZGLEDEM SCROOLINGU
	if global.background_kind=6
	    {
	    for (i=0;i<8;i+=1) {__background_set( e__BG.Visible, i, 0 )}
	    __background_set( e__BG.Visible, 0, 1 )
	    global.background_kind=7
	    __background_set( e__BG.HTiled, 0, 1 )
	    __background_set( e__BG.VTiled, 0, 1 )
	    }
	if global.background_kind=7
	    {
	    __background_set( e__BG.Index, 0, global.background_castle )
	    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




}
