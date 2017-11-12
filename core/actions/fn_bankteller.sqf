/*
File: bank teller payments
*/

if(has_job) exitwith { ["You already have a job! Press Shift + 4 to quit!", false] spawn domsg;};

if(side player != civilian) exitwith { ["Civilians Only!", false] spawn domsg;  };
if(life_bankteller) exitWith {
["You are already signed up as a Bank Worker.", false] spawn domsg; 
};
if(uniform player find "KAEL_SUITS" isEqualTo -1) exitwith {
	["You need a Formal Suit to be a Bank Worker.", false] spawn domsg; 
};

has_job = true;
life_bankteller = true;


["You get paid extra for staying around the bank.. you are now a mobile ATM!", false] spawn domsg; 

_fkit = 45;
player setVariable["ATM_MAN", true, true];
while{_fkit > 0 && life_bankteller } do {
	uiSleep 60;

	if(isNull objectParent player && (player distance (getMarkerPos "bank_signup")) < 21) then {
		if(Uniform player == "KAEL_SUITS_BR_F12") then
		{
			["bank","add", 195] call life_fnc_handleCash;
			["You just got paid an extra $195", false] spawn domsg; 
		};
	};
	if((player distance (getMarkerPos "fed_reserve")) > 30) exitwith {

	};
	_fkit = _fkit - 1;
	if(_fkit == 5) then {
		["Your Bank payments stop in 5 minutes..", false] spawn domsg; 
	};
};
life_bankteller = false;
player setVariable["ATM_MAN", nil, true];


["Your Bank payments have stopped", false] spawn domsg; 

has_job = false;