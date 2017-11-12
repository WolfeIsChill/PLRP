/*
	File: fn_medicLoadout.sqf


	Description:
	Loads the medic out with the default gear.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceaddUniform "B_RangeMaster_F";

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "tf_microdagr";
player assignItem "tf_microdagr";

player addItem "itemRadio";
player assignItem "itemRadio";

[] call life_fnc_saveGear;
