{
if tworz=0
{tworz=1;repeat(5) {instance_create(__view_get( e__VW.XView, 0 )+random(800),__view_get( e__VW.YView, 0 )+random(600),o_small_cloud)}}

if random(10000)>9890 {instance_create(__view_get( e__VW.XView, 0 )+890,__view_get( e__VW.YView, 0 )+random(1000)-random(300),o_small_cloud)}

}

