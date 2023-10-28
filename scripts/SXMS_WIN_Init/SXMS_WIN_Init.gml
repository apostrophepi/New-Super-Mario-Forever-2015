function SXMS_WIN_Init() {
	//Initialize WIN functions
	global._SXMS_WIN_ShowWindow=external_define("SXMS.dll","SXMS_WIN_ShowWindow",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_WIN_SetWindowPos=external_define("SXMS.dll","SXMS_WIN_SetWindowPos",dll_cdecl,ty_real,7,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_WIN_MessageBox=external_define("SXMS.dll","SXMS_WIN_MessageBox",dll_cdecl,ty_real,4,ty_string,ty_string,ty_real,ty_real);
	global._SXMS_WIN_OpenFileDialog=external_define("SXMS.dll","SXMS_WIN_OpenFileDialog",dll_cdecl,ty_string,4,ty_string,ty_string,ty_real,ty_string);
	global._SXMS_WIN_GetActiveWindow=external_define("SXMS.dll","SXMS_WIN_GetActiveWindow",dll_cdecl,ty_real,0);
	global._SXMS_WIN_Init=external_define("SXMS.dll","SXMS_WIN_Init",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_WIN_SetDragAccept=external_define("SXMS.dll","SXMS_WIN_SetDragAccept",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_WIN_GetDrop=external_define("SXMS.dll","SXMS_WIN_GetDrop",dll_cdecl,ty_string,0);
	global._SXMS_WIN_ClearDrop=external_define("SXMS.dll","SXMS_WIN_ClearDrop",dll_cdecl,ty_real,0);
	global._SXMS_WIN_GetCursorPos=external_define("SXMS.dll","SXMS_WIN_GetCursorPos",dll_cdecl,ty_real,1,ty_real);
	return external_call(global._SXMS_WIN_Init,window_handle());




}
