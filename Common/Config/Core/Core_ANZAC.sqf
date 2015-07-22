/* ANZAC Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */
/* NZDF */
_c = _c + ['nzdf_desert_soldier'];
_i = _i + [['','',130,4,-1,0,0,0.86,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier1'];
_i = _i + [['','',155,4,-1,0,0,0.86,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_at'];
_i = _i + [['','',350,5,-1,0,0,0.9,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_hat'];
_i = _i + [['','',800,6,-1,0,0,0.92,'NZDF',[]]];

_c = _c + ['US_Soldier_AA_EP1'];
_i = _i + [['','',400,6,-1,0,0,0.91,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_ar'];
_i = _i + [['','',210,5,-1,0,0,0.88,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_mg'];
_i = _i + [['','',220,5,-1,0,0,0.89,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_medic'];
_i = _i + [['','',190,4,-1,0,0,0.89,'NZDF',[]]];

_c = _c + ['nzdf_desert_engineer'];
_i = _i + [['','',225,5,-1,0,0,0.87,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_crew'];
_i = _i + [['','',120,4,-1,0,0,0.86,'NZDF',[]]];

_c = _c + ['NZDF_Heli_Pilot'];
_i = _i + [['','',120,4,-1,0,0,0.87,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_tl'];
_i = _i + [['','',240,5,-1,0,0,0.94,'NZDF',[]]];

_c = _c + ['nzdf_desert_soldier_sl'];
_i = _i + [['','',220,5,-1,0,0,0.93,'NZDF',[]]];

/* ADF */
_c = _c + ['adf_engineer'];
_i = _i + [['','',110,6,-1,0,0,0.88,'ADF',[]]];

_c = _c + ['adf_at'];
_i = _i + [['','',190,6,-1,0,0,0.89,'ADF',[]]];

_c = _c + ['adf_saw_gunner'];
_i = _i + [['','',190,4,-1,0,0,0.84,'ADF',[]]];

_c = _c + ['adf_crewman'];
_i = _i + [['','',190,6,-1,0,0,0.85,'ADF',[]]];

_c = _c + ['adf_grenadier'];
_i = _i + [['','',190,5,-1,0,0,0.88,'ADF',[]]];

_c = _c + ['adf_machine_gunner'];
_i = _i + [['','',190,6,-1,0,0,0.87,'ADF',[]]];

_c = _c + ['adf_team_leader'];
_i = _i + [['','',160,6,-1,0,0,0.88,'ADF',[]]];

_c = _c + ['adf_medic'];
_i = _i + [['','',110,6,-1,0,0,0.89,'ADF',[]]];

_c = _c + ['adf_officer'];
_i = _i + [['','',110,5,-1,0,0,0.85,'ADF',[]]];

_c = _c + ['adf_f18_pilot'];
_i = _i + [['','',125,5,-1,0,0,0.83,'ADF',[]]];

_c = _c + ['adf_rifleman'];
_i = _i + [['','',130,5,-1,0,0,0.84,'ADF',[]]];

_c = _c + ['adf_squad_leader'];
_i = _i + [['','',170,5,-1,0,0,0.84,'ADF',[]]];

_c = _c + ['A_SASR_5a'];
_i = _i + [['','',375,6,-1,0,0,0.98,'ADF',[]]];

_c = _c + ['A_SASR_14a'];
_i = _i + [['','',210,5,-1,0,0,0.85,'ADF',[]]];

_c = _c + ['A_SASR_13a'];
_i = _i + [['','',340,6,-1,0,0,0.9,'ADF',[]]];

_c = _c + ['A_SASR_9a'];
_i = _i + [['','',370,6,-1,0,0,0.91,'ADF',[]]];

_c = _c + ['A_SASR_3a'];
_i = _i + [['','',200,6,-1,0,0,0.86,'ADF',[]]];

_c = _c + ['A_SASR_8a'];
_i = _i + [['','',265,6,-1,0,0,0.86,'ADF',[]]];

_c = _c + ['A_SASR_7a'];
_i = _i + [['','',225,6,-1,0,0,0.84,'ADF',[]]];

_c = _c + ['ADF_SAS_Sniper'];
_i = _i + [['','',255,6,-1,0,0,0.85,'ADF',[]]];

_c = _c + ['ADF_SAS_Spotter'];
_i = _i + [['','',260,6,-1,0,0,0.85,'ADF',[]]];

/* Light Vehicles */
_c = _c + ['ATV_US_EP1'];
_i = _i + [['','',75,14,-2,0,1,0,'NZDF',[]]];

_c = _c + ['NZDF_HMMWV'];
_i = _i + [['','',200,15,-2,0,1,0,'NZDF',[]]];

_c = _c + ['NZDF_HMMWV_SOV'];
_i = _i + [['','',450,15,-2,0,1,0,'NZDF',[]]];

_c = _c + ['HMMWV_Terminal_EP1'];
_i = _i + [['','',400,15,-2,0,1,0,'NZDF',[]]];

_c = _c + ['NZDF_HMMWV_UA'];
_i = _i + [['','',400,18,-2,0,1,0,'NZDF',[]]];

_c = _c + ['nzdf_pinz'];
_i = _i + [['','',150,20,-2,0,1,0,'NZDF',[]]];

_c = _c + ['LAV25'];
_i = _i + [['','',1200,20,-2,0,1,0,'NZDF',[]]];

_c = _c + ['HMMWV_Avenger_DES_EP1'];
_i = _i + [['','',750,25,-2,0,1,0,'NZDF',[]]];

_c = _c + ['HMMWV_Ambulance_DES_EP1'];
_i = _i + [['','',725,22,-2,0,1,0,'NZDF',[]]];

_c = _c + ['MTVR_DES_EP1'];
_i = _i + [['','',400,20,-2,0,1,0,'NZDF',[]]];

_c = _c + ['MtvrSalvage_DES_EP1'];
_i = _i + [['','',450,21,-2,0,1,0,'NZDF',[]]];

_c = _c + ['MtvrSupply_DES_EP1'];
_i = _i + [['','',550,25,-2,0,1,0,'NZDF',[]]];

/* ADF */
_c = _c + ['adf_sovrover6x6'];
_i = _i + [['','',475,12,-2,0,1,0,'ADF',[]]];

_c = _c + ['adf_sovrover'];
_i = _i + [['','',375,13,-2,0,1,0,'ADF',[]]];

_c = _c + ['adf_lav25_hq'];
_i = _i + [['','',965,20,-2,0,1,0,'ADF',[]]];

_c = _c + ['adf_lav25'];
_i = _i + [['','',1025,21,-2,0,1,0,'ADF',[]]];

/* Heavy Vehicles */
_c = _c + ['Scorpion'];
_i = _i + [['','',2500,30,-2,0,2,0,'NZDF',[]]];

/* ADF */
_c = _c + ['adf_m1a1'];
_i = _i + [['','',4000,30,-2,0,2,0,'ADF',[]]];

/* Air Vehicles */
_c = _c + ['nzdf_uh1h'];
_i = _i + [['','',2250,35,-2,0,3,0,'NZDF',[]]];

_c = _c + ['nzdf_nh90_mg'];
_i = _i + [['','',2500,35,-2,0,3,0,'NZDF',[]]];

_c = _c + ['sfp_hkp15'];
_i = _i + [['','',2800,35,-2,0,3,0,'NZDF',[]]];

_c = _c + ['sfp_hkp15_rbs55'];
_i = _i + [['','',2500,40,-2,0,3,0,'NZDF',[]]];

_c = _c + ['nzdf_c130'];
_i = _i + [['','',2500,55,-2,0,3,0,'NZDF',[]]];

_c = _c + ['rnzaf_f16_2'];
_i = _i + [['','',7500,50,-2,0,3,0,'NZDF',[]]];

_c = _c + ['rnzaf_f16_1'];
_i = _i + [['','',7500,50,-2,0,3,0,'NZDF',[]]];

_c = _c + ['rnzaf_f16'];
_i = _i + [['','',75000,60,-2,0,3,0,'NZDF',[]]];

_c = _c + ['JMSDF_P3C'];
_i = _i + [['','',1000,65,-2,0,3,0,'NZDF',[]]];

/* ADF */
_c = _c + ['adf_uh1h'];
_i = _i + [['','',2100,45,-2,0,3,0,'ADF',[]]];

_c = _c + ['adf_s70mg'];
_i = _i + [['','',2500,40,-2,0,3,0,'ADF',[]]];

_c = _c + ['adf_NH90_mg'];
_i = _i + [['','',2500,60,-2,0,3,0,'ADF',[]]];

_c = _c + ['adf_tiger_HAD_CE'];
_i = _i + [['','',4500,35,-2,0,3,0,'ADF',[]]];

_c = _c + ['adf_ch47f'];
_i = _i + [['','',2500,45,-2,0,3,0,'ADF',[]]];

_c = _c + ['adf_as350'];
_i = _i + [['','',1800,40,-1,0,3,0,'ADF',[]]];

_c = _c + ['adf_c130'];
_i = _i + [['','',1700,45,-2,0,3,0,'ADF',[]]];

_c = _c + ['ADF_SKC_F111_1r'];
_i = _i + [['','',1700,40,-2,0,3,0,'ADF',[]]];

_c = _c + ['ADF_SKC_F111_AGM'];
_i = _i + [['','',1700,60,-2,0,3,0,'ADF',[]]];

_c = _c + ['ADF_F35A'];
_i = _i + [['','',1700,35,-2,0,3,0,'ADF',[]]];

_c = _c + ['ADF_C130J'];
_i = _i + [['','',2100,45,-2,0,3,0,'ADF',[]]];

_c = _c + ['ADF_SKC_F111_AAM2'];
_i = _i + [['','',1700,40,-2,0,3,0,'ADF',[]]];

/* Special */
_c = _c + ['MQ9PredatorB_US_EP1'];
_i = _i + [['','',30000,35,-2,2,3,0,'NZDF',[]]];

/* Static Defenses */
_c = _c + ['WarfareBMGNest_M240_US_EP1'];
_i = _i + [['','',300,0,1,0,'Defense',0,'NZDF',[]]];

_c = _c + ['M2HD_mini_TriPod_US_EP1'];
_i = _i + [['','',200,0,1,0,'Defense',0,'NZDF',[]]];

_c = _c + ['M2StaticMG_US_EP1'];
_i = _i + [['','',225,0,1,0,'Defense',0,'NZDF',[]]];

_c = _c + ['SearchLight_US_EP1'];
_i = _i + [['','',125,0,1,0,'Defense',0,'NZDF',[]]];

_c = _c + ['MK19_TriPod_US_EP1'];
_i = _i + [['','',700,0,1,0,'Defense',0,'NZDF',[]]];
_c = _c + ['TOW_TriPod_US_EP1'];
_i = _i + [['','',800,0,1,0,'Defense',0,'NZDF',[]]];
_c = _c + ['Stinger_Pod_US_EP1'];
_i = _i + [['','',850,0,1,0,'Defense',0,'NZDF',[]]];
_c = _c + ['M252_US_EP1'];
_i = _i + [['','',1150,0,1,0,'Defense',0,'NZDF',[]]];
_c = _c + ['M119_US_EP1'];
_i = _i + [['','',2250,0,1,0,'Defense',0,'NZDF',[]]];

/* Defense Structures */
_c = _c + ['US_WarfareBBarrier5x_EP1'];
_i = _i + [['','',15,0,0,0,'Fortification',0,'NZDF',[]]];

_c = _c + ['US_WarfareBBarrier10x_EP1'];
_i = _i + [['','',25,0,0,0,'Fortification',0,'NZDF',[]]];

_c = _c + ['US_WarfareBBarrier10xTall_EP1'];
_i = _i + [['','',50,0,0,0,'Fortification',0,'NZDF',[]]];

_c = _c + ['Land_CamoNet_NATO_EP1'];
_i = _i + [['','',35,0,0,0,'Strategic',0,'NZDF',[]]];

_c = _c + ['Land_CamoNetVar_NATO_EP1'];
_i = _i + [['','',45,0,0,0,'Strategic',0,'NZDF',[]]];

_c = _c + ['Land_CamoNetB_NATO_EP1'];
_i = _i + [['','',55,0,0,0,'Strategic',0,'NZDF',[]]];

_c = _c + ['USOrdnanceBox_EP1'];
_i = _i + [['','',850,0,0,0,'Ammo',0,'NZDF',[]]];

_c = _c + ['USVehicleBox_EP1'];
_i = _i + [['','',1200,0,0,0,'Ammo',0,'NZDF',[]]];

_c = _c + ['USBasicAmmunitionBox_EP1'];
_i = _i + [['','',1950,0,0,0,'Ammo',0,'NZDF',[]]];

_c = _c + ['USBasicWeapons_EP1'];
_i = _i + [['','',2975,0,0,0,'Ammo',0,'NZDF',[]]];

_c = _c + ['USLaunchers_EP1'];
_i = _i + [['','',6250,0,0,0,'Ammo',0,'NZDF',[]]];

_c = _c + ['USSpecialWeapons_EP1'];
_i = _i + [['','',7200,0,0,0,'Ammo',0,'NZDF',[]]];

for '_z' from 0 to (count _c)-1 do {
	if (isClass (configFile >> 'CfgVehicles' >> (_c select _z))) then {
		_get = missionNamespace getVariable (_c select _z);
		if (isNil '_get') then {
			if ((_i select _z) select 0 == '') then {(_i select _z) set [0, [_c select _z,'displayName'] Call GetConfigInfo]};
			if (typeName ((_i select _z) select 4) == 'SCALAR') then {
				if (((_i select _z) select 4) == -2) then {
					_ret = (_c select _z) Call Compile preprocessFile "Common\Functions\Common_GetConfigVehicleCrewSlot.sqf";
					(_i select _z) set [4, _ret select 0];
					(_i select _z) set [9, _ret select 1];
				};
			};
			if (WF_Debug) then {(_i select _z) set [3,1]};
			_p = if ((_c select _z) isKindOf 'Man') then {'portrait'} else {'picture'};
			(_i select _z) set [1, [_c select _z,_p] Call GetConfigInfo];
			missionNamespace setVariable [_c select _z, _i select _z];
		} else {
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_ANZAC: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_ANZAC: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_ANZAC: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];