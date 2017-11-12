/*class ui_StaffMenu
{
	idd = 42069;
	movingEnabled = false;
	enableSimulation = true;
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Garry, v1.063, #Riryby)
	////////////////////////////////////////////////////////

	class controlsBackground {
		class ui_AdminMenu_Background: RscBackground
		{
			idc = 1800;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.402187 * safezoneW;
			h = 0.528 * safezoneH;
		};
	};

	class controls {
		class ui_AdminMenu_cmdLB: RscListbox
		{
			idc = 1500;
			onLBSelChanged = "if ((lbData [1500, 0]) != ""COMMAND"") then { [] call admin_fnc_showPCommands }";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.462 * safezoneH;
		};
		class ui_AdminMenu_activateBtn: Life_RscButtonMenu
		{
			idc = 1600;
			text = "Run Command";
			action = "[ctrlText 1500] call admin_fnc_runCommand;";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_AdminMenu_consoleedit: RscEdit
		{
			idc = 1400;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.165 * safezoneH;
		};
		class ui_AdminMenu_statsLB: RscListbox
		{
			idc = 1501;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.242 * safezoneH;
		};
		class ui_AdminMenu_removeItemBtn: Life_RscButtonMenu
		{
			idc = 1601;
			text = "Remove Item"; //--- ToDo: Localize;
			action = "[lbCurSel 1501] call admin_fnc_removeItem;";
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_AdminMenu_runconsoleBtn: Life_RscButtonMenu
		{
			idc = 1602;
			text = "Run Console Code On Target"; //--- ToDo: Localize;
			action = "[ctrlText 1400] call admin_fnc_runOnPlayer;";
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_AdminMenu_pCommandslb: RscListbox
		{
			idc = 1502;
			onLBDblClick = "[(ctrlText (lbCurSel 1502), (lbData [1502, (lbCurSel 1502)]), lbCurSel 1502] call admin_fnc_runPCommand";
			x = 0.17 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.176 * safezoneH;
		};
		class ui_AdminMenu_changeBtn: Life_RscButtonMenu
		{
			idc = 1603;
			text = "Display Players";
			action = "[] call admin_fnc_changeDisplay;";
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};*/

class UI_StaffMenu
{
	idd = -1;
	movingEnabled = false;
	enableSimulation = true;

	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Garry, v1.063, #Gytiko)
	////////////////////////////////////////////////////////
	class controlsBackground {
		class ui_StaffMenu_background: RscBackground
		{
			idc = 1800;
			x = 0.432969 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.396 * safezoneH;
		};
	};

	class controls {
		class ui_StaffMenu_cmdList: RscListBox
		{
			idc = 1500;
			onLBDblClick = "[lbText [1500, (lbCurSel 1500)]] call admin_fnc_activateCommand";
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.319 * safezoneH;
		};
		class ui_StaffMenu_activateBtn: Luke_RscButton
		{
			idc = 1600;
			text = "Run"; //--- ToDo: Localize;
			action = "[lbText [1500, (lbCurSel 1500)]] call admin_fnc_activateCommand;";
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////
};
