class CfgPatches
{
	class rps_sounds
	{
		units[] =
		{
			""
		};
		weapons[] =
		{
			""
		};
		magazines[] = {""};
		requiredVersion = 0.1;
		requiredAddons[] = {"rps_common"};
		name = "RP System - Sounds";
		author = "Silence";
	};
};

class CfgSounds 
{
	sounds[] = {};
	class rps_sound_prayer 
	{
		name = "rps_sound_prayer";
		maxDistance = 50;
		sound[] = {"\rps_sounds\sounds\prayer.ogg", 1, 1.0, 1};
		titles[] = {0, ""};
	};
	class rps_sound_admech_music
	{
		name = "rps_sound_admech_music";
		maxDistance = 50;
		sound[] = {"\rps_sounds\sounds\admech_music.ogg", 2, 1.0, 1};
		titles[] = {0, ""};
	};
};