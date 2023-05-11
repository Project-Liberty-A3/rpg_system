class CfgPatches
{
	class rps_sheet
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
		name = "RP System - Character Sheet";
		author = "Silence, Hierophant";
	};
};

#include "dialogs\defines.hpp"
#include "dialogs\dialogs.hpp"
#include "cfgUserActions.hpp"

class CfgFunctions 
{
	
    class rps
    {
		
        class functions 
        {
			
            class openDialog
            {
                file = "\rps_sheet\functions\fn_openDialog.sqf";
            };
			
            class sheet_canShare
            {
                file = "\rps_sheet\functions\fn_sheet_canShare.sqf";
            };
			
            class sheet_page1
            {
                file = "\rps_sheet\functions\fn_sheet_page1.sqf";
            };

            class sheet_share
            {
                file = "\rps_sheet\functions\fn_sheet_share.sqf";
            };
			
        };
		
    };
	
};

class cfgVehicles 
{
  	class Man;
  	class CAManBase : Man 
	{
		// class ACE_SelfActions 
		// {
		// 	class ACE_Equipment 
		// 	{
		// 		class rps_character_sheet
		// 		{
		// 			displayName = "Open Character Sheet";
		// 			condition = "alive _player";
		// 			// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
		// 			statement = "[_player] call rps_fnc_openDialog";
		// 			showDisabled = 0;
		// 			icon = "rps_functions\ui\dice_ca.paa";
		// 		};
		// 	};
    	// };
		class ACE_Actions
		{
			class ACE_MainActions
			{
				class rps_character_sheet_share
				{
					displayName = "Open Character Sheet";
					condition = "alive _player && call rps_fnc_sheet_canShare";
					exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player, _target] call rps_fnc_sheet_share";
					icon = "rps_functions\ui\dice_ca.paa";
				};
			};
		};
	};
};