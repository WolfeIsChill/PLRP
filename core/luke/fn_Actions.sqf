/*
	File: fn_Actions.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

PLRP_Actions pushBack (player addAction ["Open Paintball Menu", { [] call LS_fnc_PaintballMenu }, "", 1, true, true, "", "player distance INTERACTION_OBJECT <= 5"]);
