params ["_unit", ["_data", []], "_display"];

private _stats = (_display select 1);

private _nameCtrl = (_display select 2);

private _level = (_display select 3);

private _points         = _unit getVariable ["rps_stat_playerPoints", 0];
private _name           = _unit getVariable ["rps_setting_sheet_name", (name _unit)];
private _strength       = _unit getVariable ["rps_setting_sheet_admech_strength", 0];
private _intelligence   = _unit getVariable ["rps_setting_sheet_admech_intelligence", 0];
private _stamina        = _unit getVariable ["rps_setting_sheet_admech_stamina", 0];
private _charisma       = _unit getVariable ["rps_setting_sheet_admech_charisma", 0];

diag_log _data;

if (_data isNotEqualTo []) then {
    _points         = _data select 0;
    _name           = _data select 1;
    _strength       = _data select 2;
    _intelligence   = _data select 3;
    _stamina        = _data select 4;
    _charisma       = _data select 5;
};

if (_name isEqualTo "") then {
    private _name = name _unit;
};

_nameCtrl ctrlSetText _name;
_level ctrlSetText (format ["Points: %1", _points]);

private _text = format
[
"
<t size='1' valign='top' align='center' color='#A9A9A9' shadow='0'>

<t font='PuristaBold' size='2.5'>Strength</t>
<br />
<t font='PuristaLight' size='2'>%1</t>
<br />
<br />
"
+
"
<t font='PuristaBold' size='2.5'>Intelligence</t>
<br />
<t font='PuristaLight' size='2'>%2</t>
<br />
<br />
"
+
"
<t font='PuristaBold' size='2.5'>Stamina</t>
<br />
<t font='PuristaLight' size='2'>%3</t>
<br />
<br />
"
+
"
<t font='PuristaBold' size='2.5'>Charisma</t>
<br />
<t font='PuristaLight' size='2'>%4</t>
<br />
<br />
",
_strength,
_intelligence,
_stamina,
_charisma
];

// If you're using VSCode, ignore VSCode telling you that there's a ton of errors...

_stats ctrlSetStructuredText parseText _text;