/*
	File: fn_PaintballRefreshMenu.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

lbClear 1500;
lbClear 1501;

_Paintball_Players = INTERACTION_OBJECT getVariable ["Luke_PB_Information", []];

if (count _Paintball_Players > 0) then {
  {
    switch (_x select 3) do {
      case "BLUE_TEAM": { lbAdd [1500, format ["%1", _x select 1]] };
      case "RED_TEAM":  { lbAdd [1501, format ["%1", _x select 1]] };
    };
  } forEach _Paintball_Players;
};


switch (player getVariable ["PLRP_PaintballTeam", ""]) do {
  case "BLUE_TEAM": {
    ctrlSetText [1600, "Leave Blue Team"];
    ctrlSetText [1601, "Join Red Team"];

    ctrlEnable [1600, true];
    ctrlEnable [1601, false];

    buttonSetAction [1600, "[] spawn LS_fnc_PaintballLeave; [] spawn LS_fnc_PaintballRefreshMenu;"];
    buttonSetAction [1601, "['RED_TEAM'] spawn LS_fnc_PaintballJoin; [] spawn LS_fnc_PaintballRefreshMenu;"];
  };
  case "RED_TEAM": {
    ctrlSetText [1600, "Join Blue Team"];
    ctrlSetText [1601, "Leave Red Team"];

    ctrlEnable [1600, false];
    ctrlEnable [1601, true];

    buttonSetAction [1600, "['BLUE_TEAM'] spawn LS_fnc_PaintballJoin;"];
    buttonSetAction [1601, "[] spawn LS_fnc_PaintballLeave;"];
  };
  default {
    ctrlSetText [1600, "Join Blue Team"];
    ctrlSetText [1601, "Join Red Team"];

    ctrlEnable [1600, true];
    ctrlEnable [1601, true];

    buttonSetAction [1600, "['BLUE_TEAM'] spawn LS_fnc_PaintballJoin;"];
    buttonSetAction [1601, "['RED_TEAM'] spawn LS_fnc_PaintballJoin;"];
  };
};
