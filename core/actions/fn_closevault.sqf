/*
close vault

cgbankvault is the variable name
*/

if ( cgbankvault animationPhase "d_o_Anim" == 1 ) then {
	["Vault Closing Starting.", false] spawn domsg;
	uiSleep 5;
	cgbankvault animate ["d_o_Anim",0];
	["Vault Closing Engaged.", false] spawn domsg;
} else {
	["The vault appears to be locked/closed already..", false] spawn domsg;
};