argument9 = SXMS_C_FileType(argument0)
argument2 = 0
if (argument9 = 18)  //If file is a CDA
{
    argument2 = real(string_digits(argument0))  //Get the track number
    argument0 = string_char_at(string_lower(argument0),1)+string(":") //Get the drive letter
}
return external_call(global._SXMS_C_Play,argument0,argument9,argument1,argument2-1)

