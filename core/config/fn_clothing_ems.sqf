/*
	File: fn_clothing_bruce.sqf
	
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["cg_ems1", nil, 2],
			["cg_ems2", nil, 2],
			["cg_ems3", nil, 2],
			["cg_ems4", nil, 2],
			["cg_ems5", nil, 2],
			["cg_ems6", nil, 2],
			["cg_ems7", nil, 2],
			["cg_ems8", nil, 2],
			["cg_ems10", nil, 2],
			["cg_ems9", nil, 2],
			["RF_EMS_1", nil, 2],
			["RF_EMSWING_4", nil, 2]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 2],
			["A3L_medic_helmet", nil, 2],
			["TCG_pdav_helmet", nil, 2],
			["H_CrewHelmetHeli_B", nil, 2]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Diving",nil,50],
			//beards
			["SFG_Tac_smallBeardB",nil,2],
			["SFG_Tac_smallBeardD",nil,2],
			["SFG_Tac_smallBeardG",nil,2],
			["SFG_Tac_smallBeardO",nil,2],
			["SFG_Tac_BeardB",nil,2],
			["SFG_Tac_BeardD",nil,2],
			["SFG_Tac_BeardG",nil,2],
			["SFG_Tac_BeardO",nil,2],
			["SFG_Tac_chinlessbB",nil,2],
			["SFG_Tac_chinlessbD",nil,2],
			["SFG_Tac_chinlessbG",nil,2],
			["SFG_Tac_chinlessbO",nil,2],
			["SFG_Tac_moustacheB",nil,2],
			["SFG_Tac_moustacheD",nil,2],
			["SFG_Tac_moustacheG",nil,2],
			["SFG_Tac_moustacheO",nil,2],
			["SFG_Tac_ChopsB",nil,2],
			["SFG_Tac_ChopsD",nil,2],
			["SFG_Tac_ChopsG",nil,2],
			["SFG_Tac_ChopsO",nil,2],
			//bears end

			["A3L_FatHead",nil,2],
			["Payday_Cagoule",nil,2],
			["Masque_Chirurgical",nil,2],
			["Masque_Solitaire",nil,2],
			["G_Spectacles",nil,2],
			["G_Spectacles_Tinted",nil,2],
			["G_Goggles_VR",nil,2],


			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Aviator",nil,10],
			["G_Lady_Mirror",nil,15],
			["G_Lady_Dark",nil,15],
			["G_Lady_Blue",nil,15],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["SERTvest2","Invisi-Vest 2.0",5],
			["V_RebreatherB",nil,5]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
	/*		["TRYK_B_Medbag",nil,50],
			["TRYK_B_Medbag_BK",nil,50],
			["TRYK_B_Medbag_OD",nil,50],
			["TRYK_B_Medbag_ucp",nil,50],
			["B_FieldPack_ocamo",nil,50],
			["B_Carryall_oucamo",nil,50],
			//koil
			["koilmedicwhite",nil,5500],
			["koilmedicred",nil,5500],
			["koilmedicblue",nil,5500],
			["koilmedicyellow",nil,5500],

	*/
			["cg_invisbp","Invisi-Backpack 2.0",5]
		];
	};
};
