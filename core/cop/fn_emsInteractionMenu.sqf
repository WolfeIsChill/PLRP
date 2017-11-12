/*
	File: fn_emsInteractionMenu.sqf
*/
#define Btn1 37551
#define Btn2 37552
#define Btn3 37553
#define Btn4 37554
#define Btn5 37555
#define Btn6 37556
#define Btn7 37557
#define Btn8 37558
#define Btn9 37559
#define Btn10 37560

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_diseaseon","_koildebiiii","_koildebiii","_koildebii","_koildebi","_koildeb"];
if(!dialog) then {
	createDialog "medicInteraction_Menu";
};
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?

_display = findDisplay 37500;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
life_pInact_curTarget = _curTarget;

_Btn1 ctrlSetText localize "STR_pInAct_Escort";
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";

_Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_emsInteractionMenu; closeDialog 0;";

_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

_Btn4 ctrlSetText localize "STR_pInAct_ApplyAirKit";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_ApplyAir; [life_pInact_curTarget] call life_fnc_emsInteractionMenu;";
if(life_inv_airkit > 0) then { _Btn5 ctrlEnable true; } else { _Btn5 ctrlEnable false; };

_diseaseon = "No Disease";

_bleedingon = "No Head Trauma";
_woundedon = "No Chest Trauma";
_unconciouson = "No Leg Trauma";
_fractureon = "No Arm Trauma";

_koildeb = 1;
_koildeb = life_pInact_curTarget getVariable ["bleedingon", 1];

_koildebi = 1;
_koildebi = life_pInact_curTarget getVariable ["woundedon", 1];

_koildebii = 1;
_koildebii = life_pInact_curTarget getVariable ["fractureon", 1];

_koildebiii = 1;
_koildebiii = life_pInact_curTarget getVariable ["unconciouson", 1];

_koildebiiii = 1;
_koildebiiii = life_pInact_curTarget getVariable ["diseaseon", 1];


if(_koildebiiii > 1) then {
	if(_koildebiiii == 2) then {
		_diseaseon = "Ebola Symptoms";	
	};

	if(_koildebiiii == 3) then {
		_diseaseon = "Sars Symptoms";	
	};

	if(_koildebiiii == 4) then {
		_diseaseon = "Heavy Infection";	
	};

	if(_koildebiiii == 5) then {
		_diseaseon = "Small Pox";	
	};

	if(_koildebiiii == 6) then {
		_diseaseon = "Influenza";	
	};

	if(_koildebiiii > 6) then {
		_diseaseon = "Malaria";	
	};
};

if(_koildebiii > 1) then {
	if(_koildebiii == 2) then {
		_unconciouson = "Left Leg Cuts";	
	};

	if(_koildebiii == 3) then {
		_unconciouson = "Left Leg Wound";	
	};

	if(_koildebiii == 4) then {
		_unconciouson = "Left Leg Fracture";	
	};

	if(_koildebiii == 5) then {
		_unconciouson = "Right Leg Cuts";	
	};

	if(_koildebiii == 6) then {
		_unconciouson = "Right Leg Wound";	
	};

	if(_koildebiii == 7) then {
		_unconciouson = "Right Leg Fracture";	
	};
};


if(_koildebii > 1) then {
	if(_koildebii == 2) then {
		_fractureon = "Left Arm Cuts";	
	};

	if(_koildebii == 3) then {
		_fractureon = "Left Arm Wound";	
	};

	if(_koildebii == 4) then {
		_fractureon = "Left Arm Fracture";	
	};

	if(_koildebii == 5) then {
		_fractureon = "Right Arm Cuts";	
	};

	if(_koildebii == 6) then {
		_fractureon = "Right Arm Wound";	
	};

	if(_koildebii == 7) then {
		_fractureon = "Right Arm Fracture";	
	};
};


if(_koildebi > 1) then {
	if(_koildebi == 2) then {
		_woundedon = "Chest Cuts";	
	};

	if(_koildebi == 3) then {
		_woundedon = "Chest Wounds";	
	};

	if(_koildebi == 4) then {
		_woundedon = "Chest Fracture";	
	};

	if(_koildebi == 5) then {
		_woundedon = "Internal Bleeding";	
	};
};

if(_koildeb > 1) then {
	if(_koildeb == 2) then {
		_bleedingon = "Head Cuts";	
	};

	if(_koildeb == 3) then {
		_bleedingon = "Head Wounds";	
	};

	if(_koildeb == 4) then {
		_bleedingon = "Head Fracture";	
	};

	if(_koildeb == 5) then {
		_bleedingon = "Brain Swelling";	
	};
};

_Btn5 ctrlSetText format["%1", _diseaseon];
_Btn5 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_emsInteractionMenu2;";
if(_koildebiiii > 1 || _diseaseon != "No Disease") then { _Btn5 ctrlEnable true; } else { _Btn5 ctrlEnable false; };

_Btn6 ctrlSetText format["%1", _bleedingon];
_Btn6 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_bandagePlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable ["bleedingon", 1]) > 1) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false;};

_Btn7 ctrlSetText format["%1", _woundedon];
_Btn7 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_stitchPlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable ["woundedon", 1]) > 1) then { _Btn7 ctrlEnable true;} else {_Btn7 ctrlEnable false;};

_Btn8 ctrlSetText format["%1", _fractureon];
_Btn8 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_splintPlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable ["fractureon", 1]) > 1) then { _Btn8 ctrlEnable true;} else {_Btn8 ctrlEnable false;};

_Btn9 ctrlSetText format["%1", _unconciouson];
_Btn9 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_epipenPlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable ["unconciouson", 1]) > 1) then { _Btn9 ctrlEnable true;} else {_Btn9 ctrlEnable false;};

_Btn10 ctrlSetText "Severe Injuries";
_Btn10 buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_emsInteractionMenu;";
if((life_pInact_curTarget getVariable["severeInjuries",FALSE])) then { _Btn10 ctrlEnable true;} else { _Btn10 ctrlEnable false; _Btn10 ctrlSetText "No Severe Injuries";};
