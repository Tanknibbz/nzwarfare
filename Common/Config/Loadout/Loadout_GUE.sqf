Private ["_m","_side","_u"];

_side = _this;

//--- Loadout - Magazines.
_m = ['30Rnd_762x39_AK47'];
_m = _m + ['30Rnd_545x39_AK'];
_m = _m + ['30Rnd_545x39_AKSD'];
_m = _m + ['100Rnd_762x54_PK'];
_m = _m + ['75Rnd_545x39_RPK'];
_m = _m + ['5x_22_LR_17_HMR'];
_m = _m + ['10Rnd_762x54_SVD'];
_m = _m + ['8Rnd_B_Saiga12_74Slug'];
_m = _m + ['PG7V'];
_m = _m + ['PG7VL'];
_m = _m + ['OG7'];
_m = _m + ['PG7VR'];
_m = _m + ['RPG18'];
_m = _m + ['Igla'];
_m = _m + ['Strela'];
_m = _m + ['Laserbatteries'];
_m = _m + ['8Rnd_9x18_Makarov'];
_m = _m + ['8Rnd_9x18_MakarovSD'];
_m = _m + ['HandGrenade_East'];
_m = _m + ['HandGrenade_Stone'];
_m = _m + ['SmokeShell'];
_m = _m + ['SmokeShellRed'];
_m = _m + ['SmokeShellGreen'];
_m = _m + ['SmokeShellBlue'];
_m = _m + ['SmokeShellYellow'];
_m = _m + ['SmokeShellOrange'];
_m = _m + ['SmokeShellPurple'];
_m = _m + ['FlareWhite_GP25'];
_m = _m + ['FlareYellow_GP25'];
_m = _m + ['FlareGreen_GP25'];
_m = _m + ['FlareRed_GP25'];
_m = _m + ['1Rnd_HE_GP25'];
_m = _m + ['1Rnd_SMOKE_GP25'];
_m = _m + ['1Rnd_SMOKERED_GP25'];
_m = _m + ['1Rnd_SMOKEGREEN_GP25'];
_m = _m + ['1Rnd_SMOKEYELLOW_GP25'];
_m = _m + ['MineE'];
_m = _m + ['PipeBomb'];

_m = [_m, _side] Call Compile preprocessFile "Common\Config\Config_SortMagazines.sqf";

//--- Loadout - Weapons.
_u = ['AK_47_M'];
_u = _u + ['AK_47_S'];
_u = _u + ['AK_74'];
_u = _u + ['AK_74_GL'];
_u = _u + ['AKS_74_kobra'];
_u = _u + ['AKS_74_pso'];
_u = _u + ['AKS_74_U'];
_u = _u + ['AKS_74_UN_kobra'];
_u = _u + ['AKS_GOLD'];
_u = _u + ['PK'];
_u = _u + ['Pecheneg'];
_u = _u + ['RPK_74'];
_u = _u + ['huntingrifle'];
_u = _u + ['SVD'];
_u = _u + ['Saiga12K'];
_u = _u + ['RPG7V'];
_u = _u + ['RPG18'];
_u = _u + ['Igla'];
_u = _u + ['Strela'];
_u = _u + ['Laserdesignator'];
_u = _u + ['Binocular'];
_u = _u + ['NVGoggles'];
_u = _u + ['Makarov'];
_u = _u + ['MakarovSD'];
_u = _u + ['ItemCompass'];
_u = _u + ['ItemGPS'];
_u = _u + ['ItemMap'];
_u = _u + ['ItemRadio'];
_u = _u + ['ItemWatch'];

[_u, _m, _side] Call Compile preprocessFile "Common\Config\Config_SortWeapons.sqf";

//--- Loadout - Templates (note that backpacks content require the weapons to be first), use -1 to use the default BP content.
_u 		= [[['AKS_74_kobra','Makarov','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['30Rnd_545x39_AK','HandGrenade_East','SmokeShellRed','8Rnd_9x18_Makarov'],[8,2,2,8]]]];
_u = _u + [[['AK_74_GL','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['30Rnd_545x39_AK','HandGrenade_East','1Rnd_HE_GP25'],[10,2,8]]]];
_u = _u + [[['AKS_74_kobra','RPG18','NVGoggles','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['30Rnd_545x39_AK','RPG18'],[6,1]]]];
_u = _u + [[['AKS_74_U','RPG7V','NVGoggles','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['30Rnd_545x39_AK','PG7VL','OG7'],[6,2,1]]]];
_u = _u + [[['AKS_74_U','Strela','NVGoggles','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['30Rnd_545x39_AK','Strela'],[6,1]]]];
_u = _u + [[['AKS_74_pso','Makarov','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['30Rnd_545x39_AK','MineE','8Rnd_9x18_Makarov'],[6,3,8]]]];
_u = _u + [[['PK','Makarov','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['100Rnd_762x54_PK','SmokeShellRed','8Rnd_9x18_Makarov'],[5,2,8]]]];
_u = _u + [[['Pecheneg','Makarov','NVGoggles','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['100Rnd_762x54_PK','SmokeShellRed','8Rnd_9x18_Makarov'],[5,2,8]]]];
_u = _u + [[['SVD','MakarovSD','NVGoggles','Binocular','ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'],[['10Rnd_762x54_SVD','HandGrenade_East','8Rnd_9x18_MakarovSD'],[10,2,8]]]];

[_u, _side] Call Compile preprocessFile "Common\Config\Config_SetTemplates.sqf";