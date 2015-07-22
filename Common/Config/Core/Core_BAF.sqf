/* BAF (MTP) Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */
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
_c = _c + ['adf_sovrover6x6'];
_i = _i + [['','',475,12,-2,0,1,0,'ADF',[]]];

_c = _c + ['adf_sovrover'];
_i = _i + [['','',375,13,-2,0,1,0,'ADF',[]]];

_c = _c + ['adf_lav25_hq'];
_i = _i + [['','',965,20,-2,0,1,0,'ADF',[]]];

_c = _c + ['adf_lav25'];
_i = _i + [['','',1025,21,-2,0,1,0,'ADF',[]]];

/* Heavy Vehicles */
_c = _c + ['adf_m1a1'];
_i = _i + [['','',4000,30,-2,0,2,0,'ADF',[]]];

/* Air Vehicles */
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
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_BAF: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_BAF: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_BAF: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];