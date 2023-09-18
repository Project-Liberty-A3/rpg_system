ADDON = true;

[
    "rps_setting_dice_maxNumber", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Dice Roll Max Number", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "RP System", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "20",
    true, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		missionNamespace setVariable ["rps_setting_dice_maxNumber",(parseNumber _value),true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_incense_enable", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Enable Incense Heal", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "RP System (WH40k)", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false,
    true, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		missionNamespace setVariable ["rps_setting_incense_enable",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_incense_healGroup", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Incense Heal Group", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "RP System (WH40k)", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false,
    true, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		missionNamespace setVariable ["rps_setting_incense_healGroup",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_canShare", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Enable Sheet Sharing", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "RP System (Character Sheet)", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false,
    true, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		missionNamespace setVariable ["rps_setting_sheet_canShare",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_name", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Name", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "RP System (Character Sheet)", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "REDACTED",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_name",_value,true];
    }
] call CBA_fnc_addSetting;

#include "settings_sheet_wh40k.sqf"

[
    "rps_setting_sheet_faction", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Faction", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "Modern"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "Lone Operators",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_faction",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_class", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Class", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "Modern"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "Operator",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_class",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_background", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Background", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "Modern"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "REDACTED",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_background",_value,true];
    }
] call CBA_fnc_addSetting;