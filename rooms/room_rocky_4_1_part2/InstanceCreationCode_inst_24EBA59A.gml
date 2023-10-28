image_angle=0
ilosc_kolecorerow=4
i=0

bulpon[i]=instance_create(x-300,y-550,o_kolecorer)
bulpon[i].spadnie=1
bulpon[i].image_xscale=1.3
bulpon[i].image_yscale=1.3
bulpon[i].image_angle=0
bulpon_nagraj_x[i]=x-300
bulpon_nagraj_y[i]=y-550


bulpon[i]=instance_create(x+410,y-300,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1.3
bulpon[i].image_yscale=1.3
bulpon[i].image_angle=0
bulpon_nagraj_x[i]=x+410
bulpon_nagraj_y[i]=y-300


i+=1
bulpon[i]=instance_create(x+360,y-150,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1
bulpon[i].image_yscale=1
bulpon[i].image_angle=20
bulpon_nagraj_x[i]=x+360
bulpon_nagraj_y[i]=y-150

i+=1
bulpon[i]=instance_create(x+400,y+50,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1
bulpon[i].image_yscale=1
bulpon[i].image_angle=20
bulpon_nagraj_x[i]=x+400
bulpon_nagraj_y[i]=y+50



i+=1
bulpon[i]=instance_create(x-200,y-50,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1
bulpon[i].image_yscale=1
bulpon[i].image_angle=20
bulpon_nagraj_x[i]=x-200
bulpon_nagraj_y[i]=y-50