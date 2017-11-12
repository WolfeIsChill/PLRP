private["_msg","_dMarker"];
if(life_is_arrested) exitWith {}; 
life_lastKnownPos = param [0,[],[[]]];
waitUntil{!deadPlayer};
_dMarker = createMarkerLocal["My Death Location",life_lastKnownPos];
_dMarker setMarkerTypeLocal "hd_warning";
_dMarker setMarkerTextLocal "My Death Location - Stay Away!";
_dMarker setMarkerColorLocal "ColorWhite";
NLR = time + 900;
while{!deadPlayer && (NLR - time) >= 0} do
{
	if(player distance life_lastKnownPos < 300) then {
		["You are close to the scene of your death - be sure to not reengage in the same RP situation.", false] spawn domsg;
	};
	uiSleep 30;
};
life_lastKnownPos = [0,0,0];
deleteMarker _dMarker;