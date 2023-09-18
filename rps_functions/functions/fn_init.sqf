params [["_unit", player]];

if (isServer) exitWith {call rps_fnc_customRadioChannel};

(missionNamespace getVariable "rps_channel_gm") radioChannelAdd [_unit];

_unit addEventHandler ["Respawn", 
{
	params ["_unit", "_corpse"];

    (missionNamespace getVariable "rps_channel_gm") radioChannelAdd [_unit];
    // (missionNamespace getVariable "rps_channel_gm") enableChannel [false, false];
}];

diag_log "Added game master channel event handlers";