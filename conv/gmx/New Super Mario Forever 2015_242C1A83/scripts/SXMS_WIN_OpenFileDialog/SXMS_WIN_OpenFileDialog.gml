argument0 = string_insert("|",argument0,string_length(argument0)+1)  //Fixes the filter
argument4 = external_call(global._SXMS_WIN_OpenFileDialog,argument0,argument1,argument2,argument3);
if (string_count("|",argument4) > 1) //If multiple files loaded
{
    argument5 = Directory_Get(argument4)  //Get the directory
    argument5 = string_insert("\\",argument5,string_length(argument5) + 1) //Fixes directory name for adding filename extentions on
    argument4 = string_delete(argument4,string_length(argument4),1) //Deletes the last | character left on the string...  since this is not used
    argument6 = string_count("|",argument4) //Counts the number of | in the string.  This ends up being the number of songs that was loaded
    argument7 = 0  //Sets the count to zero
    while (argument7 < argument6)  //While there are files to load into the SXMS ARRAY
    {
        argument4 = string_delete(argument4,1,string_pos("|",argument4))  //Deletes everything in front of the first | on the string
        argument8 = string_delete(argument4,string_pos("|",argument4),string_length(argument4) + 1) //Deletes everything after the next | on the string
        global.SXMS_ARRAY[argument7] = string_insert(argument5,argument8,0) //Adds the directroy in front of the filename and loads into the SXMS ARRAY
        argument7 += 1  //Advances the count
    }
    return argument6  //Returns the number of files loaded
}
else
{
    if (string_count("|",argument4) = 1)  //If 1 song was loaded
    {
        argument4 = string_delete(argument4,string_length(argument4),1)  //removes the | from the filename
        global.SXMS_ARRAY[0] = argument4  //Store in SXMS ARRAY
        return 1  //Return 1 file was loaded
    }
    else return 0 //No files were loaded
}

