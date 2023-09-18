[
    "rps_setting_sheet_enable", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Enable Admech Sheet", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    false,
    true, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		missionNamespace setVariable ["rps_setting_sheet_enable",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_strength", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Strength", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 5, 0, 0],
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_strength",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_intelligence", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Intelligence", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 5, 0, 0],
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_intelligence",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_stamina", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Stamina", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 5, 0, 0],
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_stamina",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_charisma", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Charisma", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 5, 0, 0],
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_charisma",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_class", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Class", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "Servant",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_class",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_background", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Background", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "A standard servant.",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_background",_value,true];
    }
] call CBA_fnc_addSetting;

[
    "rps_setting_sheet_admech_equipment", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Equipment", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["RP System (Character Sheet)", "WH40k"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "No Equipment",
    false, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
		ACE_player setVariable ["rps_setting_sheet_admech_equipment",_value,true];
    }
] call CBA_fnc_addSetting;