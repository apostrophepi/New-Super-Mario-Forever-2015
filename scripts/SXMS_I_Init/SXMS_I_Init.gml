function SXMS_I_Init(argument0, argument1, argument2, argument3, argument4, argument5) {
	//Initialize Functions (13)
	global._SXMS_I_Init=external_define("SXMS.dll","SXMS_I_Init",dll_cdecl,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_I_Close=external_define("SXMS.dll","SXMS_I_Close",dll_cdecl,ty_real,0);
	/* These are initialized in the 'SXMS_B_Init' script.  These functions only work if called before SM3P_I_Init()
	SXMS_B_SetBufferSize
	SXMS_B_SetPlayDriver
	SXMS_B_SetMaxHardChan
	SXMS_B_SetMinHardChan
	SXMS_B_SetOutput
	*/
	global._SXMS_I_About=external_define("SXMS.dll","SXMS_I_About",dll_cdecl,ty_string,0);
	global._SXMS_I_GetNumHardChan=external_define("SXMS.dll","SXMS_I_GetNumHardChan",dll_cdecl,ty_real,0);
	global._SXMS_I_SpeakerSet=external_define("SXMS.dll","SXMS_I_SpeakerSet",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_I_NumDrivers=external_define("SXMS.dll","SXMS_I_NumDrivers",dll_cdecl,ty_real,0);
	global._SXMS_I_Driver=external_define("SXMS.dll","SXMS_I_Driver",dll_cdecl,ty_real,0);
	global._SXMS_I_DriverName=external_define("SXMS.dll","SXMS_I_DriverName",dll_cdecl,ty_string,1,ty_real);
	//Main Control Functions
	global._SXMS_C_Play=external_define("SXMS.dll","SXMS_C_Play",dll_cdecl,ty_real,4,ty_string,ty_real,ty_real,ty_real);
	global._SXMS_C_Stop=external_define("SXMS.dll","SXMS_C_Stop",dll_cdecl,ty_real,0);
	global._SXMS_C_Pause=external_define("SXMS.dll","SXMS_C_Pause",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Loop=external_define("SXMS.dll","SXMS_C_Loop",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Volume=external_define("SXMS.dll","SXMS_C_Volume",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Pan=external_define("SXMS.dll","SXMS_C_Pan",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Reserve=external_define("SXMS.dll","SXMS_C_Reserve",dll_cdecl,ty_real,2,ty_real,ty_real);
	//global._SXMS_C_FileType=external_define('SXMS.dll','SXMS_C_FileType',dll_cdecl,ty_real,1,ty_string); This is now an internal script
	global._SXMS_C_Current=external_define("SXMS.dll","SXMS_C_Current",dll_cdecl,ty_string,0);
	global._SXMS_C_IsPlaying=external_define("SXMS.dll","SXMS_C_IsPlaying",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Time=external_define("SXMS.dll","SXMS_C_Time",dll_cdecl,ty_real,0);
	global._SXMS_C_Channels=external_define("SXMS.dll","SXMS_C_Channels",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Frequency=external_define("SXMS.dll","SXMS_C_Frequency",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_C_Surround=external_define("SXMS.dll","SXMS_C_Surround",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_C_Mute=external_define("SXMS.dll","SXMS_C_Mute",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_C_PercentComplete=external_define("SXMS.dll","SXMS_C_PercentComplete",dll_cdecl,ty_real,1,ty_real);
	//Sound Effect System Functions
	global._SXMS_SFX_Load=external_define("SXMS.dll","SXMS_SFX_Load",dll_cdecl,ty_real,3,ty_real,ty_string,ty_real);
	global._SXMS_SFX_LoadBank=external_define("SXMS.dll","SXMS_SFX_LoadBank",dll_cdecl,ty_real,1,ty_string);
	global._SXMS_SFX_Play=external_define("SXMS.dll","SXMS_SFX_Play",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_PlayExt=external_define("SXMS.dll","SXMS_SFX_PlayExt",dll_cdecl,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_SFX_Pause=external_define("SXMS.dll","SXMS_SFX_Pause",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_Pan=external_define("SXMS.dll","SXMS_SFX_Pan",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_Volume=external_define("SXMS.dll","SXMS_SFX_Volume",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_VolumeAbsolute=external_define("SXMS.dll","SXMS_SFX_VolumeAbsolute",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_Frequency=external_define("SXMS.dll","SXMS_SFX_Frequency",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_Stop=external_define("SXMS.dll","SXMS_SFX_Stop",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_SFX_LoopMode=external_define("SXMS.dll","SXMS_SFX_LoopMode",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_Free=external_define("SXMS.dll","SXMS_SFX_Free",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_SFX_MasterSeperation=external_define("SXMS.dll","SXMS_SFX_MasterSeperation",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_SFX_MasterVolume=external_define("SXMS.dll","SXMS_SFX_MasterVolume",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_SFX_Name=external_define("SXMS.dll","SXMS_SFX_Name",dll_cdecl,ty_string,1,ty_real);
	global._SXMS_SFX_GetDefaults=external_define("SXMS.dll","SXMS_SFX_GetDefaults",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_SFX_GetLength=external_define("SXMS.dll","SXMS_SFX_GetLength",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_SFX_Position=external_define("SXMS.dll","SXMS_SFX_Position",dll_cdecl,ty_real,3,ty_real,ty_real,ty_real);
	//DirectX Advanced FX Functions
	global._SXMS_FX_Enable=external_define("SXMS.dll","SXMS_FX_Enable",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_FX_Chorus=external_define("SXMS.dll","SXMS_FX_Chorus",dll_cdecl,ty_real,8,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_Compressor=external_define("SXMS.dll","SXMS_FX_Compressor",dll_cdecl,ty_real,7,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_Distortion=external_define("SXMS.dll","SXMS_FX_Distortion",dll_cdecl,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_Echo=external_define("SXMS.dll","SXMS_FX_Echo",dll_cdecl,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_Flanger=external_define("SXMS.dll","SXMS_FX_Flanger",dll_cdecl,ty_real,8,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_Gargle=external_define("SXMS.dll","SXMS_FX_Gargle",dll_cdecl,ty_real,3,ty_real,ty_real,ty_real);
	global._SXMS_FX_I3DL2Reverb1=external_define("SXMS.dll","SXMS_FX_I3DL2Reverb1",dll_cdecl,ty_real,4,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_I3DL2REverb2=external_define("SXMS.dll","SXMS_FX_I3DL2Reverb2",dll_cdecl,ty_real,9,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_ParamEQ=external_define("SXMS.dll","SXMS_FX_ParamEQ",dll_cdecl,ty_real,4,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_WavesReverb=external_define("SXMS.dll","SXMS_FX_WavesReverb",dll_cdecl,ty_real,5,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_FX_Disable=external_define("SXMS.dll","SXMS_FX_Disable",dll_cdecl,ty_real,1,ty_real);
	//FMUSIC Specific Functions
	global._SXMS_M_Order=external_define("SXMS.dll","SXMS_M_Order",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_M_Speed=external_define("SXMS.dll","SXMS_M_Speed",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_M_InfoStatic=external_define("SXMS.dll","SXMS_M_InfoStatic",dll_cdecl,ty_real,2,ty_real,ty_string)
	global._SXMS_M_InfoDynamic=external_define("SXMS.dll","SXMS_M_InfoDynamic",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_M_MidiReverb=external_define("SXMS.dll","SXMS_M_MidiReverb",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_M_Name=external_define("SXMS.dll","SXMS_M_Name",dll_cdecl,ty_string,1,ty_string);
	global._SXMS_M_SampName=external_define("SXMS.dll","SXMS_M_SampName",dll_cdecl,ty_string,2,ty_real,ty_string);
	global._SXMS_M_Optimize=external_define("SXMS.dll","SXMS_M_Optimize",dll_cdecl,ty_real,2,ty_real,ty_real);
	//FSOUND Specific Functions
	global._SXMS_S_NumTags=external_define("SXMS.dll","SXMS_S_NumTags",dll_cdecl,ty_real,1,ty_string);
	global._SXMS_S_GetTag=external_define("SXMS.dll","SXMS_S_GetTag",dll_cdecl,ty_string,3,ty_real,ty_real,ty_string);
	global._SXMS_S_Seek=external_define("SXMS.dll","SXMS_S_Seek",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_S_Position=external_define("SXMS.dll","SXMS_S_Position",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_S_Length=external_define("SXMS.dll","SXMS_S_Length",dll_cdecl,ty_real,1,ty_real);
	//Net Audio Stream Functions
	global._SXMS_Net_Buffer=external_define("SXMS.dll","SXMS_Net_Buffer",dll_cdecl,ty_real,4,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_Net_Status=external_define("SXMS.dll","SXMS_Net_Status",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_Net_Server=external_define("SXMS.dll","SXMS_Net_Server",dll_cdecl,ty_string,0);
	global._SXMS_Net_Proxy=external_define("SXMS.dll","SXMS_Net_Proxy",dll_cdecl,ty_real,1,ty_string);
	//Compact Disk Functions
	global._SXMS_CD_SetDrive=external_define("SXMS.dll","SXMS_CD_SetDrive",dll_cdecl,ty_real,1,ty_string)
	global._SXMS_CD_Eject=external_define("SXMS.dll","SXMS_CD_Eject",dll_cdecl,ty_real,0);
	global._SXMS_CD_NumTracks=external_define("SXMS.dll","SXMS_CD_NumTracks",dll_cdecl,ty_real,0);
	global._SXMS_CD_Pause=external_define("SXMS.dll","SXMS_CD_Pause",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_CD_Track=external_define("SXMS.dll","SXMS_CD_Track",dll_cdecl,ty_real,0);
	global._SXMS_CD_TrackLength=external_define("SXMS.dll","SXMS_CD_TrackLength",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_CD_TrackTime=external_define("SXMS.dll","SXMS_CD_TrackTime",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_CD_Play=external_define("SXMS.dll","SXMS_CD_Play",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_CD_PlayMode=external_define("SXMS.dll","SXMS_CD_PlayMode",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_CD_Volume=external_define("SXMS.dll","SXMS_CD_Volume",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_CD_Stop=external_define("SXMS.dll","SXMS_CD_Stop",dll_cdecl,ty_real,0);
	//Recording Functions
	global._SXMS_R_Driver=external_define("SXMS.dll","SXMS_R_Driver",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_R_NumDrivers=external_define("SXMS.dll","SXMS_R_NumDrivers",dll_cdecl,ty_real,0);
	global._SXMS_R_DriverName=external_define("SXMS.dll","SXMS_R_DriverName",dll_cdecl,ty_string,1,ty_real);
	global._SXMS_R_Position=external_define("SXMS.dll","SXMS_R_Position",dll_cdecl,ty_real,0);
	global._SXMS_R_New=external_define("SXMS.dll","SXMS_R_New",dll_cdecl,ty_real,5,ty_real,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_R_Load=external_define("SXMS.dll","SXMS_R_Load",dll_cdecl,ty_real,2,ty_string,ty_real);
	global._SXMS_R_Free=external_define("SXMS.dll","SXMS_R_Free",dll_cdecl,ty_real,0);
	global._SXMS_R_Start=external_define("SXMS.dll","SXMS_R_Start",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_R_Stop=external_define("SXMS.dll","SXMS_R_Stop",dll_cdecl,ty_real,0);
	global._SXMS_R_PlayStop=external_define("SXMS.dll","SXMS_R_PlayStop",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_R_Play=external_define("SXMS.dll","SXMS_R_Play",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_R_Pause=external_define("SXMS.dll","SXMS_R_Pause",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_R_Defaults=external_define("SXMS.dll","SXMS_R_Defaults",dll_cdecl,ty_real,4,ty_real,ty_real,ty_real,ty_real);
	global._SXMS_R_Save=external_define("SXMS.dll","SXMS_R_Save",dll_cdecl,ty_real,1,ty_string);
	//Miscellanious Functions
	global._SXMS_V_Set=external_define("SXMS.dll","SXMS_V_Set",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_V_Info=external_define("SXMS.dll","SXMS_V_Info",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_V_Levels=external_define("SXMS.dll","SXMS_V_Levels",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_FMOD_CPU=external_define("SXMS.dll","SXMS_FMOD_CPU",dll_cdecl,ty_real,0);
	global._SXMS_FMOD_Version=external_define("SXMS.dll","SXMS_FMOD_Version",dll_cdecl,ty_real,0);
	global._SXMS_FMOD_GetHz=external_define("SXMS.dll","SXMS_FMOD_GetHz",dll_cdecl,ty_real,0);
	global._SXMS_FMOD_Pause=external_define("SXMS.dll","SXMS_FMOD_Pause",dll_cdecl,ty_real,1,ty_real);
	global._SXMS_FMOD_DSPState=external_define("SXMS.dll","SXMS_FMOD_DSPState",dll_cdecl,ty_real,2,ty_real,ty_real);
	global._SXMS_FMOD_DSPPriority=external_define("SXMS.dll","SXMS_FMOD_DSPPriority",dll_cdecl,ty_real,2,ty_real,ty_real);
	return external_call(global._SXMS_I_Init,argument0,argument1,argument2,argument3,argument4,argument5);




}
