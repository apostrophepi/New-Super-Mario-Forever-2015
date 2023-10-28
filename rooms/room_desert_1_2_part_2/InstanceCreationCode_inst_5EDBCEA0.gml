image_angle=0
ilosc_kolecorerow=3
i=0

bulpon[i]=instance_create(x+400,y-100,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1.3
bulpon[i].image_yscale=1.3
bulpon[i].image_angle=0
bulpon_nagraj_x[i]=x+400
bulpon_nagraj_y[i]=y-100


i+=1
bulpon[i]=instance_create(x+150,y-300,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1
bulpon[i].image_yscale=1
bulpon[i].image_angle=20
bulpon_nagraj_x[i]=x+150
bulpon_nagraj_y[i]=y-300

i+=1
bulpon[i]=instance_create(x-250,y-200,o_kolecorer)
bulpon[i].spadnie=0
bulpon[i].image_xscale=1
bulpon[i].image_yscale=1
bulpon[i].image_angle=20
bulpon_nagraj_x[i]=x-250
bulpon_nagraj_y[i]=y-200