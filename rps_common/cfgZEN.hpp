    class RP_System
    {
        displayName = "RP System";
        condition = "true";
        icon = "\rps_functions\ui\chat_ca.paa";
        priority = 19;
        class RollDice
        {
            displayName = "Roll Dice";
            // condition = "[_hoveredEntity] call SSV_Android_fnc_canUseAbility";
            statement = "[""Dice Roll"", [[""EDIT"", ""Max Number""]], {[_hoveredEntity, ((_this select 0) select 0)] call rps_fnc_dice_roll}] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 19;
        };
    };