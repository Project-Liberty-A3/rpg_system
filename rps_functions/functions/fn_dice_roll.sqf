/*
	Purpose: Selects random number from 0 to _rollAmount, puts result in systemChat

	Made by: Silence

    Arguments:
    _unit		<OBJECT>
	// _rollAmount	<INTEGER> <DEFAULT: 20>
	
	Example:
	[ player ] call rps_fnc_dice_roll;
*/

params ["_unit", ["_rollAmount", 0]];

// private _roll = random _rollAmount;
if (_rollAmount isEqualTo 0) then {
	_rollAmount = missionNamespace getVariable ["rps_setting_dice_maxNumber", 20];
};

private _roll = random _rollAmount;

private _message = format ["%1 rolled a %2", name _unit, round _roll];

[_message] call rps_fnc_global_syncChat;