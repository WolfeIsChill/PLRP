/*
	File: fn_WhitelistLoad.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

// If you ever get stuck read the documentation lol.
// I didn't know it HAD to be a string lol.
// 10/10 amirite?
// tbh Idek if you are there.
LS_fnc_VariableConstant = {
  params ["_var", "_data"];

  systemChat format ["Processing Var %1 with Data %2", _var, _data];

  call compile format ['
    systemChat "%1 = %2";
    systemChat "%3";
    %1 = compileFinal ( str (%2) );
    systemChat "%1";
  ', _var, _data, typeName _var];

  systemChat format ["Processed Var %1", _var];
};

// Global Ranks
["PLRP_Staff_Rank",       (_this select 3)] call LS_fnc_VariableConstant;
["PLRP_Blacklist_Level",  (_this select 4)] call LS_fnc_VariableConstant;
["PLRP_Blacklist_Reason", (_this select 5)] call LS_fnc_VariableConstant;

switch (playerSide) do {
  case west: {
    ["PLRP_SD_Rank",          (_this select 5)] call LS_fnc_VariableConstant;
    ["PLRP_Aviation_Rank",    (_this select 6)] call LS_fnc_VariableConstant;
    ["PLRP_Corrections_Rank", (_this select 7)] call LS_fnc_VariableConstant;
    ["PLRP_FTO_Rank",         (_this select 8)] call LS_fnc_VariableConstant;
    ["PLRP_SWAT_Rank",        (_this select 9)] call LS_fnc_VariableConstant;
  };
  case resistance: {
    ["PLRP_EMS_Rank",        (_this select 10)] call LS_fnc_VariableConstant;
  };
  case civilian: {
    ["PLRP_DOJ_Rank",        (_this select 11)] call LS_fnc_VariableConstant;
    ["PLRP_Marshals_Rank",   (_this select 12)] call LS_fnc_VariableConstant;
  };
};
