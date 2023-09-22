params [["_unit", player]];

if (_unit getVariable ["rps_incense_placed", false] isEqualTo true) exitWith {};

_unit removeItem "rps_item_incense";

[_unit, "Acts_JetsCrewaidFCrouch_in"] remoteExec ["switchMove"];

uiSleep 3;

private _incense = "rps_incense" createVehicle [0,0,0];

_incense setPosATl getPosATL _unit;

private _particleSource = "#particlesource" createVehicle ASLToAGL getPosASL _incense;

_particleSource setParticleClass "MineCircleDust";

[_particleSource, 0.07] remoteExec ["setDropInterval", 0];

[_unit, ""] remoteExec ["switchMove"];

_action = ["PickupIncense","Retrieve Incense","",{
	params ["_target", "_player", "_params"];
	deleteVehicle _target;
	_player addItem "rps_item_incense";
},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_incense, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

[format["%1 placed incense.", (name _unit)]];

[_particleSource, "rps_sound_admech_music"] remoteExec ["say3D"];

_unit setVariable ["rps_incense_placed", true];

waitUntil {!alive _incense};

deleteVehicle _particleSource;

_unit setVariable ["rps_incense_placed", false];