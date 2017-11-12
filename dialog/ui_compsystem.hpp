class UI_CompSystem
{
	idd = -1;
	movingEnabled = false;
	enableSimulation = true;

  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT START (by Garry, v1.063, #Gupufe)
  ////////////////////////////////////////////////////////

  class controlsBackground {
    class ui_CompSystem_background: RscFrame
    {
    	idc = 1800;
    	x = 0.448438 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.103125 * safezoneW;
    	h = 0.143 * safezoneH;
    };
  };

  class controls {
    class ui_CompSystem_Header: RscText
    {
    	idc = 1000;
    	text = "Please enter an amount:"; //--- ToDo: Localize;
    	x = 0.453594 * safezoneW + safezoneX;
    	y = 0.445 * safezoneH + safezoneY;
    	w = 0.0928125 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ui_CompSystem_input: Luke_RscEdit
    {
    	idc = 1400;
    	x = 0.453594 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.0928125 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ui_CompSystem_playerlist: RscCombo
    {
    	idc = 2100;
    	x = 0.453594 * safezoneW + safezoneX;
    	y = 0.511 * safezoneH + safezoneY;
    	w = 0.0928125 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ui_CompSystem_sendmoney: RscButton
    {
    	idc = 1600;
    	text = "Send Money"; //--- ToDo: Localize;
    	x = 0.453594 * safezoneW + safezoneX;
    	y = 0.544 * safezoneH + safezoneY;
    	w = 0.0928125 * safezoneW;
    	h = 0.022 * safezoneH;
    };
  };
  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT END
  ////////////////////////////////////////////////////////
};
