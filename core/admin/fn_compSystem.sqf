switch (_this select 0) do {
  case "OPEN": {
    if (!createDialog "UI_CompSystem") exitWith { hint "Dialog Error - (UI_CompSystem)" };
    PLRP_CompableUnits = playableUnits;
    {
      lbAdd [1500, format ["%1 - %2", _x getVariable ["realname", name _x], _x]]
    } forEach PLRP_CompableUnits;
  };
  case "RECIEVE": {
    cash_in_bank = cash_in_bank + (_this select 2);
    [format ["You have recieved $%1 in compensation from (%2)", (_this select 2), (_this select 1)], false] spawn domsg;
  };
  case "COMPENSATE": {
    _compensation = parseNumber (ctrlText 1400);
    _unit         = PLRP_CompableUnits select (lbCurSel 1500);

    if (_compensation > 0) then {
      ["RECIEVE", player getVariable "realname", _compensation] remoteExecCall ["admin_fnc_compSystem", _unit];
      [format ["You have given %1 $%2 in compensation", _unit getVariable ["realname", name player], _compensation], false] spawn domsg;
    } else {
      ["Please enter a valid number!", false] spawn domsg;
    };
  };
};
