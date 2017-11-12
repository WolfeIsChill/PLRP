/*
	File: fn_Login.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_username", "_password"];

if ((_username == (PLRP_CharacterInfo select 4)) && (_password == (PLRP_CharacterInfo select 5))) then {
  if (dialog) then { closeDialog 0 };
  ["Login Accepted.", false] spawn domsg;
  PLRP_LoggedIn = true;
} else {
  ["Incorrect Username or Password.", false] spawn domsg;
};
