params [["_unit", player]];

_unit removeItem "rps_item_incense";

private _incense = "rps_incense" createVehicle [0,0,0];

_incense setPosATl getPosATL _unit;

private _particleSource = "#particlesource" createVehicle ASLToAGL getPosASL _incense;

_particleSource setParticleClass "MineCircleDust";

[_particleSource, 0.07] remoteExec ["setDropInterval", 0];

_action = ["PickupIncense","Retrieve Incense","",{
	params ["_target", "_player", "_params"];
	deleteVehicle _target;
	_player addItem "rps_item_incense";
},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_incense, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

waitUntil {!alive _incense};

deleteVehicle _particleSource;