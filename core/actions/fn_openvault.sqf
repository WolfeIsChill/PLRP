/*
open vault

cgbankvault is the variable name
*/

if (cgbankvault animationPhase "d_o_Anim" == 0 && cgbankvault animationPhase "d_l_Anim" == 1) then {
	["Vault Opening Starting.", false] spawn domsg;
	uiSleep 5;
	["Vault Opened Engaged.", false] spawn domsg;
	cgbankvault animate ["d_o_Anim",1];
} else {
	["The vault appears to be locked/open already..", false] spawn domsg;
};