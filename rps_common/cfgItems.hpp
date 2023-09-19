    class CBA_MiscItem;
	class CBA_MiscItem_ItemInfo;
	class rps_item_incense: CBA_MiscItem
	{
		displayName = "Incense";
		scope=2;
		author = "Silence";
		picture = "\rps_common\logo_ca.paa";
		model = "\rps_props\incense\incense.p3d";
		icon = "iconObject_circle";
		descriptionShort = "";
		class ItemInfo: CBA_MiscItem_ItemInfo
		{
			mass = 5;
			scope = 0;
			type = 302;
		};
	};
	class rps_item_incense_heal: rps_item_incense
	{
		displayName = "Healing Incense";
	};