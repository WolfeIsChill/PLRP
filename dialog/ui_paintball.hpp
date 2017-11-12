class ui_Paintball {
		idd = -1;
    movingEnabled = false;

  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT START (by Garry, v1.063, #Samicy)
  ////////////////////////////////////////////////////////
  class controlsBackground {
    class ui_PaintballMenu_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.37625 * safezoneW + safezoneX;
    	y = 0.302 * safezoneH + safezoneY;
    	w = 0.2475 * safezoneW;
    	h = 0.396 * safezoneH;
    };
  };

  class controls {
    class ui_PaintballMenu_btList: RscListbox
    {
    	idc = 1500;
    	x = 0.381406 * safezoneW + safezoneX;
    	y = 0.335 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.264 * safezoneH;
    };
    class ui_PaintballMenu_rtList: RscListbox
    {
    	idc = 1501;
    	x = 0.505156 * safezoneW + safezoneX;
    	y = 0.335 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.264 * safezoneH;
    };
    class ui_PaintballMenu_btHeader: RscText
    {
    	idc = 1000;
    	text = "Blue Team"; //--- ToDo: Localize;
    	x = 0.381406 * safezoneW + safezoneX;
    	y = 0.313 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ui_PaintballMenu_rtHeader: RscText
    {
    	idc = 1001;
    	text = "Red Team"; //--- ToDo: Localize;
    	x = 0.505156 * safezoneW + safezoneX;
    	y = 0.313 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ui_PaintballMenu_btJoinBtn: Luke_RscButton
    {
    	idc = 1600;
    	text = "Join Blue Team"; //--- ToDo: Localize;
			action = "['BLUE_TEAM'] spawn LS_fnc_PaintballJoin;";
    	x = 0.381406 * safezoneW + safezoneX;
    	y = 0.61 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_PaintballMenu_rtJoinButton: Luke_RscButton
    {
    	idc = 1601;
    	text = "Join Red Team"; //--- ToDo: Localize;
      action = "['RED_TEAM'] spawn LS_fnc_PaintballJoin;";
    	x = 0.505156 * safezoneW + safezoneX;
    	y = 0.61 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_PaintballMenu_closeBtn: Luke_RscButton
    {
    	idc = 1602;
    	text = "Close"; //--- ToDo: Localize;
      action = "closeDialog 0;";
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.654 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.033 * safezoneH;
    };
  };
  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT END
  ////////////////////////////////////////////////////////
};
