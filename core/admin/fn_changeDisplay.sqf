if ((lbData [1500, 0]) == "COMMAND") then {
  lbClear 1500;
  life_admin_units = playableUnits;
  {
    _index = lbAdd [1500, format ["%1 - %2", _x getVariable ["realname", name player], _x]];
    lbSetData [1500, _index, format ["%1", _x]];
  } forEach life_admin_units;
  ctrlEnable [1600, false];
  ctrlSetText [1603, "Display Commands"]
} else {
  lbClear 1500;
  { lbAdd [1500, _x] } forEach (call compile format ["OL_Admin_%1_G_Commands", call PLRP_Staff_Rank]);
  lbSetData [1500, 0, "COMMAND"];
  ctrlShow [1502, false];
  ctrlEnable [1600, true];
};
