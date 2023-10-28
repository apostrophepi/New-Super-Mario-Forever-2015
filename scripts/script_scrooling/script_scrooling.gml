function script_scrooling() {
	if global.pauza=49 {global.scroll_speed_oddalator=global.scroll_speed_oddalator/1.2}


	{

	if global.scroll_kind=100000 {
	__view_set( e__VW.XView, 0, o_SHIP_ANIM_SEQUENCE_PUT_TO_LEVEL.scrooluj_x )
	__view_set( e__VW.YView, 0, room_height-global.ekran_size_act*600 )

	if wisi<>1000 {global.ekran_size_act=1+o_SHIP_ANIM_SEQUENCE_PUT_TO_LEVEL.scrooluj_x_adder/50}

	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__background_set( e__BG.XScale, 0, 1+(global.scroll_speed_oddalator)/80 )
	__background_set( e__BG.YScale, 0, 1+(global.scroll_speed_oddalator)/80 )
	__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	}


	if global.scroll_kind=2000
	    {
	    global.ekran_size_act=1
	    __view_set( e__VW.XView, 0, o_scrooling_ustaw_speed_i_kierunek.x-400 )
	    __view_set( e__VW.YView, 0, o_scrooling_ustaw_speed_i_kierunek.y-300 )
	    if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	    if __view_get( e__VW.XView, 0 )>room_width-800 {__view_set( e__VW.XView, 0, room_width-800 )}
    
	    if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}
	    if __view_get( e__VW.YView, 0 )>room_height-600 {__view_set( e__VW.YView, 0, room_height-600 )}
	    }

    
    
	      // SCROLLING DLA TITLE SCREENA
	if global.scroll_kind=9999 || global.scroll_kind=9000 || global.scroll_kind=9001 {


	if global.scroll_kind=9001
	    {
	    if global.ekran_size_act+0.05<1+abs(obj_mario.szybkosc)/30 {global.ekran_size_act+=0.005}
	    if global.ekran_size_act-0.05>1+abs(obj_mario.szybkosc)/30 {global.ekran_size_act-=0.0025}
	    }
   
	if global.scroll_kind=9000
	    {
	    global.ekran_size_act=1+abs(global.scroll_speed_oddalator/500)
	    if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	    if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}
	    }
     
	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=o_scrooling_ustaw_speed_i_kierunek_TITLE_SCREEN.y
	    }
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, o_scrooling_ustaw_speed_i_kierunek_TITLE_SCREEN.x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((o_scrooling_ustaw_speed_i_kierunek_TITLE_SCREEN.y-200)-poziomy_scrolling_adder)/1}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act) )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}


	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};







	    // SCROOLING BOWSERA
    
	if global.scroll_kind=3000
	    {
    
	    if instance_exists(o_boss_bowser) {
	    global.ekran_size_act=min(2,point_distance(o_boss_bowser.x,o_boss_bowser.y,obj_mario.x,obj_mario.y)/1000+0.85)}

	        if instance_exists(o_bowser_die) {
	    global.ekran_size_act=min(2,point_distance(o_bowser_die.x,o_bowser_die.y,obj_mario.x,obj_mario.y)/1000+0.85)}
    
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )


	if global.earth_quake>0
	    {
	    trzesator_x=random(global.earth_quake)-random(global.earth_quake); 
	    trzesator_y=random(global.earth_quake)-random(global.earth_quake);
	    global.earth_quake=global.earth_quake/1.1
	    }
    


	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )
	__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2+trzesator_y )

	//view_yview[0]=


	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0+trzesator_x )}
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0+trzesator_y )}

	if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )>1200 {__view_set( e__VW.YView, 0, 1200-__view_get( e__VW.HView, 0 )+trzesator_x )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>1600 {__view_set( e__VW.XView, 0, 1600-__view_get( e__VW.WView, 0 )+trzesator_y )}

	}

    
	// scrolling standardowy - aktywowany w Y, ale poprawiony - BARDZIEJ ODDALONY - TRZYMA SIE MAGA DOLU
	if global.scroll_kind=1103 {

	if scroller_towerowy_init=0 {scroller_towerowy_init=1;__view_set( e__VW.YView, 0, 0 );}

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )
	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}


	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=0
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )


	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	aktywuj_poziomy_scrolling=10000


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-100)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-200)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act)+300*(global.ekran_size_act-0.8)+scroller_towerowy,room_height-600*global.ekran_size_act) )
	if global.pauza=0 {if y>1000 {if scroller_towerowy<200 {scroller_towerowy+=2}}}

	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}





	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};




	        // scrolling standardowy - aktywowany w Y, ale poprawiony - TROCHE DO DOLU
	if global.scroll_kind=1110 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act)+50 )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}


	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};













	        // scrolling standardowy - aktywowany w Y, ale poprawiony - BARDZIEJ ODDALONY
	if global.scroll_kind=1102 {

	if scroller_towerowy_init=0 {scroller_towerowy_init=1;__view_set( e__VW.YView, 0, 0 );}

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )
	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}


	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=0
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )


	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	aktywuj_poziomy_scrolling=10000


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act)+300*(global.ekran_size_act-0.8)+scroller_towerowy,room_height-600*global.ekran_size_act) )
	if global.pauza=0 {if y>1000 {if scroller_towerowy<200 {scroller_towerowy+=2}}}

	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}







	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};




	 // scrolling standardowy - SZYBKO ODDALANY I MOCNIEJ ODDALONY NA POCZATKU
	if global.scroll_kind=1111 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )


	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act) )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.4+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.4+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}







	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};




	    // scrolling standardowy - ODDALONY
	if global.scroll_kind=1500 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1.2+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act) )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}







	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};




	    // scrolling standardowy - aktywowany w Y, ale poprawiony - BARDZIEJ ODDALONY
	if global.scroll_kind=1101 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 && room_get_name(room)<>"o_start_animation_game_room" {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x+scrool_animation_x+scrool_animation_fun )

	if obj_mario.y<=room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act)+scrool_animation_y )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}

	if sekwencja=0 {
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*6)+1 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}

	if sekwencja<>0 {
	if global.scroll_speed_oddalator<40 {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>40 {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}}


	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};


	// scrolling standardowy - aktywowany w Y, ale poprawiony
	if global.scroll_kind=1100 {

	// PRZYBLIZ SCROOLING

	if place_meeting(x,y,o_wielki_kwadrat_przyblizajacy_na_bonusy_na_przyklad_scroll_1100_size2x2)
	    {
	    if przybliz_scrool_1100<1 {przybliz_scrool_1100+=0.05}
	    }
	if !place_meeting(x,y,o_wielki_kwadrat_przyblizajacy_na_bonusy_na_przyklad_scroll_1100_size2x2)
	    {
	    przybliz_scrool_1100=przybliz_scrool_1100/1.03
	    }   
    
	// ODDALAJ SCROLLING OBIEKTAMI
	if place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100_podwyzsza_scrool_do_gory) && scroll_podwyzsz_1100<120
	    {
	    scroll_podwyzsz_1100+=3
	    }
	if !place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100_podwyzsza_scrool_do_gory) && scroll_podwyzsz_1100>0
	    {
	    scroll_podwyzsz_1100=scroll_podwyzsz_1100/1.03
	    }
    
    
	    if instance_number(o_duel_ball_life)=0 {
	if place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100_mniej_oddala)
	    {
	    if scrool_sterowalny_obiektami<0.12 {scrool_sterowalny_obiektami+=0.005}
	    }
    
    
    
	if place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100)
	    {
	    if scrool_sterowalny_obiektami<0.2 {scrool_sterowalny_obiektami+=0.005}
	    }
	if !place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100) && !place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100_mniej_oddala)
	    {
	    if scrool_sterowalny_obiektami>0 {scrool_sterowalny_obiektami-=0.005}
	    }}

    
    
    
    
	        if instance_number(o_duel_ball_life)>0 {
	if place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100_mniej_oddala)
	    {
	    if scrool_sterowalny_obiektami<0.12 {scrool_sterowalny_obiektami+=0.005}
	    }
    
    
    
	if place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100)
	    {
	    if scrool_sterowalny_obiektami<0.7 {scrool_sterowalny_obiektami+=0.05}
	    }
	if !place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100) && !place_meeting(x,y,o_wielki_kwadrat_oddalajacy_scroolin_1100_mniej_oddala)
	    {
	    if scrool_sterowalny_obiektami>0 {scrool_sterowalny_obiektami-=0.005}
	    }}

    
    
    
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)+scrool_sterowalny_obiektami-przybliz_scrool_1100/3}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-550-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act)-scroll_podwyzsz_1100-przybliz_scrool_1100*100 )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}


	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}


	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}

	};







	// PZIOMY AKTYWOWANY - NIE WYCHODZACY PO ZA y<0
	if global.scroll_kind=1002 {



	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-650-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-650-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act) )
	if __view_get( e__VW.YView, 0 )<0 {__view_set( e__VW.YView, 0, 0 )}


	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}

	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}
    
	// Obsluga Backgroundow

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )
	scrool2=0
	}
	__background_set( e__BG.XScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.YScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )


	};






	// POZIOMY - pionowy - CIAGLE AKTYWOWANY
	if global.scroll_kind=1005 {



	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}


	scrooling_ship+=2

	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )


	aktywuj_poziomy_scrolling=500
	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act)+sin(degtorad(scrooling_ship))*20 )

	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}

	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}
    
	// Obsluga Backgroundow

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )
	scrool2=0
	}
	__background_set( e__BG.XScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.YScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )


	};


	// POZIOMY AKTYWOWANY PIONOWY
	if global.scroll_kind=1001 {



	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}



	if wartosc_aktywowanego_poziomego=0
	    {
	    wartosc_aktywowanego_poziomego=1
	    poziomy_scrolling_adder=obj_mario.y
	    }
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}


	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )

	if obj_mario.y<=room_height-650-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling<300 {aktywuj_poziomy_scrolling+=5}
	if obj_mario.y>room_height-650-global.szybciej_aktywuj_scrool_y && aktywuj_poziomy_scrolling>0 {aktywuj_poziomy_scrolling-=1}


	if aktywuj_poziomy_scrolling>100{
	poziomy_scrolling_adder+=((obj_mario.y-200)-poziomy_scrolling_adder)/10}
	if aktywuj_poziomy_scrolling<100{
	poziomy_scrolling_adder+=((room_height-300)-poziomy_scrolling_adder)/100}

	__view_set( e__VW.YView, 0, min(poziomy_scrolling_adder,room_height-600)+(600-600*global.ekran_size_act) )



	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator+=0.2+global.scroll_speed_oddalator/100}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator-=0.2+global.scroll_speed_oddalator/100}

	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}
    
	// Obsluga Backgroundow

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )
	scrool2=0
	}
	__background_set( e__BG.XScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.YScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )


	};




	// scrolling standardowy - jednoliniowy - NIE SCALOWANY BACKROGUND!!!!!
	if global.scroll_kind=1000 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	if scrool1<>obj_mario.x {scrool2=scrool1-obj_mario.x;scrool1=obj_mario.x}

	if obj_mario.x>__view_get( e__VW.WView, 0 )/2 && obj_mario.x<room_width-__view_get( e__VW.WView, 0 )/2
	{
	__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (scrool2/2) )

	scrool2=0
	}
	//
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )
	__view_set( e__VW.YView, 0, room_height-600-abs(global.scroll_speed_oddalator)*7 )//-view_hview[0]/2+trzesator_y

	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator+=0.2}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator-=0.2}

	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )>room_width {__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) )}
	};

	// scrolling standardowy - jednoliniowy
	if global.scroll_kind=0 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu


	//
	if wisi<>1000 {global.ekran_size_act=1+abs(global.scroll_speed_oddalator/100)}
	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )
	__view_set( e__VW.YView, 0, room_height-600-abs(global.scroll_speed_oddalator)*7 )//-view_hview[0]/2+trzesator_y
	__background_set( e__BG.XScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.YScale, 0, 1+(global.scroll_speed_oddalator)/100 )
	__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
	if global.scroll_speed_oddalator<abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator+=0.1}
	if global.scroll_speed_oddalator>abs(obj_mario.szybkosc*2) {global.scroll_speed_oddalator-=0.1}

	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+800>room_width {__view_set( e__VW.XView, 0, room_width-800 )}
	};



	// SCROLLING STOJACY
	if global.scroll_kind=1 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	__view_set( e__VW.WView, 0, 1 );
	__view_set( e__VW.HView, 0, 1 );
	global.ekran_size_act=1
	global.ekran_size_max=1

	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800 )
	__view_set( e__VW.HView, 0, 600 )

	__view_set( e__VW.XView, 0, global.skrot_static_scrooling_x )
	__view_set( e__VW.YView, 0, global.skrot_static_scrooling_y )
	__background_set( e__BG.XScale, 0, 1 )
	__background_set( e__BG.YScale, 0, 1 )

	// POPRAW POZYCJE, ZEBY NIE WYCHODZIC PO ZA ETAP
	if __view_get( e__VW.XView, 0 )<0 {__view_set( e__VW.XView, 0, 0 )}
	if __view_get( e__VW.XView, 0 )+800>room_width {__view_set( e__VW.XView, 0, room_width-800 )}
	};




	// scrolling standardowy
	// SCROLL - GRACZ JEST NA SRODKU
	if global.scroll_kind=5 {

	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )
	__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2+trzesator_y )
	};


	// SHIP - bujanie statku, dla latających maszyn, wodnych
	if global.scroll_kind=10 {

	scrooling_ship+=2
	// aktualne powiekszenie ekranu
	//global.ekran_size_act=1 // aktualna wielkosc ekranu
	//global.ekran_size_max=1 // maksymalna wielkosc widzialnego ekranu - ustaw to zanim zaczniesz bawic sie wielkoscia ekranu, zeby przeciwnicy byli aktywowani wczesnie a nie dopiero jak beda na srodku ekranu

	// ustaw wielkosc ekranu
	__view_set( e__VW.WView, 0, 800*global.ekran_size_act )
	__view_set( e__VW.HView, 0, 600*global.ekran_size_act )

	__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2+trzesator_x )
	__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2+trzesator_y+sin(degtorad(scrooling_ship))*20 )





	};










	// oblicz odleglosc od srodka ekranu do kranca (ale kranca maksymalnego nie tego co jest widoczny na ekranie)
	// Maksymalny kraniec to ten ktory moze wyswietlic powyzszy algorytm ekranu i nie moze byc wiekszy od niego, moze byc tylko mniejszy
	global.ekran_srodek_x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
	global.ekran_srodek_y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2



	global.odleglosc_ekranu=sqrt((__view_get( e__VW.WView, 0 )/2)*(__view_get( e__VW.WView, 0 )/2)+(__view_get( e__VW.HView, 0 )/2)*(__view_get( e__VW.HView, 0 )/2))


	// SCROOL LIMITER OBJECT

	if instance_number(o_SCROLL_LIMITER)>0 {if __view_get( e__VW.YView, 0 )>o_SCROLL_LIMITER.limit {__view_set( e__VW.YView, 0, o_SCROLL_LIMITER.limit )}}
	// EARTHQUAKE

	if global.earth_quake>0
	    {
	    trzesator_x=random(global.earth_quake/5)-random(global.earth_quake/5); 
	    trzesator_y=random(global.earth_quake/5)-random(global.earth_quake/5);
	    global.earth_quake-=1
	    }
	}







}
