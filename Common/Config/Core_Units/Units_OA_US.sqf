Private ['_restriction_air','_side','_u'];

_side = _this;
_restriction_air = missionNamespace getVariable "WFBE_C_UNITS_RESTRICT_AIR";

_u 			= ['nzdf_desert_soldier'];
_u = _u		+ ['nzdf_desert_soldier1'];
_u = _u		+ ['nzdf_desert_soldier_at'];
_u = _u		+ ['nzdf_desert_soldier_hat'];
_u = _u		+ ['US_Soldier_AA_EP1'];
_u = _u		+ ['nzdf_desert_soldier_ar'];
_u = _u		+ ['nzdf_desert_soldier_mg'];
_u = _u		+ ['nzdf_desert_soldier_medic'];
_u = _u		+ ['nzdf_desert_engineer'];
_u = _u		+ ['nzdf_desert_soldier_tl'];
_u = _u		+ ['nzdf_desert_soldier_sl'];
_u = _u		+ ['nzdf_desert_soldier_crew'];
_u = _u		+ ['NZDF_Heli_Pilot'];
_u = _u		+ ['nzdf_nzsas1'];
_u = _u		+ ['nzdf_nzsas_Medic'];
_u = _u		+ ['nzdf_nzsas3'];
_u = _u		+ ['nzdf_nzsas4'];
_u = _u		+ ['nzdf_nzsas5'];
_u = _u		+ ['nzdf_nzsas2'];

missionNamespace setVariable [Format ["WFBE_%1BARRACKSUNITS", _side], _u];
if (local player) then {['BARRACKS', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['ATV_US_EP1'];
_u = _u		+ ['NZDF_HMMWV'];
_u = _u		+ ['NZDF_HMMWV_SOV'];
_u = _u		+ ['NZDF_HMMWV_UA'];
_u = _u		+ ['Zodiac'];
_u = _u		+ ['HMMWV_Avenger_DES_EP1'];
_u = _u		+ ['nzdf_pinz'];
_u = _u		+ ['HMMWV_Terminal_EP1'];
_u = _u		+ ['MtvrSalvage_DES_EP1'];
_u = _u		+ ['LAV25'];
_u = _u		+ ['HMMWV_Ambulance_DES_EP1'];
_u = _u		+ ['MtvrSalvage_DES_EP1'];
if ((missionNamespace getVariable "WFBE_C_ECONOMY_SUPPLY_SYSTEM") == 0) then {_u = _u		+ ['MtvrSupply_DES_EP1']};
_u = _u		+ ['MTVR'];
if ((missionNamespace getVariable "WFBE_C_ECONOMY_SUPPLY_SYSTEM") == 0) then {_u = _u		+ ['WarfareSupplyTruck_USMC']};
_u = _u		+ ['RHIB'];
_u = _u		+ ['RHIB2Turret'];

missionNamespace setVariable [Format ["WFBE_%1LIGHTUNITS", _side], _u];
if (local player) then {['LIGHT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['Scorpion'];

missionNamespace setVariable [Format ["WFBE_%1HEAVYUNITS", _side], _u];
if (local player) then {['HEAVY', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ['nzdf_uh1h'];
_u = _u		+ ['nzdf_nh90_mg'];
_u = _u		+ ['sfp_hkp15'];
_u = _u		+ ['sfp_hkp15_rbs55'];

if (_restriction_air == 0) then {
	_u = _u		+ ['nzdf_c130'];
	_u = _u		+ ['rnzaf_f16_2'];
	_u = _u		+ ['rnzaf_f16_1'];
	_u = _u		+ ['rnzaf_f16'];
	_u = _u		+ ['JMSDF_P3C'];
};

missionNamespace setVariable [Format ["WFBE_%1AIRCRAFTUNITS", _side], _u];
if (local player) then {['AIRCRAFT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

	_u = ['nzdf_c130'];
	_u = _u		+ ['rnzaf_f16_2'];
	_u = _u		+ ['rnzaf_f16_1'];
	_u = _u		+ ['rnzaf_f16'];
	_u = _u		+ ['JMSDF_P3C'];


missionNamespace setVariable [Format ["WFBE_%1AIRPORTUNITS", _side], _u];
if (local player) then {['AIRPORT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};

_u 			= ["Old_bike_TK_CIV_EP1"];
_u = _u		+ ["MMT_Civ"];
_u = _u		+ ["Old_moto_TK_Civ_EP1"];
_u = _u		+ ["Lada1_TK_CIV_EP1"];
_u = _u		+ ["SkodaBlue"];
_u = _u		+ ["car_sedan"];
_u = _u		+ ["car_hatchback"];
_u = _u		+ ["Volha_1_TK_CIV_EP1"];
_u = _u		+ ["datsun1_civil_1_open"];
_u = _u		+ ["datsun1_civil_3_open"];
_u = _u		+ ["hilux1_civil_1_open"];
_u = _u		+ ["LandRover_TK_CIV_EP1"];
_u = _u		+ ["V3S_Open_TK_CIV_EP1"];
_u = _u		+ ["Ikarus_TK_CIV_EP1"];
if ((missionNamespace getVariable "WFBE_C_UNITS_TOWN_PURCHASE") > 0) then {
	_u = _u		+ [missionNamespace getVariable "WFBE_WESTSOLDIER"];
};

missionNamespace setVariable [Format ["WFBE_%1DEPOTUNITS", _side], _u];
if (local player) then {['DEPOT', _side, _u] Call Compile preProcessFile 'Client\Init\Init_Faction.sqf'};