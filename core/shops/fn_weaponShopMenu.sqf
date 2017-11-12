/*
	File: fn_weaponShopMenu.sqf


	Description:
	Something
*/

OL_PD_Shops = [
  ["COP_WEP_PO1",   1],
  ["COP_WEP_PO2",   2],
  ["COP_WEP_PO3",   3],
  ["COP_WEP_CPL",   4],
  ["COP_WEP_SGT",   5],
  ["COP_WEP_LT",    6],
  ["COP_WEP_CPT",   7]
];

{
  if ((_this select 3) == (_x select 0) && !(call PLRP_SD_Rank >= (_x select 2))) exitWith { hint "You are not whitelisted for this shop!" };
} forEach OL_PD_Shops;

private["_config","_itemInfo","_itemList"];
uiNamespace setVariable ["Weapon_Shop",_this select 3];

disableSerialization;
if(!(createDialog "life_weapon_shop")) exitwith {};

_config = [_this select 3] call life_fnc_weaponShopCfg;

if(typeName _config == "STRING") exitWith {[_config, false] spawn domsg; closeDialog 0;};

ctrlSetText[38401,_config select 0];

_filters = ((findDisplay 38400) displayCtrl 38402);
lbClear _filters;

_filters lbAdd localize "STR_Shop_Weapon_ShopInv";
_filters lbAdd localize "STR_Shop_Weapon_YourInv";

_filters lbSetCurSel 0;
