/*
	File: initPlayerLocal.sqf

	Description:
	Starts the initialization of the player.
*/

if (!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
cutText ["", "BLACK FADED"];
[] execVM "core\init.sqf";
joinmode = 0;
