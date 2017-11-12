/*
	File: fn_PaintballMenu.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

if (!createDialog "ui_Paintball") exitWith { hint "Dialog Error! (ui_Paintball)" };

_Paintball_Players = INTERACTION_OBJECT getVariable ["Luke_PB_Information", []];

if (count _Paintball_Players < 1) exitWith {};

{
  switch (_x select 3) do {
    case "BLUE_TEAM": { lbAdd [1500, format ["%1", _x select 1]] };
    case "RED_TEAM":  { lbAdd [1501, format ["%1", _x select 1]] };
  };
} forEach _Paintball_Players;

switch (player getVariable ["PLRP_PaintballTeam", ""]) do {
  case "BLUE_TEAM": {
    ctrlSetText [1600, "Leave Blue Team"];
    ctrlEnable [1601, false];
    buttonSetAction [1600, "[] call LS_fnc_PaintballLeave; [] call LS_fnc_PaintballRefreshMenu;"];
  };
  case "RED_TEAM": {
    ctrlSetText [1601, "Leave Red Team"];
    ctrlEnable [1600, false];
    buttonSetAction [1601, "[] call LS_fnc_PaintballLeave; [] call LS_fnc_PaintballRefreshMenu;"];
  };
};
