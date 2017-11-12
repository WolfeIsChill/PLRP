class ui_Login
{
	idd = 420;
	movingEnabled = false;
	enableSimulation = true;

	class controlsBackground {
		class ui_Login_Background: RscBackground
		{
			idc = 1800;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.176 * safezoneH;
		};
	};

	class controls {
		class ui_Login_Header: Luke_RscStructuredText
		{
			idc = 1100;
			text = "Please input a username to log in with (You will need to remember this)"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class ui_Login_unHeader: Life_RscText
		{
			idc = 1000;
			text = "Username:"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_Login_unInput: Luke_RscEdit
		{
			idc = 1400;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_Login_btnSubmit: Luke_RscButton
		{
			idc = 1600;
			text = "Submit"; //--- ToDo: Localize;
			action = "PLRP_CharacterInfo set [count PLRP_CharacterInfo, ctrlText 1400]; closeDialog 0; [] call LS_fnc_CharacterCreate;";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};
