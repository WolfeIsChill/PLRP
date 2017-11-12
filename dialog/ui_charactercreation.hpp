class ui_CharacterCreation {
	idd = -1;
	movingEnable = true;
	onLoad = "titleText ["""", ""BLACK""];";
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Garry, v1.063, #Nakygo)
	////////////////////////////////////////////////////////
	class controlsBackground {
		class ui_CharacterCreation_background: RscBackground
		{
			idc = 1800;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.231 * safezoneH;
		};
	};

	class controls {
		class ui_CharacterCreation_firstNamelbl: Life_RscText
		{
			idc = 1000;
			text = "First Name:"; //--- ToDo: Localize;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_firstNameinput: Luke_RscEdit
		{
			idc = 1400;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_CharacterCreation_lastNamelbl: Life_RscText
		{
			idc = 1001;
			text = "Last Name:"; //--- ToDo: Localize;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_lastNameinput: Luke_RscEdit
		{
			idc = 1401;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_CharacterCreation_yyyylbl: Life_RscText
		{
			idc = 1004;
			text = "YYYY"; //--- ToDo: Localize;
			x = 0.484531 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_mmInput: Luke_RscEdit
		{
			idc = 1403;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_ddInput: Luke_RscEdit
		{
			idc = 1402;
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_yyyyInput: Luke_RscEdit
		{
			idc = 1404;
			x = 0.484531 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_createbtn: Luke_RscButton
		{
			idc = 1600;
			text = "Create Character"; //--- ToDo: Localize;
			action = "PLRP_CharacterInfo = [ctrlText 1400, ctrlText 1401, [ctrlText 1403, ctrlText 1402, ctrlText 1404]]; closeDialog 0; createDialog ""UI_BankPin""; [""Please enter a bank pin"", false] spawn domsg;";
			x = 0.515469 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class ui_CharacterCreation_mmlbl: Life_RscText
		{
			idc = 1002;
			text = "MM"; //--- ToDo: Localize;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class ui_CharacterCreation_ddlbl: Life_RscText
		{
			idc = 1003;
			text = "DD"; //--- ToDo: Localize;
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////
};
