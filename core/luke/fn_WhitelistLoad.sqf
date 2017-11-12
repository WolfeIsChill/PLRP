/*
	File: fn_WhitelistLoad.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

// Global Ranks
["PLRP_Staff_Rank",       (_this select 3)] call LS_fnc_VariableConstant;
["PLRP_Blacklist_Level",  (_this select 4)] call LS_fnc_VariableConstant;
["PLRP_Blacklist_Reason", (_this select 5)] call LS_fnc_VariableConstant;

switch (playerSide) do {
  // Sheriff
  case west: {
    ["PLRP_SD_Rank",          (_this select 6)] call LS_fnc_VariableConstant;
    ["PLRP_Aviation_Rank",    (_this select 7)] call LS_fnc_VariableConstant;
    ["PLRP_Corrections_Rank", (_this select 8)] call LS_fnc_VariableConstant;
    ["PLRP_FTO_Rank",         (_this select 9)] call LS_fnc_VariableConstant;
    ["PLRP_SWAT_Rank",        (_this select 10)] call LS_fnc_VariableConstant;
  };
  // EMS
  case resistance: {
    ["PLRP_EMS_Rank",        (_this select 11)] call LS_fnc_VariableConstant;
  };
  // Civilian
  case civilian: {
    ["PLRP_DOJ_Rank",        (_this select 12)] call LS_fnc_VariableConstant;
    ["PLRP_Marshals_Rank",   (_this select 13)] call LS_fnc_VariableConstant;
  };
};
