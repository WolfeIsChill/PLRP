/*
	File: fn_PaintballMessage.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_chat", "_message"];

switch (_chat) do {
  case 0: { systemChat format ["[Paintball Error] %1", _message] };
  case 1: { systemChat format ["[Paintball] %1", _message] };
};
