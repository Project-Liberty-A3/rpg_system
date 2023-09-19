params ["_unit"];

if (_unit getVariable ["rps_incense_isHealing", false] isEqualTo true) exitWith {};

_unit setVariable ["rps_incense_isHealing", true];

_unit action ["SwitchWeapon", _unit, _unit, -1];

// [_unit, "rps_sound_prayer", true] call rps_fnc_chat_voice;

[_unit, "rps_sound_prayer"] remoteExec ["say2D"];

[_unit, "Acts_JetsCrewaidFCrouch_in"] remoteExec ["switchMove"];

private _particleSource = "#particlesource" createVehicle ASLToAGL getPosASL _unit;

_particleSource setParticleClass "MineCircleDust";

[_particleSource, 0.04] remoteExec ["setDropInterval", 0];

uiSleep 5;

[_unit, "Acts_JetsCrewaidFCrouch_out"] remoteExec ["switchMove"];

deleteVehicle _particleSource;

uiSleep 1.7;

[_unit, ""] remoteExec ["switchMove"];

private _healGroup = missionNamespace getVariable ["rps_setting_incense_healGroup", false];

diag_log _healGroup;

if (_healGroup) then {

    private _nearUnits = [];

    {
        if (_x distance _unit <= 5) then {
            _nearUnits pushBack _x;
        };
    } forEach allUnits - entities "HeadlessClient_F";

    {
        [_x] call rps_fnc_incense_heal;
    } forEach _nearUnits;

    diag_log _nearUnits;

} else {

    [_unit] call rps_fnc_incense_heal;

};

_unit removeItem "rps_item_incense_heal";