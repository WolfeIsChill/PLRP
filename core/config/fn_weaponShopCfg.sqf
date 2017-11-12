#include <macro.h>
/*
File: fn_weaponShopCfg.sqf


Description:
Master configuration file for the weapon shops.

DEVS! Don't fucking make edits to this file unless you are using Atom.

Return:
String: Close the menu
Array:
[Shop Name,
[ //Array of items to add to the store
[classname,Custom Name (set nil for default),price]
]]
*/

params [["_shop", "", [""]]];

if (_shop == "") exitWith { closeDialog 0 }; //Bad shop type passed.
_ret = [];

switch(_shop) do
{
  case "med_supplies":
  {
    switch (true) do
    {
      case (playerSide != independent): { "You are not an EMS" };
      default {
        ["EMS Supplies Shop",
          [
            ["ToolKit",nil,2500],
            ["ItemCompass",nil,50],
            ["tf_anprc152",nil,10],
            ["ItemWatch",nil,10]
          ]
        ];
      };
    };
  };

  case "med_basic":
  {
    switch (true) do {
      case (playerSide != independent): { "You are not an EMS" };
      default {
        ["EMS Basic Shop",
          [
            ["cg_torch",nil,250],
            ["cg_torchbattery",nil,250],
            ["acc_flashlight","Extinguisher Flashlight",10],
            ["CG_ATF_Drug_Bottle_01_i","Valium",5],
            ["A3L_Extinguisher",nil,35],
            ["30Rnd_test_mag_Tracer",nil,35],
            ["ItemGPS",nil,25],
            ["tf_microdagr",nil,5],
            ["tf_anprc152",nil,10],
            ["Binocular",nil,120],
            ["ToolKit",nil,2500],
            ["ItemCompass",nil,50],
            ["ItemWatch",nil,10],
            ["Chemlight_red",nil,20],
            ["Chemlight_yellow",nil,20],
            ["Chemlight_green",nil,20],
            ["Chemlight_blue",nil,20]
          ]
        ];
      };
    };
  };

  case "cop_basic_old": {
    switch(true) do {
      case (playerSide != west): { "You are not a cop!" };
      default {
        ["Police Utility Shop",
          [
            ["CG_ATF_Handcuffs_i","Hand Cuffs",10],
            ["cg_torch",nil,250],
            ["CG_Spikes_Collapsed",nil,250],
            ["cg_torchbattery",nil,250],
            ["gign_shield","Riot Shield",10],
            ["CG_BATON","Police Baton",10],
            ["CG_TELBAT","Police TelBat",10],
            ["acc_flashlight","ACC Flashlight",10],
            ["RH_M6X","RH Flashlight",10],
            ["A3L_M4Flashlight","M4A3 Flashlight",10],
            ["Radar_Gun","Radar Gun",25],
            ["ToolKit",nil,2500],
            ["ItemCompass",nil,50],
            ["ItemWatch",nil,10],
            ["Taser_26","Taser",5],
            ["26_cartridge",nil,2],
            ["Chemlight_red",nil,20],
            ["Chemlight_yellow",nil,20],
            ["Chemlight_green",nil,20],
            ["Chemlight_blue",nil,20],
            ["Binocular",nil,15],
            ["Rangefinder","Rangefinder SERT ONLY",500],
            ["ItemGPS",nil,10],
            ["tf_anprc152",nil,10]
          ]
        ];
      };
    };
  };

  case "COP_ITEMS_BASIC": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2]
    ];
    ["Basic Police Gear (Physical)", _ret select 0];
  };

  case "COP_WEP_UNTRAINED": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5]
    ];
    ["Untrained (Weapons)", _ret select 0];
  };

  case "COP_WEP_PO1": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5]
    ];
    ["Rookie Patrol Officer (Weapons)", _ret select 0];
  };

  case "COP_WEP_PO2": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5],
      ["rh_ltdocterl",nil,5]
    ];
    ["Patrol Officer (Weapons)", _ret select 0];
  };

  case "COP_WEP_PO3": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["rh_m9",nil,240],
      ["RH_15Rnd_9x19_M9",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5],
      ["rh_compm2l",nil,5]
    ];
    ["Senior Patrol Officer (Weapons)", _ret select 0];
  };

  case "COP_WEP_CPL": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["rh_m9",nil,240],
      ["RH_15Rnd_9x19_M9",nil,5],
      ["rh_p226",nil,240],
      ["RH_15Rnd_9x19_SIG",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["30Rnd_556x45_Stanag_Tracer_Red",nil,5],
      ["rh_compm2l",nil,5],
      ["rh_barska_rds",nil,5]
    ];
    ["Corporal (Weapons)", _ret select 0];
  };

  case "COP_WEP_SGT": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["rh_m9",nil,240],
      ["RH_15Rnd_9x19_M9",nil,5],
      ["rh_p226",nil,240],
      ["RH_15Rnd_9x19_SIG",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["30Rnd_556x45_Stanag_Tracer_Red",nil,5],
      ["rh_compm2l",nil,5],
      ["rh_barska_rds",nil,5],
      ["rh_ta01nsn",nil,5]
    ];
    ["Sergeant (Weapons)", _ret select 0];
  };

  case "COP_WEP_LT": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["rh_m9",nil,240],
      ["RH_15Rnd_9x19_M9",nil,5],
      ["rh_p226",nil,240],
      ["RH_15Rnd_9x19_SIG",nil,5],
      ["rh_fn57",nil,240],
      ["RH_20Rnd_57x28_FN",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["rh_m4_moe_b",nil,2000],
      ["30Rnd_556x45_Stanag_Tracer_Red",nil,5],
      ["rh_compm2l",nil,5],
      ["rh_barska_rds",nil,5],
      ["rh_ta01nsn",nil,5]
    ];
    ["Lieutenant (Weapons)", _ret select 0];
  };

  case "COP_WEP_CPT": {
    _ret = [];
    _ret pushBack [
      ["Taser_26","Taser",5],
      ["26_cartridge",nil,2],
      ["rh_g17",nil,240],
      ["rh_g19",nil,240],
      ["RH_17Rnd_9x19_g17",nil,5],
      ["rh_m9",nil,240],
      ["RH_15Rnd_9x19_M9",nil,5],
      ["rh_p226",nil,240],
      ["RH_15Rnd_9x19_SIG",nil,5],
      ["rh_fn57",nil,240],
      ["RH_20Rnd_57x28_FN",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["29rnd_300BLK_STANAG_T",nil,5],
      ["hlc_rifle_bushmaster300",nil,2000],
      ["rh_m4_moe_b",nil,2000],
      ["30Rnd_556x45_Stanag_Tracer_Red",nil,5],
      ["rh_compm2l",nil,5],
      ["rh_barska_rds",nil,5],
      ["rh_ta01nsn",nil,5]
    ];
    ["Captain + (Weapons)", _ret select 0];
  };

  case "CIV_WEP_PISTOL": {
    _ret = [];
    _ret pushBack [
      ["RH_m9",nil,500],
      ["RH_15Rnd_9x19_M9",nil,10],
      ["RH_python",nil,500],
      ["RH_6Rnd_357_Mag",nil,10],
      ["RH_cz75",nil,500],
      ["RH_16Rnd_9x19_CZ",nil,10],
      ["RH_fn57",nil,500],
      ["RH_20Rnd_57x28_FN",nil,10],
      ["RH_fnp45",nil,500],
      ["RH_15Rnd_45cal_fnp",nil,10],
      ["RH_g19",nil,500],
      ["RH_17Rnd_9x19_g17",nil,10],
      ["RH_kimber",nil,500],
      ["RH_7Rnd_45cal_m1911",nil,10],
      ["RH_bullb",nil,500],
      ["RH_6Rnd_454_Mag",nil,10],
      ["RH_usp",nil,500],
      ["RH_12Rnd_45cal_usp",nil,10]
    ];
    ["Civilian Pistols", _ret select 0];
  };

  case "CIV_WEP_SUB": {
    _ret = [];
    _ret pushBack [
      ["hlc_smg_mp510",nil,2000],
      ["hlc_30Rnd_10mm_B_MP5",nil,50],
      ["RH_PDW",nil,2000],
      ["RH_30Rnd_6x35_mag",nil,50],
      ["hgun_PDW2000_F",nil,2000],
      ["30Rnd_9x21_Mag",nil,50],
      ["RH_sbr9",nil,2000],
      ["RH_32Rnd_9mm_M822",nil,50],
      ["SMG_02_F",nil,2000],
      ["30Rnd_9x21_Mag_SMG_02",nil,50],
      ["SMG_01_F",nil,2000],
      ["30Rnd_45ACP_Mag_SMG_01",nil,50]
    ];
    ["Civilian Submachine Guns", _ret select 0];
  };

  case "CIV_WEP_RIFLE": {
    _ret = [];
    _ret pushBack [
      ["hlc_rifle_vendimus",nil,2000],
      ["29rnd_300BLK_STANAG",nil,50],
      ["hlc_rifle_M1903A1",nil,2000],
      ["hlc_rifle_M1903A1_unertl",nil,2000],
      ["hlc_5rnd_3006_1903",nil,50]
    ];
    ["Civilian Rifles", _ret select 0];
  };

  case "rebel_low": {
    switch (true) do {
      case (rebelshipment getVariable["notCaptured",FALSE]): {"Supplies have been taken by Police..!"};
      case (playerSide != civilian && playerSide != east): {"You are not a civilian!"};
      case (!license_civ_rebel): {"You want some, I'll give it YA! You don't have a license you pleb!"};
      default {
        ["Rebel Pistols",
          [
            ["RH_vp70",nil,9850],
            ["RH_18Rnd_9x19_VP",nil,125],

            //Micro Uzi
            ["RH_muzi",nil,9500],
            ["RH_30Rnd_9x19_UZI",nil,250],

            //Tec9
            ["RH_tec9",nil,9800],
            ["RH_32Rnd_9x19_tec",nil,260],

            ["RH_vz61",nil,11800],
            ["RH_20Rnd_32cal_vz61",nil,280],

            ["RH_fn57",nil,11800],
            ["RH_20Rnd_57x28_FN",nil,280],

            //Glock 18
            ["RH_g18",nil,15500],
            ["RH_33Rnd_9x19_g18",nil,250],


            ["RH_Deagleg",nil,31500],

            ["RH_Deaglem",nil,31500],
            ["RH_demz",nil,1500],
            ["RH_M6X",nil,1500],

            ["RH_7Rnd_50_AE",nil,250]
          ]
        ];
      };
    };
  };

  case "rebel_high": {
    switch (true) do {
      case (rebelshipment getVariable["notCaptured",FALSE]): { "Supplies have been taken by Police..!" };
      case (playerSide != civilian && playerSide != east): { "You are not a civilian!" };
      case (!license_civ_rebel): { "You need Rifle Training!" };
      default {
        ["Rebel Primarys",
          [
            ["optic_MRCO",nil,1220],
            ["RH_Delft",nil,550],
            ["hlc_optic_kobra",nil,550],

            ["RH_compM2","Rifle Aimpoint",425],
            ["RH_compM2l","Rifle Aimpoint Low",425],

            ["RH_m16a6_des",nil,91550],
            ["RH_30Rnd_68x43_FMJ",nil,1550],


            ["RH_ar10",nil,51550],
            ["RH_20Rnd_762x51_AR10",nil,350],

            ["hlc_rifle_akm",nil,45550],
            ["hlc_rifle_ak47",nil,45550],
            ["hlc_30Rnd_762x39_b_ak",nil,300],

            ["SG553_CQB",nil,40550],
            ["30Rnd_556x45_Stanag",nil,300],

            ["hlc_rifle_aks74u",nil,30550],
            ["hlc_30Rnd_545x39_B_AK",nil,300],

            ["hgun_PDW2000_F",nil,15550],
            ["SMG_02_F",nil,21550],
            ["30Rnd_9x21_Mag",nil,255],


            ["chakFNP90_50rnd_skin1",nil,11000],
            ["chakFNP90_57x28_B_skin1",nil,332],

            ["SMG_01_F",nil,15000],
            ["30Rnd_45ACP_Mag_SMG_01",nil,232]
          ]
        ];
      };
    };
  };

  case "gun": {
    switch (true) do {
      case (life_karma < 0): { "You need positive reputation to use this store!" };
      case (playerSide != civilian && playerSide != east): { "You are not a civilian!" };
      case (!license_civ_gun): { "You don't have a Firearms license!" };
      default {
        ["Kaels Firearms",
          [
            ["KPFS_HKP7",nil,1250],
            ["KPFS_8Rnd_9x19_PARA",nil,120],

            ["KPFS_Mauser_Hsc",nil,1450],
            ["kpfs_8Rnd_765x17_PP",nil,120],

            ["KPFS_Walther_M9",nil,1550],
            ["kpfs_6Rnd_635x15",nil,120],

            ["KPFS_P99",nil,1600],
            ["KPFS_15rnd_9x19_P99",nil,125],

            ["RH_g17",nil,1750],
            ["RH_g19",nil,1850],
            ["RH_g19t",nil,1850],
            ["RH_17Rnd_9x19_g17",nil,120],

            ["RH_m9",nil,1800],
            ["RH_15Rnd_9x19_M9",nil,120],

            ["RH_sw659",nil,1950],
            ["RH_14Rnd_9x19_sw",nil,150],

            ["hgun_Rook40_F",nil,3350],
            ["16Rnd_9x21_Mag",nil,125],

            ["hgun_P07_F",nil,3350],
            ["16Rnd_9x21_Mag",nil,125],
            ["RH_gsh18",nil,5150],
            ["RH_18Rnd_9x19_gsh",nil,195],
            ["RH_kimber",nil,30500],
            ["RH_7Rnd_45cal_m1911",nil,275]
          ]
        ];
      };
    };
  };

  case "rifle": {
    switch (true) do {
      case (playerSide != civilian && playerSide != east): { "You are not a civilian!" };
      case (!license_civ_rifle): { "You don't have a Rifle license!" };
      default {
        ["Hunting Shop",
          [
            ["A3L_CZ550",nil,17500],
            ["A3L_CZ550mag",nil,5],
            ["A3L_CZ550Scope",nil,12500],
            ["arifle_SDAR_F","Turtle ONLY SDAR",1000],
            ["20Rnd_556x45_UW_mag","Underwater magazine",120]
          ]
        ];
      };
    };
  };

  case "gang": {
    switch (true) do {
      case (playerSide != civilian && playerSide != east): { "You are not a civilian!" };
      default {
        ["Hideout Armament",
          [
            ["A3L_Glock17",nil,1260],
            ["A3L_Glock17mag",nil,50]
          ]
        ];
      };
    };
  };

  case "genstore": {
    ["General and Fishing",
      [
        ["CG_Pro_Item_i","CG GoPro",350],
        ["OL_Tablet","CG Tablet Phone",50],
        ["CG_battery_i","ZL Battery",5],
        ["CG_ATF_Pizza_Box_i","Take Away Pizza",1400],
        ["CG_ATF_Donut_Box_i","Take Away Donuts",1600],
        ["cg_torch",nil,550],
        ["cg_torchbattery",nil,50],
        ["Chemlight_red",nil,120],
        ["Chemlight_yellow",nil,120],
        ["Chemlight_green",nil,120],
        ["Chemlight_blue",nil,120],
        ["ItemMap",nil,6],
        ["Binocular",nil,110],
        ["ToolKit",nil,2500],
        ["ItemCompass",nil,50],
        ["ItemWatch",nil,10],
        ["nonlethal_swing", "Blunt Ammo (b)", 10],
        ["sharp_swing","Sharp Ammo (s)",10],
        ["cg_scythe","Scythe (s)",500],
        ["CG_PICKAXE","Pickaxe (s)",500],
        ["cg_hatchet","Hatchet (s)",500],
        ["cg_machete","Machete (s)",500],
        ["CG_BAT","Bat (b)",500],
        ["CG_CROSS","Holy Cross (b)",500],
        ["A3L_Sign2","Weed Sign(Secondary Slot)",1000],
        ["A3L_Sign","Police Sign(Secondary Slot)",1000],
        ["Tv_Camera","TV Camera(Secondary Slot)",2520]
      ]
    ];
  };
};
