params ["_unit", ["_data", []], "_display"];

private _stats = (_display select 1);

private _nameCtrl = (_display select 2);

private _level = (_display select 3);

private _points     = _unit getVariable ["rps_stat_playerPoints", 0];
private _name       = _unit getVariable ["rps_setting_sheet_name", (name _unit)];
private _equipment  = _unit getVariable ["rps_setting_sheet_admech_equipment", "No equipment."];

diag_log _data;

if (_data isNotEqualTo []) then {
    _points     = _data select 0;
    _name       = _data select 1;
    _equipment  = _data select 2;
};

if ("href" in _equipment) then {_equipment = "No equipment."};

if (_name isEqualTo "") then {
    private _name = name _unit;
};

_nameCtrl ctrlSetText _name;
_level ctrlSetText (format ["Points: %1", _points]);

private _text = format
[
"
<t size='1' valign='top' align='center' color='#A9A9A9' shadow='0'>

<t font='PuristaBold' size='3'>Equipment</t>
<br />
<t font='PuristaLight' size='2'>%1</t>
<br />
<br />
",
_equipment
];

// If you're using VSCode, ignore VSCode telling you that there's a ton of errors...

_stats ctrlSetStructuredText parseText _text;