params ["_unit"];

_unit setDamage 0;

private _ace = call rps_fnc_hasACE;

if (_ace) then {
    [_unit] call ace_medical_treatment_fnc_fullHealLocal;
};

[_unit, "You feel the clarity of the incese in your receptors, bringing you health and determination unmatched.", 5] remoteExec ["rps_fnc_chat_text", _unit];

_unit setVariable ["rps_incense_isHealing", false];

// [_unit, false, 0, true] call ace_medical_fnc_setUnconscious;