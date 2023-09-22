params ["_unit", ["_data", []], "_display"];

private _stats = (_display select 1);

private _nameCtrl = (_display select 2);

private _level = (_display select 3);

private _points     = _unit getVariable ["rps_stat_playerPoints", 0];
private _name       = _unit getVariable ["rps_setting_sheet_name", (name _unit)];
private _weapon     = _unit getVariable ["rps_setting_sheet_admech_weapon", "No weapon."];
private _armor      = _unit getVariable ["rps_setting_sheet_admech_armor", "No armor."];
private _relic      = _unit getVariable ["rps_setting_sheet_admech_relic", "No relic."];
private _seals      = _unit getVariable ["rps_setting_sheet_admech_seals", (round (random 100))];

diag_log _data;

if (_data isNotEqualTo []) then {
    _points     = _data select 0;
    _name       = _data select 1;
    _weapon     = _data select 2;
    _armor      = _data select 3;
    _relic      = _data select 4;
    _seals      = _data select 5;
};

if ("href" in _weapon) then {_weapon = "No weapon."};
if ("href" in _armor) then {_armor = "No armor."};
if ("href" in _relic) then {_relic = "No relic."};

if (_name isEqualTo "") then {
    private _name = name _unit;
};

_nameCtrl ctrlSetText _name;
_level ctrlSetText (format ["Points: %1", _points]);

private _text = format
[
"
<t size='1' valign='top' align='center' color='#A9A9A9' shadow='0'>

<t font='PuristaBold' size='2.5'>Weapon</t>
<br />
<t font='PuristaLight' size='2'>%1</t>
<br />
<br />
"
+
"
<t size='1' valign='top' align='center' color='#A9A9A9' shadow='0'>

<t font='PuristaBold' size='2.5'>Armor</t>
<br />
<t font='PuristaLight' size='2'>%2</t>
<br />
<br />
"
+
"
<t size='1' valign='top' align='center' color='#A9A9A9' shadow='0'>

<t font='PuristaBold' size='2.5'>Relic</t>
<br />
<t font='PuristaLight' size='2'>%3</t>
<br />
<br />
"
+
"
<t size='1' valign='top' align='center' color='#A9A9A9' shadow='0'>

<t font='PuristaBold' size='2.5'>Purity Seals</t>
<br />
<t font='PuristaLight' size='2'>%4</t>
<br />
<br />
",
_weapon,
_armor,
_relic,
_seals
];

// If you're using VSCode, ignore VSCode telling you that there's a ton of errors...

_stats ctrlSetStructuredText parseText _text;