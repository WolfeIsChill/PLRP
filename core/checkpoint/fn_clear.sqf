{
  if (_x getVariable "CPB") then { deleteVehicle _x }
} forEach (nearestObjects [player, ["All"], 200]);
