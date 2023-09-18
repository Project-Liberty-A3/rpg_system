private _test = missionNamespace getVariable ["rps_channel_gm", -1];

if (_test isNotEqualTo -1) exitWith {};

private _channelID = radioChannelCreate [[1,0,0,1], "GAME MASTER", "GAME MASTER", []];

// _channelID enableChannel [false, false];

missionNamespace setVariable ["rps_channel_gm", _channelID, true];

diag_log "Added game master channel";