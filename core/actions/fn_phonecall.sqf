/*
phone call
phonecall
*/
if(cash_in_bank < 50) exitWith { ["You dont have $50 in your bank for this..", false] spawn domsg; };

["bank","take", 50] call life_fnc_handleCash;
[] call fnc_opentablet;