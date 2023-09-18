class CfgPatches
{
	class rps_functions
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
		name = "RP System - Functions";
		author = "Silence, Hierophant";
	};
};

class CfgFunctions 
{
	
    class rps
    {
		
        class functions 
        {
			
            class canShowIncense
            {
                file = "\rps_functions\functions\fn_canShowIncense.sqf";
            };

            class chat_init
            {
                file = "\rps_functions\functions\fn_chat_init.sqf";
            };

            class chat_text_gm
            {
                file = "\rps_functions\functions\fn_chat_text_gm.sqf";
            };

            class chat_text 
            {
                file = "\rps_functions\functions\fn_chat_text.sqf";
            };

            class chat_voice
            {
                file = "\rps_functions\functions\fn_chat_voice.sqf";
            };

            class customRadioChannel
            {
                file = "\rps_functions\functions\fn_customRadioChannel.sqf";
            };

            class dice_roll 
            {
                file = "\rps_functions\functions\fn_dice_roll.sqf";
            };
			
            class hasACE 
            {
                file = "\rps_functions\functions\fn_hasACE.sqf";
            };

            class incense_heal
            {
                file = "\rps_functions\functions\fn_incense_heal.sqf";
            };

            class incense 
            {
                file = "\rps_functions\functions\fn_incense.sqf";
            };
			
            class init 
            {
                file = "\rps_functions\functions\fn_init.sqf";
            };

            class question_add 
            {
                file = "\rps_functions\functions\fn_question_add.sqf";
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
				class rps_roll_dice 
				{
					displayName = "Roll Dice";
					condition = "alive _player";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player, 0] call rps_fnc_dice_roll";
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
				};
				class rps_consume_incense
				{
					displayName = "Use Incense";
					condition = """rps_item_incense"" in items _player && {call rps_fnc_canShowIncense}";
					// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
					statement = "[_player] spawn rps_fnc_incense";
					showDisabled = 0;
					icon = "rps_functions\ui\dice_ca.paa";
				};
				// class SSV_Aux_RPChat
				// {
				// 	displayName = "RP Chat";
				// 	condition = "alive _player";
				// 	// exceptions[] = {"isNotSwimming", "isNotInside", "isNotSitting"};
				// 	statement = "[_player, ""Test""] call SSV_Aux_fnc_chat_text";
				// 	showDisabled = 0;
				// 	icon = "SSV_Aux_Functions\ui\chat_ca.paa";
				// };
			};
    	};
		class ACE_Actions
		{
			class rps_questions
			{
				condition = "alive _player";
				displayName = "Questioning";
				distance = 3;
				exceptions[] = {"isNotInside","isNotSitting"};
				icon = "\a3\ui_f\data\IGUI\Cfg\Actions\periscopedepth_on_ca.paa";
				selection = "spine2";
			};
		};
	};
};

class Extended_InitPost_EventHandlers 
{
    class CAManBase 
	{
		class rps_chat_init
		{
			init = "call rps_fnc_chat_init";
		};
		class rps_init
		{
			init = "call rps_fnc_init";
		};
    };
};