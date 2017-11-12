class ui_BankPin {
	idd = -1;
	movingEnable = true;
	onUnload = "titleText ["""", ""BLACK""];";

  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT START (by Garry, v1.063, #Qanife)
  ////////////////////////////////////////////////////////
  class controlsBackground {
    class ui_BankPin_Background: RscBackground
    {
    	idc = 1800;
    	x = 0.432969 * safezoneW + safezoneX;
    	y = 0.423 * safezoneH + safezoneY;
    	w = 0.134062 * safezoneW;
    	h = 0.187 * safezoneH;
    };
  };

  class controls {
    class ui_BankPin_num1: Luke_RscButton
    {
    	idc = 1600;
    	text = "1"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 1];";
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num2: Luke_RscButton
    {
    	idc = 1601;
    	text = "2"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 2];";
    	x = 0.463906 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num3: Luke_RscButton
    {
    	idc = 1602;
    	text = "3"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 3];";
    	x = 0.489687 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num4: Luke_RscButton
    {
    	idc = 1603;
    	text = "4"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 4];";
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num5: Luke_RscButton
    {
    	idc = 1604;
    	text = "5"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 5];";
    	x = 0.463906 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num6: Luke_RscButton
    {
    	idc = 1605;
    	text = "6"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 6];";
    	x = 0.489687 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num7: Luke_RscButton
    {
    	idc = 1606;
    	text = "7"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 7];";
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.522 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num8: Luke_RscButton
    {
    	idc = 1607;
    	text = "8"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 8];";
    	x = 0.463906 * safezoneW + safezoneX;
    	y = 0.522 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num9: Luke_RscButton
    {
    	idc = 1608;
    	text = "9"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 9];";
    	x = 0.489687 * safezoneW + safezoneX;
    	y = 0.522 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_num0: Luke_RscButton
    {
    	idc = 1609;
    	text = "0"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin == 4) exitWith { [""Your bank code can be max 4 digits."", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin, 0];";
    	x = 0.463906 * safezoneW + safezoneX;
    	y = 0.566 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_delete: Luke_RscButton
    {
    	idc = 1610;
    	text = "DELETE"; //--- ToDo: Localize;
      action = "if (count PLRP_BankPin < 1) exitWith { [""Your bank code is empty!"", false] spawn domsg }; PLRP_BankPin set [count PLRP_BankPin - 1, -1];PLRP_BankPin = PLRP_BankPin - [-1];";
    	x = 0.515469 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.0464063 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_clear: Luke_RscButton
    {
    	idc = 1611;
    	text = "CLEAR"; //--- ToDo: Localize;
      action = "PLRP_BankPin = [];";
    	x = 0.515469 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.0464063 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_enter: Luke_RscButton
    {
    	idc = 1612;
    	text = "ENTER"; //--- ToDo: Localize;
      action = "PLRP_CharacterInfo set [count PLRP_CharacterInfo, PLRP_BankPin]; closeDialog 0; createDialog ""UI_Login"";";
    	x = 0.515469 * safezoneW + safezoneX;
    	y = 0.522 * safezoneH + safezoneY;
    	w = 0.0464063 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_numblank: Luke_RscButton
    {
    	idc = 1613;
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.566 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_numblank1: Luke_RscButton
    {
    	idc = 1614;
    	x = 0.489687 * safezoneW + safezoneX;
    	y = 0.566 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    };
    class ui_BankPin_blank: Luke_RscButton
    {
    	idc = 1615;
    	x = 0.515469 * safezoneW + safezoneX;
    	y = 0.566 * safezoneH + safezoneY;
    	w = 0.0464063 * safezoneW;
    	h = 0.033 * safezoneH;
    };
  };
  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT END
  ////////////////////////////////////////////////////////
};
