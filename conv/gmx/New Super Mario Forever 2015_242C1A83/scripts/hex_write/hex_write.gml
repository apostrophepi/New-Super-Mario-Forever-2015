/* Zapisuje wybran� wartosc, maxymalnie jako 4.294.967.296 pod odpowiednia pozycja

hex_write(stream,position,variable)
stream - ID otwartego pliku
position - pozycja w pliku
variable - wartosc ktora zapisujesz
*/

var num1,num2,num3,num4;

num1=argument2 mod 256
num2=floor(argument2/256) mod 256
num3=floor(argument2/65536) mod 256
num4=floor(argument2/16777216) mod 256
file_bin_seek(argument0,argument1*4)
file_bin_write_byte(argument0,num1)
file_bin_write_byte(argument0,num2)
file_bin_write_byte(argument0,num3)
file_bin_write_byte(argument0,num4)
