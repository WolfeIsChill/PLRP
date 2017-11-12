/*
	File: fn_spawnPointCfg.sqf


	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = param [0,civilian,[civilian]];

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_main_spawn","PD Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_sd_spawn","SD Base","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"]
		];
	};

	case civilian:
	{

		if(!license_civ_rebel) then {
			_return = [
				["east_civ_spawn","East Civ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["west_civ_spawn","West Civ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];

			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};
		};
/*
		if(license_civ_rebel && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
				["west_civ_spawn","Rebel 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["west_civ_spawn","Rebel 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["east_civ_spawn","East Civ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["west_civ_spawn","West Civ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];



			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};
		};
		if(license_civ_rebel && (rebelshipment getVariable["progress",FALSE]) || license_civ_rebel && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["east_civ_spawn","East Civ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["west_civ_spawn","West Civ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];



			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};
		};*/
	};

	case independent: {
		_return = [
			["ems_hospital_spawn","Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["ems_substation_spawn","Substation","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
