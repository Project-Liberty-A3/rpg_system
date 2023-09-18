/*
	Purpose: Puts a message above units head, for gm

	Made by: Silence

    Arguments:
    _unit		<OBJECT>
	_message	<STRING>
	_timer		<INTEGER>
	
	Example:
	[ player, "I sent this message from fn_chat_text!", 5 ] call rps_fnc_chat_text_gm;
*/

params [
	["_unit", player],
	["_message", "DEFAULT"],
	["_timer", 5]
];

if (_unit getVariable ["rps_chat_active", false] isEqualTo true) exitWith {};

private _draw_EH = addMissionEventHandler ["Draw3D",
{
	drawIcon3D
	[
		"", // add actual icon
		//"a3\ui_f\data\Map\Markers\Military\dot_ca.paa",
		[[1,0,0,1], [1,0,0,1]],
		((_thisArgs select 0) modelToWorldVisual [0.05,0.1,2]),
		2,2,0,
		(_thisArgs select 1), // message
		0,
		0.035,
		"RobotoCondensedBold"
	];
}, [_unit, format["*%1*",_message]]];

_unit setVariable ["rps_chat_active", true];

[{removeMissionEventHandler ["Draw3D", (_this select 0)]; (_this select 1) setVariable ["rps_chat_active", false]}, [_draw_EH, _unit], _timer] call CBA_fnc_waitAndExecute;