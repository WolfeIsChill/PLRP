/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case independent:
	{
		life_actions pushBack (player addAction["<t color = '#d02b2b'>Emergency Eject</t>",life_fnc_EmergencyEject,"",0,false,false,"",' (driver vehicle player) == player && (vehicle player) isKindOf "Air" ']);

		//Ungag person
		life_actions pushBack (player addAction["<t color = '#d02b2b'>Remove Gag</t>",life_fnc_ungag,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 4 && isPlayer cursorTarget && (cursorTarget getVariable ["gagged", false])  && (!life_action_inUse) ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Drop Player</t>",life_fnc_dropbody,"",7,false,false,"",' isdragging ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Drag Player</t>",life_fnc_dragbody,"",7,false,false,"",' !life_action_inUse && vehicle player == player && (cursortarget getVariable["dead",FALSE]) && (player distance cursorTarget < 5) ']);

		life_actions pushBack (player addAction["<t color='#ADFF2F'>Bank Teller ATM</t>",life_fnc_atmMenu,"",7,false,false,"",' (cursorTarget getVariable ["ATM_MAN", false]) && cgbankvault animationPhase "d_l_Anim" == 0 && (player distance (getMarkerPos "bank_signup")) < 21 ']);


		life_actions pushBack (player addAction["<t color = '#D660D6'>Put on Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Remove Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);

		//Unblindfold person
		life_actions pushBack (player addAction["Remove blindfold",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable ["blindfolded", false]) ']);

		//Get out of the electric chair
		life_actions pushBack (player addAction["Stand Up",life_fnc_electric,"",0,false,false,"",' ( animationState player == "BasicDriver" && isNull objectParent player )  ']);

		//Pickup Item
		life_actions pushBack (player addAction["Pickup Item(s)",{createDialog "life_pickup_items"},"",0,false,false,"",
		' !isNull nearestObject (screenToWorld [0.5,0.5]) && count (nearestObject (screenToWorld [0.5,0.5]) getVariable ["item",[]]) > 0 && player distance nearestObject (screenToWorld [0.5,0.5]) <= 4 && !life_action_inUse && (isNull objectParent player)']);

		//Heal Person
		life_actions pushBack (player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (player getVariable "playerHealth") > 0 && !isdragging ']);

		//Heal Self
		life_actions pushBack (player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "playerHealth") > 0 && !isdragging ']);

		//Untie person
		life_actions pushBack (player addAction["Untie Person",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable ["tied", false]) ']);

		// Heli Fast Rope
		life_actions pushBack (player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']);

		life_actions pushBack (player addAction[localize "STR_pAct_sContPlayer","","",0,false,false,"",' (player getVariable ["diseaseon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_sHeatPlayer",life_fnc_sheatPlayer,"",0,false,false,"",' (player getVariable ["diseaseon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_sCoolPlayer",life_fnc_scoolPlayer,"",0,false,false,"",' (player getVariable ["diseaseon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_sHydratePlayer",life_fnc_shydratePlayer,"",0,false,false,"",' (player getVariable ["diseaseon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_sAntiViralPlayer",life_fnc_santiviralPlayer,"",0,false,false,"",' (player getVariable ["diseaseon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_sPainKillerPlayer",life_fnc_spainkillerPlayer,"",0,false,false,"",' (player getVariable ["diseaseon", 1]) > 1 ']);

		//healself system
		life_actions pushBack (player addAction[localize "STR_pAct_BandageSelf",life_fnc_bandageSelf,"",0,false,false,"",' (player getVariable ["bleedingon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_StitchSelf",life_fnc_stitchSelf,"",0,false,false,"",' (player getVariable ["woundedon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_SplintSelf",life_fnc_splintSelf,"",0,false,false,"",' (player getVariable ["fractureon", 1]) > 1 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_EpiPenSelf",life_fnc_epipenSelf,"",0,false,false,"",' (player getVariable ["unconciouson", 1]) > 1 ']);


		life_actions pushBack (player addAction["<t color = '#f4a84e'>Go to the Toilet</t>",life_fnc_takeashit,"",0,false,false,"",' life_poop > 80 && (isNull objectParent player) ']);
		//place roadcones
		life_actions pushBack (player addAction["Place Roadcone",{if(!isNull life_roadcone) then {{detach _x} foreach (life_roadcone getvariable "roadcone"); _handle = [life_roadcone,"roadcone"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [life_roadcone,"roadcone"] remoteExec ["life_fnc_enablecollisionwith"]; life_roadcone = ObjNull;};},"",999,false,false,"",'!isNull life_roadcone']);

		//Packup Roadcones
		life_actions pushBack (player addAction["Pack up Roadcone Strip",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && (count (_cones getVariable "roadcone") > 1)
		']);
		life_actions pushBack (player addAction["Pack up Roadcone",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") == 1}
		']);
		life_actions pushBack (player addAction["Pack up Roadcone Strip",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") > 1}
		']);
		life_actions pushBack (player addAction["Pack up Roadcone",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") == 1}
		']);

		//Pickup roadcone briefcases
		life_actions pushBack (player addAction["Pickup Blinking Roadcone Strip",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeStripB" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup Roadcone Strip",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeStrip" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup Blinking Roadcone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeB" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup Roadcone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "Roadcone" && (player distance cursorTarget) < 3 ']);

		//place roadblock
		life_actions pushBack (player addAction["Place Roadblock",{if(!isNull life_roadblock) then {{detach _x;} foreach (life_roadblock getvariable "roadblock");
		_handle = [life_roadblock,"roadblock"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [life_roadblock,"roadblock"] remoteExec ["life_fnc_enablecollisionwith"]; life_roadblock = ObjNull;};},"",999,false,false,"",'!isNull life_roadblock']);

		//Packup Roadblocks
		life_actions pushBack (player addAction["Pack up RoadBlock (Wooden)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']);
		life_actions pushBack (player addAction["Pack up RoadBlock (Fortified)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']);
		life_actions pushBack (player addAction["Pack up RoadBlock (Wreck)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["Land_MetalBarrel_empty_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}']);

		//Pickup roadblock briefcases
		life_actions pushBack (player addAction["Pickup RoadBlock (Wooden)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockWood" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup RoadBlock (Fortified)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockConc" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup RoadBlock (Wreck)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockRebel" && (player distance cursorTarget) < 3 ']);
	};
	case civilian:
	{

		life_actions pushBack (player addAction["<t color = '#f4a84e'>Harvest Marijuana</t>",life_fnc_harvestMarijuana,"",0,false,false,"",' _Marijuana = (nearestobjects [getpos player, ["CUP_bolsevnik_group"], 5] select 0); player distance _Marijuana < 5 && _Marijuana getVariable ["doneGrowing", false];']);

		life_actions pushBack (player addAction["<t color = '#f4a84e'>Burn Marijuana</t>",life_fnc_burnMarijuana,"",0,false,false,"",' _Marijuana = (nearestobjects [getpos player, ["CUP_bolsevnik_group"], 5] select 0); player distance _Marijuana < 5']);

		life_actions pushBack (player addAction["<t color = '#f4a84e'>Go to the Toilet</t>",life_fnc_takeashit,"",0,false,false,"",' life_poop > 80 && (isNull objectParent player) ']);

		life_actions pushBack (player addAction["<t color = '#d02b2b'>Emergency Eject</t>",life_fnc_EmergencyEject,"",0,false,false,"",' (driver vehicle player) == player && (vehicle player) isKindOf "Air" ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Drop Player</t>",life_fnc_dropbody,"",7,false,false,"",' isdragging ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Drag Player</t>",life_fnc_dragbody,"",7,false,false,"",' !life_action_inUse && vehicle player == player && (cursortarget getVariable["dead",FALSE]) && (player distance cursorTarget < 5) ']);

		life_actions pushBack (player addAction["<t color='#ADFF2F'>Bank Teller ATM</t>",life_fnc_atmMenu,"",7,false,false,"",' (cursorTarget getVariable ["ATM_MAN", false]) && cgbankvault animationPhase "d_l_Anim" == 0 && (player distance (getMarkerPos "bank_signup")) < 21 ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Put on Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Remove Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);

		//destroyevidence

		life_actions pushBack (player addAction["<t color = '#f4a84e'>Go to the Toilet</t>",life_fnc_takeashit,"",0,false,false,"",' life_poop > 80 && (isNull objectParent player) ']);

		life_actions pushBack (player addAction[localize "STR_pAct_Breakout",life_fnc_breakout,"",0,false,false,"",' life_breakouton == 2 && (!life_action_inUse) ']);

		life_actions pushBack (player addAction[localize "STR_pAct_ShovelWork",life_fnc_shovelwork,"",0,false,false,"",' (life_is_arrested) && (!life_action_inUse) && ((currentWeapon player) == "A3L_Shovel") ']);

		life_actions pushBack (player addAction["<t color='#FF0000'>Mobile Clothing</t>",life_fnc_clothingMenu,"bruce",0,false,false,"",' typeOf cursorTarget IN ["critgamin_vangmcc_clothing","critgamin_vangmcc_clothing"] && player distance cursorTarget < 5 && !dialog ']);

		//Pickup Item
		life_actions pushBack (player addAction["Pickup Item(s)",{createDialog "life_pickup_items"},"",0,false,false,"",
		' !isNull nearestObject (screenToWorld [0.5,0.5]) && count (nearestObject (screenToWorld [0.5,0.5]) getVariable ["item",[]]) > 0 && player distance nearestObject (screenToWorld [0.5,0.5]) <= 4 && !life_action_inUse && (isNull objectParent player)']);

		life_actions pushBack (player addAction["<t color='#fdff01'>Search Building</t>",life_fnc_lootHouse,"",0,false,false,"",'isNull objectParent player && (typeOf cursorTarget in["Land_u_House_Small_01_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V1_F","Land_d_House_Small_01_V1_F","Land_u_House_Big_02_V1_F","Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F","Land_A_Villa_EP1","Land_e76_us_house02a","Land_e76_us_house01","Land_e76_us_house01a","Land_e76_us_house01a","Land_e76_us_house01b","Land_mbg_ger_pub_1","Land_mbg_ger_pub_2","Land_Offices_01_V1_F","Land_MilOffices_V1_F","Land_Cargo_House_V1_F","Land_Cargo_House_V2_F","Land_Cargo_House_V3_F","Land_Medevac_house_V1_F","Land_Research_house_V1_F","Land_Slum_House01_F","Land_Slum_House03_F","Land_Slum_House02_F","Land_cargo_house_slum_F","Land_i_Addon_02_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F","Land_i_House_Small_03_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]) && (vehicle player) distance cursorTarget < 3 && !(cursorTarget getVariable ["looted",FALSE]) && playerSide == civilian']);

		//Heal Person
		life_actions pushBack (player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (player getVariable "playerHealth") > 0.2 && (life_inv_bandage > 0) && !isdragging ']);

		//Heal Self
		life_actions pushBack (player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "playerHealth") > 0.2 && (life_inv_bandage > 0) && !isdragging ']);

		// Heli Fast Rope
		life_actions pushBack (player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']);

			//Get out of the electric chair
		life_actions pushBack (player addAction["Stand Up",life_fnc_electric,"",0,false,false,"",' ( animationState player == "BasicDriver" && isNull objectParent player ) ']);

		//place roadblock
		life_actions pushBack (player addAction["Place Roadblock",{if(!isNull life_roadblock) then {{detach _x;} foreach (life_roadblock getvariable "roadblock");
		_handle = [life_roadblock,"roadblock"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [life_roadblock,"roadblock"] remoteExec ["life_fnc_enablecollisionwith"]; life_roadblock = ObjNull;};},"",999,false,false,"",'!isNull life_roadblock']);

		life_actions pushBack (player addAction["Pack up RoadBlock (Fortified)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']);

		life_actions pushBack (player addAction ["Process (LSD)", life_fnc_processAction, "lsd", 0, false, false, "", '(player distance Shop_Gangarea < 5) || debug']);
	};

	case west:
	{

		life_actions pushBack (player addAction["<t color = '#f4a84e'>Burn Marijuana</t>",life_fnc_burnMarijuana,"",0,false,false,"",' _Marijuana = (nearestobjects [getpos player, ["CUP_bolsevnik_group"], 5] select 0); player distance _Marijuana < 5']);

		life_actions pushBack (player addAction["<t color = '#d02b2b'>Emergency Eject</t>",life_fnc_EmergencyEject,"",0,false,false,"",' (driver vehicle player) == player && (vehicle player) isKindOf "Air" ']);

		//Ungag person
		life_actions pushBack (player addAction["<t color = '#d02b2b'>Remove Gag</t>",life_fnc_ungag,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 4 && isPlayer cursorTarget && (cursorTarget getVariable ["gagged", false])  && (!life_action_inUse) ']);


		life_actions pushBack (player addAction["<t color = '#ADFF2F'>Drop Player</t>",life_fnc_dropbody,"",7,false,false,"",' isdragging ']);

		life_actions pushBack (player addAction["<t color = '#ADFF2F'>Drag Player</t>",life_fnc_dragbody,"",7,false,false,"",' !isdragging && !life_action_inUse && vehicle player == player && (cursortarget getVariable["dead",FALSE]) && (player distance cursorTarget < 5) ']);

		life_actions pushBack (player addAction["<t color='#ADFF2F'>Bank Teller ATM</t>",life_fnc_atmMenu,"",7,false,false,"",' (cursorTarget getVariable ["ATM_MAN", false]) && cgbankvault animationPhase "d_l_Anim" == 0 && (player distance (getMarkerPos "bank_signup")) < 21 ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Put on Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);

		life_actions pushBack (player addAction["<t color = '#D660D6'>Remove Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);

		//gatherevidence
		life_actions pushBack (player addAction["Gather Evidence",life_fnc_gatherEvidence,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_Suitcase_F"']);


		life_actions pushBack (player addAction["<t color = '#f4a84e'>Go to the Toilet</t>",life_fnc_takeashit,"",0,false,false,"",' life_poop > 80 && (isNull objectParent player) ']);

		//Heal Person
		life_actions pushBack (player addAction["Heal Self",life_fnc_healself,"",0,false,false,"",' (player getVariable "playerHealth") > 0.2 && (life_inv_bandage > 0) && !isdragging ']);

		//Heal Self
		life_actions pushBack (player addAction["Heal Person",life_fnc_healperson,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable "playerHealth") > 0.2 && (life_inv_bandage > 0) && !isdragging ']);

		//Pickup Item
		life_actions pushBack (player addAction["Pickup Item(s)",{createDialog "life_pickup_items"},"",0,false,false,"",
		' !isNull nearestObject (screenToWorld [0.5,0.5]) && count (nearestObject (screenToWorld [0.5,0.5]) getVariable ["item",[]]) > 0 && player distance nearestObject (screenToWorld [0.5,0.5]) <= 4 && !life_action_inUse && (isNull objectParent player)']);

		life_actions pushBack (player addAction["Seize Items",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']);

		//Get out of the electric chair
		life_actions pushBack (player addAction["Stand Up",life_fnc_electric,"",0,false,false,"",' ( animationState player == "BasicDriver" && isNull objectParent player )  ']);

		//electrocute victim
		life_actions pushBack (player addAction["Electrocute Victim",life_fnc_electricchairdo,"",0,false,false,"",' ( animationState cursorTarget == "BasicDriver" && vehicle cursorTarget == cursorTarget )  ']);

		//Unblindfold person
		life_actions pushBack (player addAction["Remove blindfold",life_fnc_untieb,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (cursorTarget getVariable ["blindfolded", false]) ']);

		//Untie person
		life_actions pushBack (player addAction["Untie Person Person",life_fnc_untie,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 1.5 && isPlayer cursorTarget && (cursorTarget getVariable ["tied", false]) ']);

		//heal system
		life_actions pushBack (player addAction[localize "STR_pAct_NoBandagePlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable ["bleedingon", 1]) == 2 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_NoStitchPlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable ["woundedon", 1]) == 2 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_NoSplintPlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable ["fractureon", 1]) == 2 ']);

		life_actions pushBack (player addAction[localize "STR_pAct_NoEpiPenPlayer","","",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3 && isPlayer cursorTarget && (cursorTarget getVariable ["unconciouson", 1]) == 2 ']);

		//Pickup Unprocessed MDMA
		life_actions pushBack
		(player addAction["Pickup Unprocessed MDMA",life_fnc_pickupItem,false,0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "MDMAu" && (player distance cursorTarget) < 3 && (life_carryWeight + (["MDMAu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		//Pickup Processed MDMA
		life_actions pushBack
		(player addAction["Pickup Processed MDMA",life_fnc_pickupItem,true,0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "MDMAp" && (player distance cursorTarget) < 3 && (life_carryWeight + (["MDMAp"] call life_fnc_itemWeight)) <= life_maxWeight ']);

		//Pickup Unprocessed Meth
		life_actions pushBack
		(player addAction["Pickup Unprocessed Meth",life_fnc_pickupItem,false,0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "methu" && (player distance cursorTarget) < 3 && (life_carryWeight + (["methu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		//Pickup Processed Meth
		life_actions pushBack
		(player addAction["Pickup Processed Meth",life_fnc_pickupItem,true,0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "methp" && (player distance cursorTarget) < 3 && (life_carryWeight + (["methp"] call life_fnc_itemWeight)) <= life_maxWeight ']);

		//Pickup Unprocessed Coke
		life_actions pushBack
		(player addAction["Pickup Unprocessed Coke",life_fnc_pickupItem,false,0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "cokeu" && (player distance cursorTarget) < 3 && (life_carryWeight + (["cokeu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		//Pickup Processed Coke
		life_actions pushBack
		(player addAction["Pickup Processed Coke",life_fnc_pickupItem,true,0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "cokep" && (player distance cursorTarget) < 3 && (life_carryWeight + (["cokep"] call life_fnc_itemWeight)) <= life_maxWeight ']);


		// Heli Fast Rope
		life_actions pushBack (player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']);

		//place bargate
		life_actions pushBack (player addAction["Place BarGate",{if(!isNull life_bargate) then {{detach _x} foreach (life_bargate getvariable "bargate"); _handle = [life_bargate,"bargate"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [life_bargate,"bargate"] remoteExec ["life_fnc_enablecollisionwith"]; life_bargate = ObjNull;};},"",999,false,false,"",'!isNull life_bargate']);

		//Packup BarGate
		life_actions pushBack (player addAction["Pack up BarGate",life_fnc_packupbargate,"",0,false,false,"",'
		_bargate = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_bargate" && !isNil {(_bargate getVariable "bargate")}']);

		//Pickup BarGate Briefcases
		life_actions pushBack (player addAction["Pickup BarGate",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "BarGate" && (player distance cursorTarget) < 3 ']);

		//place roadcones
		life_actions pushBack (player addAction["Place Roadcone",{if(!isNull life_roadcone) then {{detach _x} foreach (life_roadcone getvariable "roadcone"); _handle = [life_roadcone,"roadcone"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [life_roadcone,"roadcone"] remoteExec ["life_fnc_enablecollisionwith"]; life_roadcone = ObjNull;};},"",999,false,false,"",'!isNull life_roadcone']);

		//Packup Roadcones
		life_actions pushBack (player addAction["Pack up Roadcone Strip",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && (count (_cones getVariable "roadcone") > 1)
		']);
		life_actions pushBack (player addAction["Pack up Roadcone",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") == 1}
		']);
		life_actions pushBack (player addAction["Pack up Roadcone Strip",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") > 1}
		']);
		life_actions pushBack (player addAction["Pack up Roadcone",life_fnc_packupRoadcones,"",0,false,false,"",'
		_cones = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_cones" && !isNil {(_cones getVariable "roadcone")} && {count (_cones getVariable "roadcone") == 1}
		']);

		//Pickup roadcone briefcases
		life_actions pushBack (player addAction["Pickup Blinking Roadcone Strip",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeStripB" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup Roadcone Strip",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeStrip" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup Blinking Roadcone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadconeB" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup Roadcone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "Roadcone" && (player distance cursorTarget) < 3 ']);

		//place roadblock
		life_actions pushBack (player addAction["Place Roadblock",{if(!isNull life_roadblock) then {{detach _x;} foreach (life_roadblock getvariable "roadblock");
		_handle = [life_roadblock,"roadblock"] spawn life_fnc_enablecollisionwith; waitUntil {scriptDone _handle}; [life_roadblock,"roadblock"] remoteExec ["life_fnc_enablecollisionwith"]; life_roadblock = ObjNull;};},"",999,false,false,"",'!isNull life_roadblock']);

		//Packup Roadblocks
		life_actions pushBack (player addAction["Pack up RoadBlock (Wooden)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']);
		life_actions pushBack (player addAction["Pack up RoadBlock (Fortified)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["RoadCone_L_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}
		']);
		life_actions pushBack (player addAction["Pack up RoadBlock (Wreck)",life_fnc_packupRoadblock,"",0,false,false,"",'
		_roadblock = nearestObjects[getPos player,["Land_MetalBarrel_empty_F"],3.5] select 0; !isNil "_roadblock" && !isNil {(_roadblock getVariable "RoadBlock")}']);

		//Pickup roadblock briefcases
		life_actions pushBack (player addAction["Pickup RoadBlock (Wooden)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockWood" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup RoadBlock (Fortified)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockConc" && (player distance cursorTarget) < 3 ']);
		life_actions pushBack (player addAction["Pickup RoadBlock (Wreck)",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "RoadBlockRebel" && (player distance cursorTarget) < 3 ']);
	};
};
