Private ["_side"];

_side = _this;

missionNamespace setVariable [Format["WFBE_C_UPGRADES_%1_ENABLED", _side], [
	true, //--- Barracks
	true, //--- Light
	true, //--- Heavy
	true, //--- Air
	true, //--- Paratroopers
	if (isNil{missionNamespace getVariable Format["WFBE_%1UAV", _side]}) then {false} else {true}, //--- UAV
	true, //--- Supply
	true, //--- Respawn Range
	true, //--- Airlift
	if ((missionNamespace getVariable "WFBE_C_MODULE_WFBE_FLARES") == 1) then {true} else {false}, //--- Custom Flares
	if ((missionNamespace getVariable "WFBE_C_ARTILLERY") > 0) then {true} else {false}, //--- Artillery Time
	if ((missionNamespace getVariable "WFBE_C_MODULE_WFBE_ICBM") > 0) then {true} else {false}, //--- ICBM
	if ((missionNamespace getVariable "WFBE_C_GAMEPLAY_FAST_TRAVEL") > 0) then {true} else {false}, //--- Fast Travel
	true, //--- Gear
	true, //--- Build Ammo
	if ((missionNamespace getVariable "WFBE_C_MODULE_WFBE_EASA") > 0) then {true} else {false}, //--- EASA
	true, //--- Supply Paradrop
	if ((missionNamespace getVariable "WFBE_C_ARTILLERY") > 0) then {true} else {false}, //--- Artillery Ammo
	if ((missionNamespace getVariable "WFBE_C_MODULE_WFBE_IRSMOKE") > 0) then {true} else {false} //--- IR Smoke
]];

missionNamespace setVariable [Format["WFBE_C_UPGRADES_%1_COSTS", _side], [
	[[1,1],[1,1],[1,1]], //--- Barracks
	[[1,1],[1,1],[1,1]], //--- Light
	[[1,1],[1,1],[1,1]], //--- Heavy
	[[1,1],[1,1],[1,1]], //--- Air
	[[1,1],[1,1],[1,1]], //--- Paratroopers
	[[1,1]], //--- UAV
	[[1,12500],[5000,27500],[15000,50000],[30000,100000]], //--- Supply
	[[1,2000],[1500,4000],[2500,7500]], //--- Respawn Range
	[[1,4000]], //--- Airlift
	[[1,1]], //--- Custom Flares
	[[1,3500],[1800,4400],[3500,9000]], //--- Artillery Time
	[[5000000,250000]], //--- ICBM
	[[1,1]], //--- Fast Travel
	[[1,1],[1,1],[1,1]], //--- Gear
	[[1,2250]], //--- Build Ammo
	[[1,1]], //--- EASA
	[[2000,10000]], //--- Supply Paradrop
	[[2500,5000],[3500,10000],[4500,15000]], //--- Artillery Ammo
	[[5000,25000]] //--- IR Smoke
]];

missionNamespace setVariable [Format["WFBE_C_UPGRADES_%1_LEVELS", _side], [
	3, //--- Barracks
	3, //--- Light
	3, //--- Heavy
	3, //--- Air
	3, //--- Paratroopers
	1, //--- UAV
	4, //--- Supply
	3, //--- Respawn Range
	1, //--- Airlift
	1, //--- Custom Flares
	3, //--- Artillery Time
	1, //--- ICBM
	1, //--- Fast Travel
	3, //--- Gear
	1, //--- Build Ammo
	1, //--- EASA
	1, //--- Supply Paradrop
	3, //--- Artillery Ammo
	1 //--- IR Smoke
]];

