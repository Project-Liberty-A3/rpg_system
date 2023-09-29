params ["_unit", "_target", "_index"];

private _points         = _target getVariable ["rps_stat_playerPoints", 0];
private _name           = _target getVariable ["rps_setting_sheet_name", (name _target)];
private _strength       = _target getVariable ["rps_setting_sheet_admech_strength", (round (random 5))];
private _intelligence   = _target getVariable ["rps_setting_sheet_admech_intelligence", (round (random 5))];
private _stamina        = _target getVariable ["rps_setting_sheet_admech_stamina", (round (random 5))];
private _charisma       = _target getVariable ["rps_setting_sheet_admech_charisma", (round (random 5))];
private _class          = _target getVariable ["rps_setting_sheet_admech_class", (getText (configFile >> "CfgVehicles" >> typeOf _target >> "displayName"))];
private _background     = _target getVariable ["rps_setting_sheet_admech_background", "No history."];
private _weapon         = _target getVariable ["rps_setting_sheet_admech_weapon", (getText (configFile >> "CfgWeapons" >> primaryWeapon _target >> "displayName"))];
private _armor          = _target getVariable ["rps_setting_sheet_admech_armor", (getText (configFile >> "CfgWeapons" >> vest _target >> "displayName"))];
private _relic          = _target getVariable ["rps_setting_sheet_admech_relic", "No relic."];
private _seals          = _target getVariable ["rps_setting_sheet_admech_seals", (round (random 100))];

if ("href" in _class) then {_class = "No class."};
if ("href" in _background) then {_background = "No background."};
if ("href" in _equipment) then {_equipment = "No equipment."};

private _data = [];

switch (_index) do 
{
    case "1": 
    {
        _data = [_points, _name, _strength, _intelligence, _stamina, _charisma];
    };
    case "2": 
    {
        _data = [_points, _name, _class, _background];
    };
    case "3": 
    {
        _data = [_points, _name, _weapon, _armor, _relic, _seals];
    };
};

[_unit, _index, _data] call rps_fnc_openDialog_admech;