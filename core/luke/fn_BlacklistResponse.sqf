/*
	File: fn_BlacklistResponse.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_response"];

switch (_response) do {
  case "CLEAR": {
    titleText ["Blacklist Check Complete! (All Clear)", "BLACK"];
    PLRP_BlacklistChecked = true;
  };
  case "COP_BLACKLISTED": {
    titleText ["You have been blacklisted from cop by Sheriff High Command.", "BLACK"];
    [] spawn {
      for "_i" from 10 to 0 step - 1 do {
        systemChat format ["Returning to lobby in %1second(s)!", _i];
        uiSleep 1;
      };
      ["COP_Blacklisted", false, true] call BIS_fnc_endMission;
    };
  };
  case "EMS_BLACKLISTED": {
    titleText ["You have been blacklisted from EMS by Emergency Services High Command.", "BLACK"];
    [] spawn {
      for "_i" from 10 to 0 step - 1 do {
        systemChat format ["Returning to lobby in %1second(s)!", _i];
        uiSleep 1;
      };
      ["EMS_Blacklisted", false, true] call BIS_fnc_endMission;
    };
  };
};

uiSleep 2;
titleText ["", "BLACK IN"];
