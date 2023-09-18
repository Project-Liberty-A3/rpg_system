params ["_unit", "_index", ["_data", []]];

private _dialog = "rps_sheet_admech_page1";

private _display = findDisplay 46 createDisplay _dialog;

private _ctrls = allControls _display;

switch (_index) do 
{
    case "1": {[_unit, _data, _ctrls] call rps_fnc_sheet_admech_page1};
    case "2": {[_unit, _data, _ctrls] call rps_fnc_sheet_admech_page2};
    case "3": {[_unit, _data, _ctrls] call rps_fnc_sheet_admech_page3};
};

diag_log _data;