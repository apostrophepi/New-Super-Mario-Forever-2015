argument0 = external_call(global._SXMS_WIN_GetDrop)  //Get the big string of dropped files
if (argument0 != "0")  //If files are found
{
    global.TEMP2 = argument0
    argument1 = string_count("|",argument0)  //Total files minus 1
    global.TEMP = argument1
    argument2 = 0  //Count (starting at zero)
    while (argument2 < argument1)  //While there are still files
    {
        global.SXMS_ARRAY[argument2] = string_copy(argument0,1,string_pos("|",argument0) - 1)  //Copy file onto SXMS ARRAY
        argument0 = string_delete(argument0,1,string_pos("|",argument0))  //Delete the last copied file from the big string
        argument2 += 1  //Advance the count
    }
    global.SXMS_ARRAY[argument2] = string_copy(argument0,1,string_length(argument0) + 1) //Get the last uncounted file
    return (argument1 + 1)  //Return number of files (Including the last uncounted one)
}
else return 0 //No files were found

