Private ["_side"];

_side = "WEST";

//--- Generic.
missionNamespace setVariable [Format["WFBE_%1CREW", _side], 'nzdf_desert_soldier_crew'];
missionNamespace setVariable [Format["WFBE_%1PILOT", _side], 'NZDF_Heli_Pilot'];
missionNamespace setVariable [Format["WFBE_%1SOLDIER", _side], 'nzdf_desert_soldier'];

//--- Flag texture.
missionNamespace setVariable [Format["WFBE_%1FLAG", _side], '\Ca\ca_e\Data\flag_us_co.paa'];

missionNamespace setVariable [Format["WFBE_%1AMBULANCES", _side], ['nzdf_pinz','HMMWV_Ambulance_DES_EP1','UH60M_MEV_EP1','M1133_MEV_EP1']];
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCKS", _side], ['nzdf_pinz','MtvrRepair_DES_EP1']];
missionNamespace setVariable [Format["WFBE_%1SALVAGETRUCK", _side], ['WarfareSalvageTruck_USMC','MtvrSalvage_DES_EP1']];
missionNamespace setVariable [Format["WFBE_%1SUPPLYTRUCKS", _side], ['WarfareSupplyTruck_USMC','MtvrSupply_DES_EP1']];
missionNamespace setVariable [Format["WFBE_%1UAV", _side], 'MQ9PredatorB_US_EP1'];

//--- Radio Announcers.
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers", _side], ['WFHQ_EN0_EP1','WFHQ_EN1_EP1','WFHQ_EN2_EP1','WFHQ_EN4_EP1','WFHQ_EN5_EP1']];
missionNamespace setVariable [Format ["WFBE_%1_RadioAnnouncers_Config", _side], 'RadioProtocol_EP1_EN'];

//--- Paratroopers.
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL1", _side],['nzdf_desert_soldier_sl','nzdf_desert_soldier_at','US_Soldier_EP1','nzdf_desert_soldier','nzdf_desert_soldier_ar','nzdf_desert_soldier_medic']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL2", _side],['nzdf_desert_soldier_sl','nzdf_desert_soldier_at','nzdf_desert_soldier_at','nzdf_desert_soldier_at','US_Soldier_AA_EP1','nzdf_desert_soldier_mg','nzdf_desert_soldier_medic','nzdf_desert_soldier','nzdf_desert_soldier']];
missionNamespace setVariable [Format["WFBE_%1PARACHUTELEVEL3", _side],['nzdf_nzsas1','nzdf_nzsas_Medic','nzdf_nzsas3','nzdf_nzsas4','nzdf_desert_soldier_hat','US_Soldier_AA_EP1','US_Soldier_AA_EP1','nzdf_nzsas5','nzdf_nzsas2','nzdf_desert_soldier_medic','nzdf_nzsas2','nzdf_desert_soldier_at','nzdf_desert_soldier']];

missionNamespace setVariable [Format["WFBE_%1PARACARGO", _side], 'nzdf_c130'];//--- Paratroopers, Vehicle.
missionNamespace setVariable [Format["WFBE_%1REPAIRTRUCK", _side], 'nzdf_pinz'];//--- Repair Truck model.
missionNamespace setVariable [Format["WFBE_%1STARTINGVEHICLES", _side], ['HMMWV_Ambulance_DES_EP1','nzdf_pinz']];//--- Starting Vehicles.
missionNamespace setVariable [Format["WFBE_%1PARAAMMO", _side], ['USBasicAmmunitionBox_EP1','USBasicWeapons_EP1','USLaunchers_EP1']];//--- Supply Paradropping, Dropped Ammunition.
missionNamespace setVariable [Format["WFBE_%1PARAVEHICARGO", _side], 'HMMWV_DES_EP1'];//--- Supply Paradropping, Dropped Vehicle.
missionNamespace setVariable [Format["WFBE_%1PARAVEHI", _side], 'nzdf_c130'];//--- Supply Paradropping, Vehicle
missionNamespace setVariable [Format["WFBE_%1PARACHUTE", _side], 'ParachuteMediumWest_EP1'];//--- Supply Paradropping, Parachute Model.
missionNamespace setVariable [Format["WFBE_%1SUPPLYTRUCK", _side], 'MtvrSupply_DES_EP1'];//--- Supply Truck model.
missionNamespace setVariable [Format["WFBE_%1_WORKER", _side], ["TK_CIV_Worker02_EP1"]];//--- Workers model.

