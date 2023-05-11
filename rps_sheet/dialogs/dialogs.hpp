class rps_sheet
{
	idd=5000;
	class controls
	{
		class rps_sheet_paper: RscPictureSheetUI
		{
			idc = 1000;
			text = "rps_sheet\images\rps_sheet_paper_ca.jpg";
			x = 0.371095 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.671 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {1,1,1,1};
			colorActive[] = {1,1,1,1};
		};
		class rps_sheet_text: RscStructuredTextSheetUI
		{
			idc = 1100;
			text = "TEST"; //--- ToDo: Localize;
			x = 0.381408 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.226875 * safezoneW;
			h = 0.429 * safezoneH;
		};
		class rps_sheet_name: RscTextSheetUI
		{
			idc = 1200;
			text = "Jason Bourne"; //--- ToDo: Localize;
			x = 0.371094 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {0,0,0,1};
			colorBackground[] = {1,1,1,0};
			colorActive[] = {1,1,1,0};
			sizeEx = 1.5 * GUI_GRID_H;
		};
		class rps_sheet_level: RscTextSheetUI
		{
			idc = 1300;
			text = "Points:"; //--- ToDo: Localize;
			x = 0.551562 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {0,0,0,1};
			colorBackground[] = {1,1,1,0};
			colorActive[] = {1,1,1,0};
			sizeEx = 1.5 * GUI_GRID_H;
		};
	};
};