params ["_unit", ["_data", []], "_display"];

private _stats = (_display select 1);

private _nameCtrl = (_display select 2);

private _level = (_display select 3);

private _points     = _unit getVariable ["rps_stat_playerPoints", 0];
private _name       = _unit getVariable ["rps_setting_sheet_name", (name _unit)];
private _faction    = _unit getVariable ["rps_setting_sheet_faction", "No faction."];
private _class      = _unit getVariable ["rps_setting_sheet_class", "No class."];
private _background = _unit getVariable ["rps_setting_sheet_background", "No history."];

diag_log _data;

if (_data isNotEqualTo []) then {
    _points     = _data select 0;
    _name       = _data select 1;
    _faction    = _data select 2;
    _class      = _data select 3;
    _background = _data select 4;
};

if ("href" in _faction) then {_faction = "No faction."};
if ("href" in _class) then {_class = "No class."};
if ("href" in _background) then {_background = "No history."};

if (_name isEqualTo "") then {
    private _name = name _unit;
};

_nameCtrl ctrlSetText _name;
_level ctrlSetText (format ["Points: %1", _points]);

private _text = format
[
"
<t size='1' valign='top' align='center' color='#000000' shadow='0'>

<t font='PuristaBold' size='2'>Faction</t>
<br />
<t font='PuristaLight' size='1.5'>%1</t>
<br />
<br />
"
+
"
<t font='PuristaBold' size='2'>Class</t>
<br />
<t font='PuristaLight' size='1.5'>%2</t>
<br />
<br />
"
+
"
<t font='PuristaBold' size='2'>Background</t>
<br />
<t font='PuristaLight' size='1'>%3</t>
<br />
<br />
",
_faction,
_class,
_background
];

// If you're using VSCode, ignore VSCode telling you that there's a ton of errors...

_stats ctrlSetStructuredText parseText _text;