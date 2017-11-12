#include <macro.h>
/*
	File: fn_clothing_cop.sqf


	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Police Clothing"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret =
		[
			["sonder_police_officer","Untrained Officer Uniform",50],
			["sonder_police_officer","Rookie Officer Uniform",50],
			["sonder_police_officer","Patrol Officer Uniform",50],
			["sonder_police_senior","Senior Patrol Officer Uniform",50],
			["sonder_police_cpl","Corporal Uniform",50],
			["sonder_police_sgt","Sergeant Uniform",50],
			["sonder_police_lt","Lieutenant Uniform",50],
			["sonder_police_cpt","Captain Uniform",50],
			["sonder_police_astchief","Ast. Chief Uniform",50],
			["sonder_police_chief","Chief Uniform",50]
		];
	};

	case 1:
	{
		_ret =
		[
		];
	};

	case 2:
	{
		_ret =
		[
		];
	};

	case 3:
	{
		_ret =
		[
		];
	};

	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Utility Belt",80]
		];
	};
};

_ret;

/*
_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret =
		[
			["A3L_EMT2","Fire Suit",50],
			["U_B_Wetsuit","Wet Suit",50],
			["doc_uniform_co",nil,15],
			["doc_uniform_sco",nil,15],
			["doc_uniform_sgt",nil,15],
			["doc_uniform_cmd",nil,15],
			["crt_uniform",nil,15],
			["herpFTO1",nil,15],
			["CG_SO1",nil,15],
			["CG_SO2",nil,15],
			["CG_SO3",nil,15],
			["herpCOMMAND1",nil,15],
			["TrooperCommand",nil,15],
			["sheriff_uniform_new","Sheriff Uniform & Coat",50],
			["TCG_PDCPL","Police LT+",50],
			["TCG_PDSGT","Police Sergeant",50],
			["TCG_PDO","Police Officer",50],
			["TCG_TRP","Trooper 1",50],
			["TCG_TRPCPL","Trooper 2",50],
			["TCG_TRPSGT","Trooper 3",50],
			["TCG_PDDTC","Detective Uniform",50],
			["U_007_US_Police_officer","High Police Uniform",50],
			["A3L_Sheriff_Uniform","Sheriff Uniform",50],
			["sheriff_uni2","State Trooper",50],
			["fto_uni","Field Training Uniform",15],
			["FBI_uni","FBI Uniform",15],
			["doj_uni","Correctional Officer",15],
			["herpSERT1",nil,15],
			["herpSERT2",nil,15],
			["herpSERT3",nil,15],
			["CG_SERT1",nil,15],
			["CG_SERT2",nil,15],
			["CG_SERT3",nil,15],
			["CG_SERT4",nil,15],
			["CG_SERT5",nil,15],
			["CG_SERT6",nil,15],
			["CG_SERT7",nil,15],
			["TRYK_U_B_BLK","Pilot Coveralls",15],
			["RF_ASU_2",nil,15],
			["RF_WING_3",nil,15],
			["ranger_uni","Ranger",15],
			["A3L_Police_Uniform","Sheriff & Command",15],
			["LS_Marshal_Jacket",nil,15],
			["LS_Marshal_Jacket3",nil,15],
			["KAEL_SUITS_BR_Judge",nil,15]
		];
	};

	case 1:
	{
		_ret =
		[
			["firehat",nil,5],
			["corrections_cap",nil,5],
			["H_007_policecap","Police Hat",5],
			["max_police_Hat","Police Hat",5],
			["max_sheriff_Hat","Sheriff Hat",5],
			["Campaign_Hat_Light",nil,5],
			["Campaign_Hat_Tan",nil,5],
			["Campaign_Hat_Washedout",nil,5],
			["Campaign_Hat_Dark",nil,5],
			["A3L_sargehat",nil,5],
			["TCG_pdav_helmet","Pilot Helmet",5],
			["ACE_helmet",nil,5],
			["wing_helmet",nil,5],
			["TRYK_H_DELTAHELM_NV","Negotiator Helmet",5],
			["A3L_policehelmet","Police Hat",5],
			["TRYK_H_PASGT_BLK","SERT Standard Helmet",5],
			["CG_sert_H7",nil,5],
			["CG_sert_H6",nil,5],
			["CG_sert_H5",nil,5],
			["CG_sert_H4",nil,5],
			["CG_sert_H3",nil,5],
			["CG_sert_H2",nil,5],
			["CG_sert_H1",nil,5],
			["H_HelmetSpecB","SERT Helmet S",5],
			["TRYK_H_PASGT_OD","SERT Helmet OD",5],
			["LSMS_cap_blk",nil,5],
			["LSMS_cap_blue",nil,5]
		];
	};

	case 2:
	{
		_ret =
		[
			["G_Diving",nil,50],
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Aviator",nil,7],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,5],
			["G_Balaclava_combat",nil,5],
			["G_Balaclava_lowprofile",nil,5],
			["G_Bandanna_oli",nil,5],
			["G_Bandanna_blk",nil,5],
			["A3L_Balaclava",nil,6],
			["TRYK_SPGEAR_Glasses","Negotiator Glasses",6],
			["Mask_M40","Gas Mask",5]
		];
	};

	case 3:
	{
		_ret =
		[
			["V_RebreatherB","Rebreather",20],

			["DOC_Vest_Tac_Fix",nil,20],
			["DOC_Vest_Threat_Fix",nil,20],
			["DOC_Vest_Threat_Tan_Fix",nil,20],
			["crt_vest_Fix",nil,20],
			["SCommand_Vest_Fix",nil,20],
			["cg_policevest1_fix","Police Vest 2",20],
			["cg_policevest2_fix","Police Vest",20],
			["HighThreatVestPolice1_Fix",nil,15],
			["HighThreatVestPolice2_Fix",nil,15],
			["TCG_troopervest1_Fix","Trooper Black Vest",20],
			["TCG_troopervest2_Fix","Trooper Blue Vest",20],
			["HighThreatVestTrooper1_Fix",nil,15],
			["HighThreatVestTrooper2_Fix",nil,15],
			["highthreatvestblack_Fix","Sheriff Black High Threat",20],
			["highthreatvesttan_Fix","Sheriff Tan High Threat",20],
			["k_black_so_fix","Black SO Vest",15],
			["k_white_so_fix","White SO Vest",15],
			["k_white2_so_fix","Off White SO Vest",15],
			["k_green_so_fix","Green SO Vest",15],
			["k_green2_so_fix","Off Green SO Vest",15],
			["k_brown_so_fix","Brown SO Vest",15],
			["k_darkblue_so_fix","Dark Blue SO Vest",15],
			["k_leather_so_fix","Leather SO Vest",15],
			["k_lime_so_fix","Lime SO Vest",15],
			["k_orange_so_fix","Orange SO Vest",15],
			["k_red_so_fix","Red SO Vest",15],
			["k_yellow_so_fix","Yellow SO Vest",15],
			["kaelvest_sert7_Fix",nil,15],
			["kaelvest_sert6_Fix",nil,15],
			["kaelvest_sert5_Fix",nil,15],
			["kaelvest_sert4_Fix",nil,15],
			["kaelvest_sert3_Fix",nil,15],
			["kaelvest_sert2_Fix",nil,15],
			["kaelvest_sert1_Fix",nil,15],
			["usms_vests_usms1_Fix",nil,15],
			["usms_vests_usms2_Fix",nil,15],
			["usms_vests_usms4_Fix",nil,15],
			["TRYK_V_Bulletproof","Ride Along Vest",15]
		];
	};

	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Utility Belt",80]
		];
	};
};

_ret;


*/
