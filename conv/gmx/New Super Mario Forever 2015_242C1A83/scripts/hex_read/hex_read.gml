/* Czyta wybran� wartosc
byte_read(stream,position)
stream - ID otwartego do edycji pliku
position - pozycja

Zwraca wartosc danej wartosci
*/

file_bin_seek(argument0,argument1*4)
var num1,num2,num3,num4;
num1=file_bin_read_byte(argument0)
num2=file_bin_read_byte(argument0)*256
num3=file_bin_read_byte(argument0)*65536
num4=file_bin_read_byte(argument0)*16777216
return num1+num2+num3+num4

