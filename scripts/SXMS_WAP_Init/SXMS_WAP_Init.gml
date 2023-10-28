function SXMS_WAP_Init() {
	global._SXMS_WAP_LoadPlugIn=external_define("SXMS.dll","SXMS_WAP_LoadPlugIn",dll_cdecl,ty_real,1,ty_string);
	global._SXMS_WAP_LoadPlugOut=external_define("SXMS.dll","SXMS_WAP_LoadPlugOut",dll_cdecl,ty_real,1,ty_string);
	global._SXMS_WAP_Stop=external_define("SXMS.dll","SXMS_WAP_Stop",dll_cdecl,ty_real,0);
	global._SXMS_WAP_Play=external_define("SXMS.dll","SXMS_WAP_Play",dll_cdecl,ty_real,1,ty_string);
	global._SXMS_WAP_IsPlaying=external_define("SXMS.dll","SXMS_WAP_IsPlaying",dll_cdecl,ty_real,0);
	global._SXMS_WAP_Pause=external_define("SXMS.dll","SXMS_WAP_Pause",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_WAP_RemovePlugIn=external_define("SXMS.dll","SXMS_WAP_RemovePlugIn",dll_cdecl,ty_real,0);
	global._SXMS_WAP_RemovePlugOut=external_define("SXMS.dll","SXMS_WAP_RemovePlugOut",dll_cdecl,ty_real,0);
	global._SXMS_WAP_GetLength=external_define("SXMS.dll","SXMS_WAP_GetLength",dll_cdecl,ty_real,0);
	global._SXMS_WAP_GetOutputTime=external_define("SXMS.dll","SXMS_WAP_GetOutputTime",dll_cdecl,ty_real,0);
	global._SXMS_WAP_SetOutputTime=external_define("SXMS.dll","SXMS_WAP_SetOutputTime",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_WAP_Volume=external_define("SXMS.dll","SXMS_WAP_Volume",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_WAP_SetPan=external_define("SXMS.dll","SXMS_WAP_SetPan",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_WAP_Init=external_define("SXMS.dll","SXMS_WAP_Init",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_WAP_Close=external_define("SXMS.dll","SXMS_WAP_Close",dll_cdecl,ty_real,0);
	global.SXMS_WD = string(working_directory)+"\\"
	return external_call(global._SXMS_WAP_Init,window_handle())




}
