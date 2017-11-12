#include <macro.h>
/*
	File:

	VEHICLES ARE 10% of WHAT THEY ARE IN HERE.
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = param [0,"",[""]];
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return =
		[
		];
	};
	case "showroom_car":
	{
		_return =
		[
		];
	};
	case "kart_shop":
	{
		_return =
		[
		];
	};
	case "med_shop":
	{
		_return =
		[
		];
	};
	case "med_air_hs": {
		_return =
		[
		];
	};
	case "exo_car":
	{
		_return =
		[
		];
	};

	case "chev_car":
	{
		_return =
		[
		];
	};
	case "ford_car":
	{
		_return =
		[
		];
	};
	case "dodge_car":
	{
		_return =
		[
		];
	};
	case "CIV_USED_CARS":
	{
		_return =
		[
			["C_Hatchback_01_green_F", 10]
		];
	};
	case "civ_motorbike":
	{
		_return =
		[
		];
	};


	case "civ_truck":
	{
		_return =
		[
		];
	};
	case "reb_car":
	{
		_return =
		[
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
		];
	};
	case "civ_air":
	{
		_return =
		[
		];
	};
	case "cop_air":
	{
		_return =
		[
		];
	};
	case "cop_airhq":
	{
		_return =
		[
		];
	};
	case "med_ship":
	{
		_return =
		[
		];
	};
	case "civ_ship":
	{
		_return =
		[
		];
	};
	case "cop_ship":
	{
		_return =
		[
		];
	};
};

_return;
