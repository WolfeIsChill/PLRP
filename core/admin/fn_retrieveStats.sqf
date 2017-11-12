private ["_player", "_primaryWeapon", "_secondaryWeapon", "_backpack", "_uniform", "_vest", "_attach", "_secondary"];
disableSerialization;

_player          = life_admin_players select (_this select 0);
_primaryWeapon   = if (!(primaryWeapon _player isEqualTo "")) then { getText(configFile >> "CfgWeapons" >> primaryWeapon _player >> "displayName") } else { "None" };
_secondaryWeapon = if (!(handgunWeapon _player isEqualTo "")) then { getText(configFile >> "CfgWeapons" >> handgunWeapon _player >> "displayName") } else { "None" };
_backpack        = if (!(backpack _player isEqualTo ""))      then { getText(configFile >> "CfgVehicles" >> backpack _player >> "displayName")     } else { "None" };
_uniform         = if (!(uniform _player isEqualTo ""))       then { getText(configFile >> "CfgWeapons" >> uniform _player >> "displayName")       } else { "None" };
_vest            = if (!(vest _player isEqualTo ""))          then { getText(configFile >> "CfgWeapons" >> vest _player >> "displayName")          } else { "None" };
_attach          = [];
_secondary       = [];

if (!(primaryWeapon _player isEqualTo "")) then {
  {
    if (!(_x isEqualTo "")) then { _attach pushBack (getText (configFile >> "CfgWeapons" >> _x >> "displayName")) };
  } forEach (primaryWeaponItems _player);
};

if (!(handgunItems _player isEqualTo "")) then {
  {
    if (!(_x isEqualTo "")) then { _secondary pushBack (getText (configFile >> "CfgWeapons" >> _x >> "displayName")) };
  } forEach (handgunItems _player);
};

if (count _attach isEqualTo 0) then { _attach = "None" };
if (count _secondary isEqualTo 0) then { _secondary = "None" };

((findDisplay 42069) displayCtrl 1100) ctrlSetStructuredText parseText format ["
  <t size='0.7'>
  Name: %1<br/>
  Player UID: %2<br/>
  Player Side: %3<br/>
  Bank: %4<br/>
  Money: %5<br/>
  Uniform: %6<br/>
  Vest: %7<br/>
  Backpack: %8<br/>
  Primary: %9<br/>
  Primary Attach: %10<br/>
  Secondary: %11<br/>
  Secondary Attach: %12<br/>
", _player getVariable ["realname", name _player], getPlayerUID _player, playerSide, [money_in_bank] call life_fnc_numberText, [cash_in_hand] call life_fnc_numberText, _uniform, _vest, _backpack, _primaryWeapon, _attach, _secondaryWeapon, _secondary];
