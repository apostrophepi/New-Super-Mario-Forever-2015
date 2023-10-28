function Directory_Get(argument0) {
	//Finds out the last used directory
	argument0 = string_delete(argument0,string_length(argument0),1)
	if (string_count("|",argument0) != 0) argument0 = string_replace(argument0,"|","\\")
	while (string_count("\\",argument0) > 1) argument0 = string_replace(argument0,"\\","|")  //Changes \ to | in file until only the last one remains
	argument0 = string_delete(argument0,string_pos("\\",argument0),string_length(argument0) + 1 - string_pos("\\",argument0))  // Deletes from last \ to end of the string
	return string_replace_all(argument0,"|","\\")  //Returns all | back to \ for later use
	//Basically, it's doing the following.  Assume the last file opened was "c:\windows\my_documents\my_text.txt"
	//Now were going to take that and change all the \ to | except the last one.
	//So we now have "c:|windows|my_documents\my_text.txt"
	//Now we want to delete the last part.  Since we just want the directory
	//So we now get "c:|windows|my_documents"
	//Then we return the | back to \ so it can be used later
	//So our final return value is "c:\windows\my_documents"




}
