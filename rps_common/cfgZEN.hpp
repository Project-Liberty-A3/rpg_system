    class RP_System
    {
        displayName = "RP System";
        condition = "_hoveredEntity isKindOf ""CAManBase""";
        icon = "\rps_functions\ui\chat_ca.paa";
        priority = 19;
        class RollDice
        {
            displayName = "Roll Dice";
            // condition = "[_hoveredEntity] call SSV_Android_fnc_canUseAbility";
            statement = "[""Dice Roll"", [[""EDIT"", ""Max Number""]], {[( (_this select 1) select 0 ), ( parseNumber ( (_this select 0 ) select 0 ) )] call rps_fnc_dice_roll}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 19;
        };
        class AI_Response
        {
            displayName = "AI Response";
            // condition = "[_hoveredEntity] call SSV_Android_fnc_canUseAbility";
            statement = "[""AI Response"", [[""EDIT"", ""Message""], [""EDIT"", ""Timer""]], {[( (_this select 1) select 0 ), ( (_this select 0) select 0 ), ( parseNumber ( (_this select 0) select 1 ) ) ] call rps_fnc_chat_text}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\chat_ca.paa";
            priority = 19;
        };
        class AI_Question
        {
            displayName = "Add AI Question";
            // condition = "[_hoveredEntity] call SSV_Android_fnc_canUseAbility";
            statement = "[""AI Response"", [[""EDIT"", ""Question Name""], [""EDIT"", ""Icon Path""], [""EDIT"", ""CfgSounds Classname""], [""EDIT"", ""Response""]], {[( (_this select 1) select 0 ), (_this select 0) select 0, (_this select 0) select 1, (_this select 0) select 2, (_this select 0) select 3] call rps_fnc_question_add}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\chat_ca.paa";
            priority = 18;
        };
    };