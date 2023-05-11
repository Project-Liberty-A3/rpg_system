private _canShare = missionNamespace getVariable ["rps_setting_sheet_canShare", false];

if (_canShare) then {
    true
} else {
    false
};