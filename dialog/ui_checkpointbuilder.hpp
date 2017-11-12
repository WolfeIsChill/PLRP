class OL_CheckpointBuilder {
	idd = -1;
	movingEnabled = false;
	enableSimulation = true;

	class controlsBackground {
		class DR_CPB_Background: RscBackground
		{
				idc = 1800;
				text = "OurLifeRPG"; //--- ToDo: Localize;
				x = 0.325112 * safezoneW + safezoneX;
				y = 0.194011 * safezoneH + safezoneY;
				w = 0.349775 * safezoneW;
				h = 0.441984 * safezoneH;
		};
	};
	class controls {
		class DR_CPB_PurchaseBtn: RscButton_OL
		{
			idc = 1600;
			text = "Purchase"; //--- ToDo: Localize;
			x = 0.341011 * safezoneW + safezoneX;
			y = 0.652995 * safezoneH + safezoneY;
			w = 0.111292 * safezoneW;
			h = 0.0679976 * safezoneH;
			action = "if (vehicle player == player) then { [lbCurSel 1500] call cp_fnc_purchase };";		
		};
		class DR_CPB_ClearBtn: RscButton_OL
		{
			idc = 1601;
			text = "Clear Checkpoint"; //--- ToDo: Localize;
			x = 0.547697 * safezoneW + safezoneX;
			y = 0.652995 * safezoneH + safezoneY;
			w = 0.111292 * safezoneW;
			h = 0.0679976 * safezoneH;
		};
		class DR_CPB_ListBox: Life_RscListbox
		{
			idc = 1500;
			x = 0.341011 * safezoneW + safezoneX;
			y = 0.245009 * safezoneH + safezoneY;
			w = 0.310028 * safezoneW;
			h = 0.356987 * safezoneH;
		};
		class DR_CPB_Title: Life_RscText
		{
			idc = 1000;
			text = "Checkpoint Builder"; //--- ToDo: Localize;
			x = 0.444354 * safezoneW + safezoneX;
			y = 0.194011 * safezoneH + safezoneY;
			w = 0.111292 * safezoneW;
			h = 0.0339988 * safezoneH;
		};
	};
};
