class ui_CreateLogin
{
	idd = 420;
	movingEnabled = false;
	enableSimulation = true;

  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT START (by Garry, v1.063, #Rycyli)
  ////////////////////////////////////////////////////////

  class controlsBackground {
    class ui_CreateLogin_background: RscBackground
    {
    	idc = 1800;
    	x = 0.422656 * safezoneW + safezoneX;
    	y = 0.368 * safezoneH + safezoneY;
    	w = 0.154687 * safezoneW;
    	h = 0.264 * safezoneH;
    };
  };

  class controls {
    class ui_CreateLogin_usernameInput: Luke_RscEdit
    {
    	idc = 1400;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.467 * safezoneH + safezoneY;
    	w = 0.144375 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_CreateLogin_passwordInput: Luke_RscEdit
    {
    	idc = 1401;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.544 * safezoneH + safezoneY;
    	w = 0.144375 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_CreateLogin_header: Luke_RscStructuredText
    {
    	idc = 1100;
    	text = "ProjectLegacyRP Login System (You will need to remember this)"; //--- ToDo: Localize;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.144375 * safezoneW;
    	h = 0.044 * safezoneH;
    };
    class ui_CreateLogin_submit: Luke_RscButton
    {
    	idc = 1600;
    	text = "Submit"; //--- ToDo: Localize;
      action = "PLRP_CharacterInfo set [count PLRP_CharacterInfo, ctrlText 1400]; PLRP_CharacterInfo set [count PLRP_CharacterInfo, ctrlText 1401]; closeDialog 0; [] call LS_fnc_CharacterCreate;";
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.588 * safezoneH + safezoneY;
    	w = 0.144375 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_CreateLogin_usernameHeader: Life_RscText
    {
    	idc = 1000;
    	text = "Username:"; //--- ToDo: Localize;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.144375 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ui_CreateLogin_passwordHeader: Life_RscText
    {
    	idc = 1001;
    	text = "Password:"; //--- ToDo: Localize;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.511 * safezoneH + safezoneY;
    	w = 0.144375 * safezoneW;
    	h = 0.022 * safezoneH;
    };
  };
  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT END
  ////////////////////////////////////////////////////////
};
