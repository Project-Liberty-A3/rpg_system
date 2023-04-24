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