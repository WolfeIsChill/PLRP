if ((_this select 0) == "") exitWith { hint "Please select a command." };
if (dialog) then { closeDialog 0 };

switch (_this select 0) do {
  case "Delete": {
    if (isNull cursorTarget) exitWith {};

    deleteVehicle cursorTarget;
    hint format ["Deleted: %1", cursorTarget];
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Spectate (F3 to Quit)": {
    [] call admin_fnc_spectate;
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Luke's Comp System": {
    ["OPEN"] call admin_fnc_compSystem;
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Tags (inc. Vehicles)": {
    [] call admin_fnc_tags;
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Teleport": {
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "20 Dounts": {
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Heal/Repair (5M)": {
    { _x setDamage 0 } forEach (nearestObjects [getPosATL player, ["All"], 5]);
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Teleport 2 Me": {
    [] call admin_fnc_tele2me;
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "10M Clean Up": {
    {
      deleteVehicle _x
    } forEach (nearestObjects [getPosATL player, ["All"], 10]);
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "GPS,NVG,BINOC": {
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "PGSpawn": {
    if (!createDialog "balca_debug_main") exitWith { hint "Dialog Error! - (balca_debug_main)" };
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "World Heal": {
    {
      _x setDamage 0
    } forEach (nearestObjects [getPosATL player, ["All"], 30000]);
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Server Cleaner": {
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
  case "Global Comp. 100k": {
    [format ['cash_in_bank = cash_in_bank + 100000; ["Admin %1 has given 100k global comp!", false] spawn domsg;', player getVariable "realname"]] remoteExec ["LS_fnc_CompileCode", -2];
    [format ["[ADMIN_LOG] %1 has ran command %2", player getVariable ["realname", name player], _this select 0], "(call PLRP_Staff_Rank) >= 4"] remoteExec ["LS_fnc_Notification", -2];
  };
};
