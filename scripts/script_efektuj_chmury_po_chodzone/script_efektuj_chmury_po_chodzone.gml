function script_efektuj_chmury_po_chodzone() {
	if place_meeting(x,y+20,o_mini_chmurka_do_chodzenia_po_niej) && sekwencja=0
	    {
	    chmurnix=instance_place(x,y+20,o_mini_chmurka_do_chodzenia_po_niej)
	    if chmurnix_id<>chmurnix {chmurnix_id=chmurnix;  chmurnix.efektuj=10}
	    }
	if sekwencja<>0 {chmurnix_id=0}



	if place_meeting(x,y+20,o_nabrzmiala_chmura_duza) && sekwencja=0
	    {
	    chmurnix=instance_place(x,y+20,o_nabrzmiala_chmura_duza)
	    if chmurnix_id<>chmurnix {chmurnix_id=chmurnix;  chmurnix.efektuj=10}
	    }



}
