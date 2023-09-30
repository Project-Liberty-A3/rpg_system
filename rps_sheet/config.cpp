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
			
            class openDialog_admech
            {
                file = "\rps_sheet\functions\fn_openDialog_admech.sqf";
            };

            class openDialog
            {
                file = "\rps_sheet\functions\fn_openDialog.sqf";
            };
			
            class sheet_admech_page1
            {
                file = "\rps_sheet\functions\fn_sheet_admech_page1.sqf";
            };

            class sheet_admech_page2
            {
                file = "\rps_sheet\functions\fn_sheet_admech_page2.sqf";
            };

            class sheet_admech_page3
            {
                file = "\rps_sheet\functions\fn_sheet_admech_page3.sqf";
            };

            class sheet_canShare
            {
                file = "\rps_sheet\functions\fn_sheet_canShare.sqf";
            };
			
            class sheet_page1
            {
                file = "\rps_sheet\functions\fn_sheet_page1.sqf";
            };

            class sheet_share_admech
            {
                file = "\rps_sheet\functions\fn_sheet_share_admech.sqf";
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
		class ACE_SelfActions 
		{
			class ACE_Equipment 
			{
				class rps_character_sheet
				{
					displayName = "Open Character Sheet";
					condition = "alive _player && {missionNamespace getVariable [""rps_setting_sheet_enable"",false] isEqualTo false}";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player] call rps_fnc_openDialog";
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
				};
			};
			class rps_admech_character_sheet
			{
				displayName = "Character Pages";
				condition = "alive _player && {missionNamespace getVariable [""rps_setting_sheet_enable"",false] isEqualTo true}";
				// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
				showDisabled = 0;
				icon = "rps_functions\ui\dice_ca.paa";
				class rps_admech_character_sheet_1
				{
					displayName = "Character Page 1";
					condition = "alive _player";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player, ""1""] spawn rps_fnc_openDialog_admech";
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
				};
				class rps_admech_character_sheet_2
				{
					displayName = "Character Page 2";
					condition = "alive _player";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player, ""2""] spawn rps_fnc_openDialog_admech";
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
				};
				class rps_admech_character_sheet_3
				{
					displayName = "Character Page 3";
					condition = "alive _player";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player, ""3""] spawn rps_fnc_openDialog_admech";
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
				};
			};
    	};
		class ACE_Actions
		{
			class ACE_MainActions
			{
				class rps_character_sheet_share
				{
					displayName = "Open Character Sheet";
					condition = "alive _player && call rps_fnc_sheet_canShare && {missionNamespace getVariable [""rps_setting_sheet_enable"",false] isEqualTo false}";
					exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player, _target] call rps_fnc_sheet_share";
					icon = "rps_functions\ui\dice_ca.paa";
				};
				class rps_admech_character_sheet
				{
					displayName = "Character Pages";
					condition = "alive _player && call rps_fnc_sheet_canShare && {missionNamespace getVariable [""rps_setting_sheet_enable"",false] isEqualTo true}";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
					class rps_admech_character_sheet_1
					{
						displayName = "Character Page 1";
						condition = "alive _player";
						// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
						statement = "[_player, _target, ""1""] call rps_fnc_sheet_share_admech";
						showDisabled = 0;
						icon = "rps_functions\ui\dice_ca.paa";
					};
					class rps_admech_character_sheet_2
					{
						displayName = "Character Page 2";
						condition = "alive _player";
						// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
						statement = "[_player, _target, ""2""] call rps_fnc_sheet_share_admech";
						showDisabled = 0;
						icon = "rps_functions\ui\dice_ca.paa";
					};
					class rps_admech_character_sheet_3
					{
						displayName = "Character Page 3";
						condition = "alive _player";
						// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
						statement = "[_player, _target, ""3""] call rps_fnc_sheet_share_admech";
						showDisabled = 0;
						icon = "rps_functions\ui\dice_ca.paa";
					};
				};
			};
		};
	};
};