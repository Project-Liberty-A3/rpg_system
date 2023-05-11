    class RP_System
    {
        displayName = "RP System";
        condition = "_hoveredEntity isKindOf ""CAManBase""";
        icon = "\rps_functions\ui\chat_ca.paa";
        priority = 19;
        class RollDice
        {
            displayName = "Roll Dice";
            statement = "[""Dice Roll"", [[""EDIT"", ""Max Number""]], {[( (_this select 1) select 0 ), ( parseNumber ( (_this select 0 ) select 0 ) )] call rps_fnc_dice_roll}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 19;
        };
        class AI_Response
        {
            displayName = "AI Response";
            statement = "[""AI Response"", [[""EDIT"", ""Message""], [""EDIT"", ""Timer""]], {[( (_this select 1) select 0 ), ( (_this select 0) select 0 ), ( parseNumber ( (_this select 0) select 1 ) ) ] call rps_fnc_chat_text}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\chat_ca.paa";
            priority = 19;
        };
        class AI_Question
        {
            displayName = "Add AI Question";
            statement = "[""AI Response"", [[""EDIT"", ""Question Name""], [""EDIT"", ""Icon Path""], [""EDIT"", ""CfgSounds Classname""], [""EDIT"", ""Response""]], {[( (_this select 1) select 0 ), (_this select 0) select 0, (_this select 0) select 1, (_this select 0) select 2, (_this select 0) select 3] call rps_fnc_question_add}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\chat_ca.paa";
            priority = 18;
        };
    };
    class RP_System_Sheet
    {
        displayName = "RP System (Character Sheet)";
        condition = "_hoveredEntity isKindOf ""CAManBase"" && call rps_fnc_sheet_canShare;";
        icon = "\rps_functions\ui\chat_ca.paa";
        priority = 18;
        class AddPoint
        {
            displayName = "Add Point";
            statement = "_hoveredEntity setVariable [""rps_stat_playerPoints"", (_hoveredEntity getVariable [""rps_stat_playerPoints"", 0]) + 1, true];"
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 19;
        };
        class RemovePoint
        {
            displayName = "Remove Point";
            statement = "_hoveredEntity setVariable [""rps_stat_playerPoints"", (_hoveredEntity getVariable [""rps_stat_playerPoints"", 0]) - 1, true];"
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 19;
        };
        class PlusPoint
        {
            displayName = "Set Points";
            statement = "[""Set Points"", [[""EDIT"", ""Points""]], {( (_this select 1) select 0 ) setVariable [""rps_stat_playerPoints"", ( parseNumber ( (_this select 0 ) select 0 ) ), true]}, {}, [_hoveredEntity]] call zen_dialog_fnc_create";
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 19;
        };
        class OpenSheet
        {
            displayName = "Open Character Sheet";
            statement = "[ACE_Player, _hoveredEntity] spawn rps_fnc_sheet_share";
            icon = "\rps_functions\ui\dice_ca.paa";
            priority = 18;
        };
    };