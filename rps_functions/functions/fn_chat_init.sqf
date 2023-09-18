if (isServer) exitWith {nil};
// private _test = missionNamespace getVariable ["rps_chat_handler", -1];

// if (_test isNotEqualTo -1) exitWith {};

private _handler = addMissionEventHandler ["HandleChatMessage",
{
	params ["_channel", "_owner", "_from", "_text", "_person", "_name", "_strID", "_forcedDisplay", "_isPlayerMessage", "_sentenceType", "_chatMessageType"];
    switch (true) do 
    {
        case ("/me" in _text): 
        {
            if (_person getVariable ["rps_chat_active", false] isEqualTo false) then 
            {
                private _textTrimmed = _text select [4]; // cut out the /me text
                [_person, _textTrimmed, 10] call rps_fnc_chat_text;
                // [(format["%1 says: %2", (name _person), _textTrimmed])] call rps_fnc_global_syncChat;
                systemChat (format["%1 says: %2", (name _person), _textTrimmed]);
            };
            true
        };
        case ("/gm" in _text): 
        {
            if (!isNull (getAssignedCuratorLogic _person)) then { // check if player is zeus
                private _textTrimmed = _text select [4]; // cut out the /gm text
                [_person, _textTrimmed, 10] call rps_fnc_chat_text_gm;

                (missionNamespace getVariable "rps_channel_gm") radioChannelAdd [_person];
                // (missionNamespace getVariable "rps_channel_gm") enableChannel [true, false];
                _person customChat [(missionNamespace getVariable "rps_channel_gm"), format["%1 says: %2", (name _person), _textTrimmed]];
                // [_person, [(missionNamespace getVariable "rps_channel_gm"), format["%1 says: %2", (name _person), _textTrimmed]]] remoteExec ["customChat", 0];

                true
            };
        };
        default
        {
            false
        };
    };
}];

// missionNamespace setVariable ["rps_chat_handler", _handler, true];

diag_log "Added handler for chat";