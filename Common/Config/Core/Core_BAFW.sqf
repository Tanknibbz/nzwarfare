/* BAF (Woodland) Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Static Defenses */
_c = _c + ['BAF_GPMG_Minitripod_W'];
_i = _i + [['','',225,0,1,0,'Defense',0,'ADF (STATIC)',[]]];

_c = _c + ['BAF_GMG_Tripod_W'];
_i = _i + [['','',250,0,1,0,'Defense',0,'ADF (STATIC)',[]]];

_c = _c + ['BAF_L2A1_Minitripod_W'];
_i = _i + [['','',300,0,1,0,'Defense',0,'ADF (STATIC)',[]]];

_c = _c + ['BAF_L2A1_Tripod_W'];
_i = _i + [['','',325,0,1,0,'Defense',0,'ADF (STATIC)',[]]];

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
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_BAFW: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_BAFW: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_BAFW: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];