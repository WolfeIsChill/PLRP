/*
	File: fn_Notification.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_message", "_conditions"];

if (call compile (_conditions)) then { [_message, false] spawn domsg };
