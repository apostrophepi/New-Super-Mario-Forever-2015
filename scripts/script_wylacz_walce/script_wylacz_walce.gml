function script_wylacz_walce() {
	if wylacz_walce=0
	    {
	    wylacz_walce=1
	    if !instance_exists(o_WALEC_1) {global.algorytm_KULKA=0}
	    if instance_exists(o_WALEC_1) {global.algorytm_KULKA=1}
	    }



}
