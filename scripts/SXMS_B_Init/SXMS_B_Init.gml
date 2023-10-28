function SXMS_B_Init() {
	global._SXMS_B_SetBufferSize=external_define("SXMS.dll","SXMS_B_SetBufferSize",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_B_SetPlayDriver=external_define("SXMS.dll","SXMS_B_SetPlayDriver",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_B_SetMaxHardChan=external_define("SXMS.dll","SXMS_B_SetMaxHardChan",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_B_SetMinHardChan=external_define("SXMS.dll","SXMS_B_SetMinHardChan",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_B_SetOutput=external_define("SXMS.dll","SXMS_B_SetOutput",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_B_FMODSetHandle=external_define("SXMS.dll","SXMS_B_FMODSetHandle",dll_cdecl,ty_real,1,ty_real);
	return 0;




}
