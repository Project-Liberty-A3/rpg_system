params ["_unit", "_target"];

private _points     = _target getVariable ["rps_stat_playerPoints", 0];
private _name       = _target getVariable ["rps_setting_sheet_name", (name _target)];
private _faction    = _target getVariable ["rps_setting_sheet_faction", "No faction."];
private _class      = _target getVariable ["rps_setting_sheet_class", "No class."];
private _background = _target getVariable ["rps_setting_sheet_background", "No history."];

if ("href" in _faction) then {_faction = "No faction."};
if ("href" in _class) then {_class = "No class."};
if ("href" in _background) then {_background = "No history."};

private _data = [_points, _name, _faction, _class, _background];

diag_log _data;

[_unit, "rps_sheet", _data] call rps_fnc_openDialog;