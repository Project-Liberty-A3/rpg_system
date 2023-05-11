class CfgPatches
{
	class rps_common
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
		requiredAddons[] = {"A3_Data_F_AoW_Loadorder"};
		name = "RP System - Common";
		author = "Silence, Hierophant";
	};
};

class cfgVehicleClasses
{
	class rps_props_wh40k
	{
		displayName = "RPS Props (WH40k)";
	};
};

class CfgEditorCategories
{
	class rps_props
	{
		displayName = "RP System"; // Name visible in the list
	};
};

class cfgVehicles
{
	class Thing;
	class rps_incense_base : Thing
	{
		destrType = "DestructNo";
		editorCategory = "rps_props";
		vehicleClass="rps_props_wh40k";
	};

	class rps_incense : rps_incense_base
	{
		scope = 1;
		scopeCurator = 1;
		model = "rps_props\incense\incense";
		displayName = "Incense";
	};
};