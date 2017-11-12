/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["You are locking the bank vault.", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_l_Anim",0];
	cgbankvault setVariable["hacked", nil, true];
	["Vault locked.", false] spawn domsg;
} else {
	["You dont have the keys to this vault.", false] spawn domsg;
};