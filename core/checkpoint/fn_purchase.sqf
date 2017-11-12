if ((_this select 0) == -1) exitWith { player groupChat "You must select an item!" };
closeDialog 0;

_item = OL_CPBArray select (_this select 0);

if (cash_in_bank >= (_item select 1)) then {
  cash_in_bank = cash_in_bank - (_item select 1);
} else {
  [format ["You do not have enough money to buy a %1", (getText(configFile >> "cfgVehicles" >> (_x select 0) >> "displayName"))], false] spawn domsg;
};

item = (_item select 0) createVehicle (position player);
item attachTo [vehicle player, _item select 2];
item setVariable ["CPB", true, true];
player setVariable ["CarryingCP", true, true];
