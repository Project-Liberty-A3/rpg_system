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

/*
$[
    1.063,
    ["rps",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
    [-1200,"rps_sheet_paper",[1,"images\rps_sheet_paper_ca.jpg",["0.371095 * safezoneW + safezoneX","0.17 * safezoneH + safezoneY","0.2475 * safezoneW","0.671 * safezoneH"],[1,1,1,0.5],[1,1,1,0.5],[1,1,1,0.5],"","-1"],[]],
    [1100,"rps_sheet_text",[1,"TEST",["0.381408 * safezoneW + safezoneX","0.291 * safezoneH + safezoneY","0.226875 * safezoneW","0.429 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1000,"rps_sheet_name",[1,"Jason Bourne",["0.371094 * safezoneW + safezoneX","0.17 * safezoneH + safezoneY","0.134062 * safezoneW","0.033 * safezoneH"],[0,0,0,1],[1,1,1,0],[1,1,1,0],"","2"],[]],
    [1001,"rps_sheet_level",[1,"Points:",["0.551562 * safezoneW + safezoneX","0.17 * safezoneH + safezoneY","0.0670312 * safezoneW","0.033 * safezoneH"],[0,0,0,1],[1,1,1,0],[1,1,1,0],"","2"],[]]
]
*/

class rps_sheet_admech_page1
{
	idd=5100;
	class controls
	{
		class rps_sheet_paper: RscPictureSheetUI
		{
			idc = 1200;
			text = "rps_sheet\images\rps_sheet_admech_ca.jpg";
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
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.216563 * safezoneW;
			h = 0.517 * safezoneH;
		};
		class rps_sheet_name: RscTextSheetUI
		{
			idc = 1000;
			text = "Jason Bourne"; //--- ToDo: Localize;
			x = 0.371094 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {0.7,0.7,0.7,1};
			colorBackground[] = {1,1,1,0};
			colorActive[] = {1,1,1,0};
			sizeEx = 1.5 * GUI_GRID_H;
		};
		class rps_sheet_level: RscTextSheetUI
		{
			idc = 1001;
			text = "Points:"; //--- ToDo: Localize;
			x = 0.551562 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {0.7,0.7,0.7,1};
			colorBackground[] = {1,1,1,0};
			colorActive[] = {1,1,1,0};
			sizeEx = 1.5 * GUI_GRID_H;
		};
	};
};

/* #Zegeku
$[
	1.063,
	["rps",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1200,"rps_sheet_paper",[1,"rps_sheet\images\rps_sheet_admech_ca.jpg",["0.371095 * safezoneW + safezoneX","0.17 * safezoneH + safezoneY","0.2475 * safezoneW","0.605 * safezoneH"],[1,1,1,0.5],[1,1,1,1],[1,1,1,1],"","-1"],[]],
	[1100,"rps_sheet_text",[1,"TEST",["0.386564 * safezoneW + safezoneX","0.236 * safezoneH + safezoneY","0.216563 * safezoneW","0.517 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"rps_sheet_name",[1,"Jason Bourne",["0.371094 * safezoneW + safezoneX","0.17 * safezoneH + safezoneY","0.134062 * safezoneW","0.033 * safezoneH"],[0,0,0,1],[1,1,1,0],[1,1,1,0],"","1.5"],[]],
	[1001,"rps_sheet_level",[1,"Points:",["0.551562 * safezoneW + safezoneX","0.17 * safezoneH + safezoneY","0.0670312 * safezoneW","0.033 * safezoneH"],[0,0,0,1],[1,1,1,0],[1,1,1,0],"","1.5"],[]]
]
*/