//--- Server only.
if (isServer) then {
	//--- Patrols.
	missionNamespace setVariable [Format["WFBE_%1_PATROL_LIGHT", _side], [
		['nzdf_desert_soldier_tl','nzdf_desert_soldier_mg','nzdf_desert_soldier','nzdf_desert_soldier_medic'], 
		['nzdf_desert_soldier_tl','nzdf_desert_soldier_ar','nzdf_desert_soldier1','nzdf_desert_soldier_at','nzdf_desert_soldier'],
		['NZDF_HMMWV_UA','NZDF_HMMWV_SOV']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_MEDIUM", _side], [
		['LAV25','LAV25'], 
		['nzdf_pinz','adf_team_leader','adf_at','adf_machine_gunner','adf_at'],
		['adf_lav25_hq','US_Soldier_AA_EP1','US_Soldier_AA_EP1','adf_medic']
	]];

	missionNamespace setVariable [Format["WFBE_%1_PATROL_HEAVY", _side], [
		['LAV25','adf_lav25'], 
		['Scorpion','Scorpion'],
		['adf_lav25','adf_lav25','adf_team_leader','adf_machine_gunner','adf_rifleman','adf_medic','adf_at','adf_at','adf_rifleman'],
		['LAV25','nzdf_desert_soldier_tl','nzdf_desert_soldier_medic','nzdf_desert_soldier1','nzdf_desert_soldier','nzdf_desert_soldier_ar']
	]];
	
	//--- Base Patrols.
	if ((missionNamespace getVariable "WFBE_C_BASE_PATROLS_INFANTRY") > 0) then {
		missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_0", _side],['adf_squad_leader','adf_rifleman','adf_rifleman','adf_saw_gunner','adf_grenadier','adf_machine_gunner']];
		missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_1", _side],['adf_squad_leader','adf_rifleman','adf_rifleman','adf_machine_gunner','adf_at','adf_medic']];
		missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_2", _side],['nzdf_desert_soldier_sl','nzdf_desert_soldier','nzdf_desert_soldier','nzdf_desert_soldier_at','US_Soldier_AA_EP1','nzdf_desert_soldier']];
		missionNamespace setVariable [Format["WFBE_%1BASEPATROLS_3", _side],['nzdf_desert_soldier_sl','nzdf_desert_soldier','nzdf_desert_soldier_ar','nzdf_desert_soldier_hat','nzdf_desert_soldier','nzdf_desert_soldier1']];
	};
	
	//--- AI Loadouts [weapons, magazines, eligible muzzles, {backpack}, {backpack content}].
	missionNamespace setVariable [Format["WFBE_%1_AI_Loadout_0", _side], [
		[['AAW_NZDFIW_a1','AAW_M72a6','Colt1911','Binocular','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','AAW_M72a6','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],
		 ['AAW_NZDFIW_a1','AAW_M72a6','Colt1911']],
		[['AAW_NZDFIW_a1','AAW_M72a6','Colt1911','Binocular','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','AAW_M72a6','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],
		 ['AAW_NZDFIW_a1','AAW_M72a6','Colt1911']]
	]];	
	missionNamespace setVariable [Format["WFBE_%1_AI_Loadout_1", _side], [
		[['AAW_NZDFIW_a1','AAW_M72a6','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','AAW_M72a6','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],
		 ['AAW_NZDFIW_a1','AAW_M72a6','Colt1911']],
		[['AAW_NZDFIW_a1','AAW_M72a6','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','AAW_M72a6','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],
		 ['AAW_NZDFIW_a1','AAW_M72a6','Colt1911']],
		[['M14_EP1','M9SD','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD'],
		 ['M14_EP1','M9SD']]
	]];
	missionNamespace setVariable [Format["WFBE_%1_AI_Loadout_2", _side], [
		[['AAW_NZDFIW_a1','MAAWS','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','MAAWS_HEAT','MAAWS_HEAT','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],
		 ['AAW_NZDFIW_a1','MAAWS','Colt1911']],
		[['AAW_NZDFIW_a1','MAAWS','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','MAAWS_HEAT','MAAWS_HEAT','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],
		 ['AAW_NZDFIW_a1','MAAWS','Colt1911']]
	]];
	missionNamespace setVariable [Format["WFBE_%1_AI_Loadout_3", _side], [
		[['AAW_NZDFIW_a1','MAAWS','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','MAAWS_HEAT','MAAWS_HEAT','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203'],
		 ['AAW_NZDFIW_a1','MAAWS']],
		[['AAW_NZDFIW_a1','Javelin','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],
		 ['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','Javelin','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203'],
		 ['AAW_NZDFIW_a1','Javelin','Colt1911']]
	]];
};

//--- Client only.
if (local player) then {
	//--- Default Faction (Buy Menu), this is the faction name defined in core_xxx.sqf files.
	missionNamespace setVariable [Format["WFBE_%1DEFAULTFACTION", _side], 'NZDF'];
	
	//--- Import the needed Gear (Available from the gear menu), multiple gear can be used.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Loadout\Loadout_US.sqf";
	if (WF_A2_CombinedOps) then {
		(_side) Call Compile preprocessFileLineNumbers "Common\Config\Loadout\Loadout_USMC.sqf";
	};
	
	if ((missionNamespace getVariable "WFBE_C_MODULE_BIS_BAF") > 0) then {(_side) Call Compile preprocessFileLineNumbers "Common\Config\Loadout\Loadout_BAF.sqf"};
};

//--- Default Loadout [weapons, magazines, eligible muzzles, {backpack}, {backpack content}].
missionNamespace setVariable [Format["WFBE_%1_DefaultGear", _side], [
	['AAW_NZDFIW_a1','M9','Binocular','NVGoggles','ItemCompass','ItemMap','ItemRadio','ItemWatch'],
	['aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','aaw_f88_mag','HandGrenade_West','HandGrenade_West','HandGrenade_West','SmokeShellBlue','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD'],
	['AAW_NZDFIW_a1','M9']
]];

//--- Squads.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Squads\Squad_OA_US.sqf";

if (WF_A2_CombinedOps) then {
	//--- Artillery.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Artillery\Artillery_CO_US.sqf";
	//--- Units.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Units\Units_CO_US.sqf";
	//--- Structures.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Structures\Structures_CO_US.sqf";
	//--- Upgrades.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Upgrades_CO_US.sqf";
} else {
	//--- Artillery.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Artillery\Artillery_OA_US.sqf";
	//--- Units.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Units\Units_OA_US.sqf";
	//--- Structures.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Structures\Structures_OA_US.sqf";
	//--- Upgrades.
	(_side) Call Compile preprocessFileLineNumbers "Common\Config\Core_Upgrades\Upgrades_OA_US.sqf";
};