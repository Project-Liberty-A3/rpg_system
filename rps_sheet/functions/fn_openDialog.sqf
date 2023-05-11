params ["_unit", ["_dialog", "rps_sheet"], ["_data", []]];

// createDialog _dialog;

private _display = findDisplay 46 createDisplay _dialog;

private _ctrls = allControls _display;

[_unit, _data, _ctrls] call rps_fnc_sheet_page1;