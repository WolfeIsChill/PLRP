/*
	File: fn_useItem.sqf


	Description:
	Main function for item effects and functionality through the player menu.
*/


private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {[localize "STR_ISTR_SelectItemFirst", false] spawn domsg;};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if (isNull objectParent player) then
			{

				playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];

			};
			["Add","Drink",50] spawn fnc_sustain;
			player setFatigue 0;
		};
	};
	case (_item == "nos"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_nos_count = life_nos_count + 8;
		};
	};


	case (_item == "panicbutton"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if( side player == west && !life_knockout && !(player getVariable["restrained",false]) && !(player getVariable["tied",false]) && !life_istazed ) then {
				[1,format["911 DISPATCH: PANIC BUTTON USED BY %1",name player]] remoteExecCall ["life_fnc_broadcast", west];
				[player,"panicbutton"] spawn life_fnc_nearestSound;
				["dpanic", false] remoteExec ["fnc_dispatch",west];
			};
			if( side player == independent && !life_knockout && !(player getVariable["restrained",false]) && !(player getVariable["tied",false]) && !life_istazed ) then {
				[1,format["911 DISPATCH: EMS IN TROUBLE %1",name player]] remoteExecCall ["life_fnc_broadcast", west];
				["dpanic", false] remoteExec ["fnc_dispatch",west];
			};
		};
	};

	case (_item == "weddingring"):
	{
		if( life_married != "-2" ) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				["Awesome! Someone wants to marry you! All the best!", false] spawn domsg;
				if(life_married == "-1") then {
					life_married = "someone";
				};
				if(life_married != "") then {
				[0,format["%1 just married %2! We wish you good luck!",profileName, life_married]] remoteExecCall ["life_fnc_broadcast", -2];
				life_married = "-2";
				};
			};
		}
		else
		{
			["You can't marry twice!", false] spawn domsg;
		};
	};

	case (_item == "condom"):
	{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_prostitute;
			};
	};



	case (_item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if (isNull objectParent player) then
			{

				playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];

			};


			["Add","Drink",50] spawn fnc_sustain;
			player setFatigue 0;
			if(life_intox <= 0.02) then
			{
			life_intox = 0.00;
			}
			else
			{
			life_intox = life_intox - 0.1;
			};
		};
	};

	case (_item == "cigarette"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{

			["You have consumed a Cigarette", false] spawn domsg;
			[] spawn life_fnc_useCigarette;
		};
	};

	case (_item == "zoobeer"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Light Beer", false] spawn domsg;
			life_intox = life_intox + 0.01;
			[] spawn fnc_intox;
		};
	};



	case (_item == "zoobeer2"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
		playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Heavy Beer", false] spawn domsg;
			life_intox = life_intox + 0.02;
			[] spawn fnc_intox;
		};
	};



	case (_item == "vodka"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Vodka Shot", false] spawn domsg;
			life_intox = life_intox + 0.05;
			[] spawn fnc_intox;
		};
	};





	case (_item == "jackdaniels"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Jack Daniels Shot", false] spawn domsg;
			life_intox = life_intox + 0.05;
			[] spawn fnc_intox;
		};
	};


	case (_item == "jagerbomb"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Jager Bomb", false] spawn domsg;
			life_intox = life_intox + 0.05;
			[] spawn fnc_intox;
		};
	};



	case (_item == "absinthe"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a shot of Absinthe", false] spawn domsg;
			life_intox = life_intox + 0.08;
			[] spawn fnc_intox;
		};
	};

	case (_item == "redwine"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Glass of Red Wine", false] spawn domsg;
			life_intox = life_intox + 0.02;
			[] spawn fnc_intox;
		};
	};


	case (_item == "whitewine"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Glass of White Wine", false] spawn domsg;
			life_intox = life_intox + 0.02;
			[] spawn fnc_intox;
		};
	};


	case (_item == "whiterussian"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a White Russian", false] spawn domsg;
			life_intox = life_intox + 0.04;
			[] spawn fnc_intox;
		};
	};


	case (_item == "sexonthebeach"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Sex on the Beach", false] spawn domsg;
			life_intox = life_intox + 0.03;
			[] spawn fnc_intox;
		};
	};


	case (_item == "tequila"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Shot of Tequila", false] spawn domsg;
			life_intox = life_intox + 0.06;
			[] spawn fnc_intox;
		};
	};

	case (_item == "jackdanielsandcoke"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a JD and Coke", false] spawn domsg;
			life_intox = life_intox + 0.04;
			[] spawn fnc_intox;
		};
	};



	case (_item == "Rax's Rum"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			["You have consumed a Rax's Rum", false] spawn domsg;
			life_intox = life_intox + 0.06;
			[] spawn fnc_intox;
		};
	};
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};

	case (_item == "blastingcharge"): {
		[localize "STR_ISTR_Blast_VaultOnly", false] spawn domsg;
	};

	// Drugs (Plant)
	case (_item == "cannabis seed"): {
		if (player distance (getMarkerPos "marijuana_marker") > 150) exitWith {["Sorry, This is not the correct place to grow Marijuana!", false] spawn domsg;};
		if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_plantMarijuana };
	};
	case (_item == "coke_seed"): {
		if (player distance (getMarkerPos "DRUGS_COKEFIELD_MARKER") > 150) exitWith { ["You cannot plant cocaine here, please go to the cocaine field!", false] spawn domsg };
		if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_plantCoke };
	};

	// Drugs (Use)
	case (_item == "marijuana"): { if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_useMarijuana } };
	case (_item == "heroinp"):   { if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_useHeroin    } };
	case (_item == "methp"): 		 { if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_useMeth      } };
	case (_item == "MDMAp"):	   { if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_useMDMA      } };
	case (_item == "cokep"):	 	 { if ([false, _item, 1] call life_fnc_handleInv) then { [] spawn life_fnc_useCoke      } };

	case (_item == "bec"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
			[] spawn life_fnc_useBEC;
		};
	};

	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item == "BarGate"):
	{
		if(!isNull life_bargate) exitWith {["You already have a BarGate active in deployment", false] spawn domsg;};
		if(playerSide == west || playerSide == independent) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_BarGate;
			};
		};
	};

	case (_item == "RoadCone"):
	{
		if(!isNull life_roadcone) exitWith {["You already have a Roadcone active in deployment", false] spawn domsg;};
		//if cop override and allow use of item
		if(playerSide == west || playerSide == independent) then {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_RoadCone;
			};
		};
	};

	case (_item == "RoadConeB"):
	{
		if(!isNull life_roadcone) exitWith {["You already have a Blinking Roadcone active in deployment", false] spawn domsg;};
		//if cop override and allow use of item
		if(playerSide == west || playerSide == independent) then {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[true] spawn life_fnc_RoadCone;
			};
		};
	};
	case (_item == "RoadConeStrip"):
	{
		if(!isNull life_roadcone) exitWith {["You already have a Roadcone Strip active in deployment", false] spawn domsg;};
		//if cop override and allow use of item
		if(playerSide == west || playerSide == independent) then {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_RoadConeStrip;
			};
		};
	};
	case (_item == "RoadConeStripB"):
	{
		if(!isNull life_roadcone) exitWith {["You already have a Blinking Roadcone Strip active in deployment", false] spawn domsg;};
		//if cop override and allow use of item
		if(playerSide == west || playerSide == independent) then {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[true] spawn life_fnc_RoadConeStrip;
			};
		};
	};

	case (_item == "RoadBlockConc"):
	{
		if(!isNull life_roadblock) exitWith {["You already have a Road Block active in deployment", false] spawn domsg;};
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_RoadBlockConc;
			};
	};

	case (_item == "RoadBlockWood"):
	{
		if(!isNull life_roadblock) exitWith {["You already have a Road Block active in deployment", false] spawn domsg;};
		//if cop override and allow use of item
		if(playerSide == west || playerSide == independent) then {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_RoadBlockWood;
			};
		};
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};

	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			playSound3D ["cg_sndimg\sounds\drink.ogg", player, false, getPosASL player, 6, 1, 45];

			["Add","Drink",30] spawn fnc_sustain;
			player setFatigue 0;
			[] spawn
			{
				life_num = 300;
				player enableFatigue false;

				while{life_num > 0} do {
					lifE_num = life_num - 1;
					sleep 1;
				};

				player enableFatigue true;
			};
		};
	};

	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {[localize "STR_ISTR_RefuelInVehicle", false] spawn domsg;};
		[] spawn life_fnc_jerryRefuel;
	};

	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};

	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		life_eattotal = life_eattotal + 10;
		playSound3D ["cg_sndimg\sounds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
		life_poop = life_poop + 5;
		[_item] call life_fnc_eatFood;
		if(life_eattotal > 90) then {
			player playMove "AmovPercMstpSnonWnonDnon_Scared2";
			[] spawn {
				uiSleep 2;
				[player,"vomit"] spawn life_fnc_nearestSound;
				waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
				life_eattotal = 0;
				["Remove","Food",35] spawn fnc_sustain;
				["Remove","Drink",35] spawn fnc_sustain;
				life_poop = 0;
			};
		} else {
			call fnc_poop;
		};
	};

	default
	{
		[localize "STR_ISTR_NotUsable", false] spawn domsg;
	};
};

[] call life_fnc_p_updateMenu;
