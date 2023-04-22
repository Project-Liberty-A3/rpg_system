
/*
	Purpose: Selects random number from 0 to _rollAmount, puts result in systemChat

	Made by: Silence

    Arguments:
    _unit		<OBJECT>
	_actionName	<STRING>
	_icon		<STRING>
	_voice		<STRING>
	_text		<STRING>
	
	Example:
	[cursorObject, "Any information?", "", "", "No, I haven't seen anything."] call rps_fnc_question_add;
*/

params ["_unit", "_actionName", "_icon", "_voice", "_text"];

private _actions = _unit getVariable ["rps_actionAmount", 0];

private _actionInfo = [
	("rps_chat_aiResponse" + str _actions),  // 0: Action name <STRING>
	_actionName,                  // 1: Name of the action shown in the menu <STRING>
	_icon,                                 // 2: Icon <STRING>
	// Statement <CODE>
	{
		params ["_target", "_player", "_params"];

        [_target, (_params select 1), 10] remoteExec ["rps_fnc_chat_text"];

		if !((_params select 0) isEqualTo "") then {
			[{[(_this select 0), (_this select 1), true] call rps_fnc_chat_voice}, [_target, (_params select 0)], 0.1] call CBA_fnc_waitAndExecute;
		};
        
        private _actions = _target getVariable ["rps_actionAmount", 0];
        _target setVariable ["rps_actionAmount", (_actions + 1)];
	},
	// Condition <CODE>
	{ 
		params ["_target", "_player", "_params"];

		(alive _target)
		// () && {true}
	},
    {},
    [_voice, _text]
];

private _action = _actionInfo call ace_interact_menu_fnc_createAction;
// ["CAManBase", 0, ["ACE_MainActions", "rps_questions"], _action, true] call ace_interact_menu_fnc_addActionToClass;
[_unit, 0, ["rps_questions"], _action] call ace_interact_menu_fnc_addActionToObject;