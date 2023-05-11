class CfgUserActions
{
	class rps_character_sheet_open
	{// This class name is used for internal representation and also for the inputAction command.
		displayName = "Open Character Sheet";
		tooltip = "";
		onActivate = "[player] call rps_fnc_openDialog";		// _this is always true.
		onDeactivate = "";		// _this is always false.
		onAnalog = "";	// _this is the scalar analog value.
		analogChangeThreshold = 0.1; // Minimum change required to trigger the onAnalog EH (default: 0.01).
	};
};

class UserActionGroups
{
	class rps_settings
	{
		name = "RP System"; // Display name of your category.
		isAddon = 1;
		group[] =
		{
			"rps_character_sheet_open"
		};
	};
};