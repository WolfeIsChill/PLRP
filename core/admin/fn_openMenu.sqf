if ((call PLRP_Staff_Rank) < 1)   exitWith { ["I don't know how you got here.....", false] spawn domsg };
if (!createDialog "UI_StaffMenu") exitWith { hint "Dialog Error! - (UI_StaffMenu)" };

{ if ((call PLRP_Staff_Rank) in (_x select 1)) then { lbAdd [1500, _x select 0] } } forEach PLRP_StaffPanelItems;
