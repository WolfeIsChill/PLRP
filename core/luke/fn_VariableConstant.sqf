/*
	File: fn_VariableConstant.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_var", "_data"];

call compile format ['
  %1 = compileFinal ( str (%2) );
', _var, _data];
