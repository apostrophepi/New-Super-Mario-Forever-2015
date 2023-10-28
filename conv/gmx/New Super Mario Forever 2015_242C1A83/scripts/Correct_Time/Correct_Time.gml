//Code By Mocha Man, edited by Shaltif
argument2 = argument0 - floor(argument0/60000) * 60000
if (argument2 < 10000) argument1 = "0"
else argument1 = ""
return string(floor(argument0/60000))+":"+argument1+string(floor(argument2/1000))
/*Original code by Shaltif
argument1 = floor(argument0/1000)
argument2 = 0
while (argument1 > 59)
{
    argument1 -= 60
    argument2 += 1
}
if (argument1 < 10) return string(argument2)+":0"+string(argument1)
else return string(argument2)+":"+string(argument1)*/

