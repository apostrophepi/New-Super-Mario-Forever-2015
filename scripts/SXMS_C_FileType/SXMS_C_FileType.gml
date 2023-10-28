function SXMS_C_FileType(argument0) {
	//This script has been removed from the actual DLL.  It was easier to make in GM.
	//Below is the list of file types which can be used.  Note that you may add other filetypes to this list.
	//Ones that are "not tested" are said to work.  But I don't have these formats to do official testing myself.
	//Note, please DO NOT alter the FMUSIC and FSOUND number selections since the DLL needs to know these numbers internally
	//You may add others if you want in the OTHER section
	//FMUSIC
	if (string_pos(".mod",string_lower(argument0)) > 0) return 1          //Tested
	else if (string_pos(".s3m",string_lower(argument0)) > 0) return 2     //Tested
	else if (string_pos(".xm",string_lower(argument0)) > 0) return 3      //Tested
	else if (string_pos(".it",string_lower(argument0)) > 0) return 4      //Tested
	else if (string_pos(".mid",string_lower(argument0)) > 0) return 5     //Tested ~ works with FSOUND when UDMS
	else if (string_pos(".rmi",string_lower(argument0)) > 0) return 6
	else if (string_pos(".sgt",string_lower(argument0)) > 0) return 7
	else if (string_pos(".fsb",string_lower(argument0)) > 0) return 8
	//FSOUND
	else if (string_pos(".raw",string_lower(argument0)) > 0) return 9
	else if (string_pos(".wav",string_lower(argument0)) > 0) return 10    //Tested
	else if (string_pos(".mp2",string_lower(argument0)) > 0) return 11
	else if (string_pos(".mp3",string_lower(argument0)) > 0) return 12    //Tested
	else if (string_pos(".ogg",string_lower(argument0)) > 0) return 13    //Tested
	else if (string_pos(".wma",string_lower(argument0)) > 0) return 14    //Tested
	else if (string_pos(".asf",string_lower(argument0)) > 0) return 15    //Tested
	else if (string_pos(".oxm",string_lower(argument0)) > 0) return 16
	else if (string_pos("http://",string_lower(argument0)) > 0) return 17 //Tested
	else if (string_pos(".cda",string_lower(argument0)) > 0) return 18    //Tested
	//WAP (WinAMP Plug)
	else if (string_pos(".spc",string_lower(argument0)) > 0) return 19
	else if (string_pos(".nsf",string_lower(argument0)) > 0) return 20
	else if (string_pos(".psf2",string_lower(argument0)) > 0) return 23
	else if (string_pos(".minipsf2",string_lower(argument0)) > 0) return 24
	else if (string_pos(".minipsf",string_lower(argument0)) > 0) return 21
	else if (string_pos(".psf",string_lower(argument0)) > 0) return 22
	//OTHER
	//Below are other formats I included checking for.  The below ones are specific to the example and not general SXMS use.
	else if (string_pos(".avi",string_lower(argument0)) > 0) return 40 //Was relocated:  SXMS can open avi's, but only the audio side.  This lets me know when to use GM Internal for video play
	else if (string_pos(".mpg",string_lower(argument0)) > 0) return 41 //Was added:  For detecting when to use GM Internal for video play
	else if (string_pos(".wmv",string_lower(argument0)) > 0) return 42 //Was added:  For detecting when to use GM Internal for video play.  May depend on installed codecs on your machine for this format to work in GM Internal.
	else return 0;  //The type of format entered is either not accepted or doesn't have the correct extention.




}
