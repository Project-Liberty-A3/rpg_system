class CfgPatches
{
	class rps_common
	{
		units[] =
		{
			""
		};
		weapons[] =
		{
			""
		};
		magazines[] = {""};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Data_F_AoW_Loadorder"};
		name = "RP System - Common";
		author = "Silence, Hierophant";
	};
};

#include "cfgEventHandlers.hpp"

class zen_context_menu_actions
{ // shouldn't matter if zen is loaded or not
	#include "cfgZEN.hpp"
};

class CfgWeapons
{
	#include "cfgItems.hpp"
};

class CfgFunctions 
{
	
    class rps
    {
		
        class functions 
        {
			
            class global_syncAnim 
            {
                file = "\rps_common\functions\fn_global_syncAnim.sqf";
            };
			
            class global_syncChat 
            {
                file = "\rps_common\functions\fn_global_syncChat.sqf";
            };
			
        };
		
    };
	
};