missionNamespace setVariable [Format["WFBE_C_UPGRADES_%1_LINKS", _side], [
	[[],[WFBE_UP_GEAR,1],[WFBE_UP_GEAR,2]], //--- Barracks
	[[],[WFBE_UP_BARRACKS,2],[WFBE_UP_BARRACKS,3]], //--- Light
	[[],[WFBE_UP_LIGHT,2],[WFBE_UP_LIGHT,3]], //--- Heavy
	[[],[WFBE_UP_HEAVY,2],[WFBE_UP_HEAVY,3]], //--- Air
	[
		[[WFBE_UP_BARRACKS,1],[WFBE_UP_AIR,1],[WFBE_UP_GEAR,1]],
		[[WFBE_UP_BARRACKS,2],[WFBE_UP_AIR,2],[WFBE_UP_GEAR,2]],
		[[WFBE_UP_BARRACKS,3],[WFBE_UP_AIR,3],[WFBE_UP_GEAR,3]]
	], //--- Paratroopers
	[[WFBE_UP_AIR,2]], //--- UAV
	[[],[WFBE_UP_LIGHT,1],[WFBE_UP_LIGHT,2],[WFBE_UP_LIGHT,3]], //--- Supply
	[[WFBE_UP_LIGHT,1],[WFBE_UP_LIGHT,2],[WFBE_UP_LIGHT,3]], //--- Respawn Range
	[[WFBE_UP_AIR,1]], //--- Airlift
	[[WFBE_UP_AIR,2]], //--- Custom Flares
	[
		[[WFBE_UP_BARRACKS,1],[WFBE_UP_LIGHT,1]],
		[[WFBE_UP_BARRACKS,2],[WFBE_UP_LIGHT,2]],
		[[WFBE_UP_BARRACKS,3],[WFBE_UP_LIGHT,3]]
	], //--- Artillery Time
	[[WFBE_UP_AIR,3]], //--- ICBM
	[
		[[WFBE_UP_LIGHT,1],[WFBE_UP_SUPPLYRATE,1]]
	], //--- Fast Travel
	[[WFBE_UP_BARRACKS,1],[WFBE_UP_BARRACKS,2],[WFBE_UP_BARRACKS,3]], //--- Gear
	[[WFBE_UP_GEAR,2]], //--- Build Ammo
	[[WFBE_UP_AIR,3]], //--- EASA
	[[WFBE_UP_AIRLIFT,1]], //--- Supply Paradrop
	[
		[[WFBE_UP_GEAR,1],[WFBE_UP_HEAVY,1]],
		[[WFBE_UP_GEAR,2],[WFBE_UP_HEAVY,2]],
		[[WFBE_UP_GEAR,3],[WFBE_UP_HEAVY,3]]
	], //--- Artillery Ammo
	[[WFBE_UP_HEAVY, 3]] //--- IR Smoke
]];

missionNamespace setVariable [Format["WFBE_C_UPGRADES_%1_TIMES", _side], [
	[3,6,9], //--- Barracks
	[4,7,10], //--- Light
	[5,8,11], //--- Heavy
	[6,9,12], //--- Air
	[3,5,5], //--- Paratroopers
	[6], //--- UAV
	[6,12,18,24], //--- Supply
	[3,6,9], //--- Respawn Range
	[4], //--- Airlift
	[10], //--- Custom Flares
	[4,8,12], //--- Artillery Time
	[300], //--- ICBM
	[6], //--- Fast Travel
	[2,5,7], //--- Gear
	[4], //--- Build Ammo
	[9], //--- EASA
	[5], //--- Supply Paradrop
	[6,12,18], //--- Artillery Ammo
	[12] //--- IR Smoke
]];

//todo, on commander missing link checkup, skip disabled upgrades.
missionNamespace setVariable [Format["WFBE_C_UPGRADES_%1_AI_ORDER", _side], [
	[WFBE_UP_BARRACKS,1],
	[WFBE_UP_GEAR,1],
	[WFBE_UP_LIGHT,1],
	[WFBE_UP_SUPPLYRATE,1],
	[WFBE_UP_BARRACKS,2],
	[WFBE_UP_GEAR,2],
	[WFBE_UP_LIGHT,2],
	[WFBE_UP_BARRACKS,3],
	[WFBE_UP_LIGHT,3],
	[WFBE_UP_RESPAWNRANGE,1],
	[WFBE_UP_SUPPLYRATE,2],
	[WFBE_UP_HEAVY,1],
	[WFBE_UP_HEAVY,2],
	[WFBE_UP_ARTYTIMEOUT,1],
	[WFBE_UP_SUPPLYRATE,3],
	[WFBE_UP_HEAVY,3],
	[WFBE_UP_ARTYTIMEOUT,2],
	[WFBE_UP_GEAR,3],
	[WFBE_UP_RESPAWNRANGE,2],
	[WFBE_UP_ARTYTIMEOUT,3],
	[WFBE_UP_AIR,1],
	[WFBE_UP_AIRLIFT,1],
	[WFBE_UP_RESPAWNRANGE,3],
	[WFBE_UP_AIR,2],
	[WFBE_UP_FLARESCM,1],
	[WFBE_UP_PARATROOPERS,1],
	[WFBE_UP_PARATROOPERS,2],
	[WFBE_UP_AIR,3],
	[WFBE_UP_UAV,1],
	[WFBE_UP_PARATROOPERS,3],
	[WFBE_UP_EASA,1],
	[WFBE_UP_SUPPLYPARADROP,1]
]];

//--- Check potential missing definition.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Check_Upgrades.sqf";