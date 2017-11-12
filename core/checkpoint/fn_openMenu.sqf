if (!createDialog "OL_CheckpointBuilder") exitWith { hint "Dialog error - (OL_CheckpointBuilder)" };

{
  lbAdd [1500, format ["Name: %1 - Price: ($%2)", (getText(configFile >> "cfgVehicles" >> (_x select 0) >> "displayName")), (_x select 1)]]
} forEach OL_CPBArray;
