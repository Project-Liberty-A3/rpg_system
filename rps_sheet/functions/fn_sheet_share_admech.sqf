params ["_unit", "_target", "_index"];

private _points         = _target getVariable ["rps_stat_playerPoints", 0];
private _name           = _target getVariable ["rps_setting_sheet_name", (name _target)];
private _strength       = _target getVariable ["rps_setting_sheet_admech_strength", 0];
private _intelligence   = _target getVariable ["rps_setting_sheet_admech_intelligence", 0];
private _stamina        = _target getVariable ["rps_setting_sheet_admech_stamina", 0];
private _charisma       = _target getVariable ["rps_setting_sheet_admech_charisma", 0];
private _class          = _target getVariable ["rps_setting_sheet_admech_class", "No class."];
private _background     = _target getVariable ["rps_setting_sheet_admech_background", "No history."];
private _equipment      = _target getVariable ["rps_setting_sheet_admech_equipment", "No equipment."];

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
        _data = [_points, _name, _equipment];
    };
};

[_unit, _index, _data] call rps_fnc_openDialog_admech;