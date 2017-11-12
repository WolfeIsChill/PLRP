/*
  File: fn_Tele2Me.sqf
  Author: Luke Shaw
*/

switch (_this select 0) do {
  case "OPEN": {
    PLRP_TeleportableUnits = playableUnits;
    {
      lbAdd [1500, format ["%1 - %2", _x getVariable ["realname", name player], _x]]
    } forEach PLRP_TeleportableUnits;
  };
  case "TELEPORT": {
    _player = PLRP_TeleportableUnits select (_this select 0);
    (vehicle _player) setPosATL (getPosATL player);
    [format ["You teleported %1 to you.", _player getVariable ["realname", name player]], false] spawn domsg;
  };
};
