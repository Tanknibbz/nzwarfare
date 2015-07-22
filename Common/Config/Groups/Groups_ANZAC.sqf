/*
	Groups (Used in towns).
*/

Private ["_faction","_k","_l","_side","_u"];
_l = [];//--- Unit list
_k = [];//--- Type used by AI.

_side = "WEST";
_faction = "ANZAC";

_k = _k + ["Squad"];
_u		= ["nzdf_desert_soldier_sl"];
_u = _u + ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_mg"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier"];
_u = _u + ["nzdf_desert_soldier_medic"];
_l = _l + [_u];

_k = _k + ["Squad_Advanced"];
_u		= ["nzdf_nzsas1"];
_u = _u + ["nzdf_nzsas_Medic"];
_u = _u + ["nzdf_nzsas3"];
_u = _u + ["nzdf_nzsas4"];
_u = _u + ["nzdf_nzsas5"];
_u = _u + ["nzdf_nzsas2"];
_u = _u + ["nzdf_nzsas2"];
_u = _u + ["nzdf_nzsas1"];
_l = _l + [_u];

_k = _k + ["Team"];
_u		= ["nzdf_desert_soldier_sl"];
_u = _u + ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier"];
_l = _l + [_u];

_k = _k + ["Team"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier"];
_l = _l + [_u];

_k = _k + ["Team"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_medic"];
_l = _l + [_u];

_k = _k + ["Team_MG"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_mg"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_l = _l + [_u];

_k = _k + ["Team_AT"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_at"];
_l = _l + [_u];

_k = _k + ["Team_HAT"];
_u		= ["nzdf_desert_soldier_hat"];
_u = _u + ["nzdf_desert_soldier_hat"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_at"];
_l = _l + [_u];

_k = _k + ["Team_AA"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_hat"];
_u = _u + ["nzdf_desert_soldier_hat"];
_l = _l + [_u];

_k = _k + ["Team_Sniper"];
_u		= ["nzdf_nzsas5"];
_u = _u + ["nzdf_nzsas5"];
_u = _u + ["nzdf_nzsas5"];
_u = _u + ["nzdf_desert_soldier"];
_l = _l + [_u];

_k = _k + ["Motorized"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["NZDF_HMMWV_UA"];
_u = _u + ["nzdf_pinz"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier"];
_l = _l + [_u];

_k = _k + ["Motorized"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["NZDF_HMMWV_SOV"];
_u = _u + ["HNZDF_HMMWV_SOV"];
_u = _u + ["nzdf_desert_soldier_ar"];
_l = _l + [_u];

_k = _k + ["Motorized"];
_u		= ["NZDF_HMMWV_UA"];
_u = _u + ["ZDF_HMMWV_SOV"];
_u = _u + ["ZDF_HMMWV_SOV"];
_l = _l + [_u];

_k = _k + ["AA_Light"];
_u		= ["nzdf_desert_soldier_tl"];
_u = _u + ["HMMWV_Avenger_DES_EP1"];
_u = _u + ["HMMWV_Avenger_DES_EP1"];
_u = _u + ["nzdf_desert_soldier_hat"];
_l = _l + [_u];

_k = _k + ["AA_Heavy"];
_u		= ["HMMWV_Avenger_DES_EP1"];
_l = _l + [_u];

_k = _k + ["Mechanized"];
_u		= ["M1126_ICV_M2_EP1"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_medic"];
_u = _u + ["nzdf_desert_soldier"];
_l = _l + [_u];

_k = _k + ["Mechanized"];
_u		= ["LAV25"];
_u = _u + ["LAV25"];
_l = _l + [_u];

_k = _k + ["Mechanized"];
_u		= ["LAV25"];
_u = _u + ["LAV25"];
_l = _l + [_u];

_k = _k + ["Mechanized_Heavy"];
_u		= ["LAV25"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_medic"];
_u = _u + ["nzdf_desert_soldier"];
_l = _l + [_u];

_k = _k + ["Mechanized_Heavy"];
_u		= ["Scorpion"];
_u = _u + ["LAV25"];
_l = _l + [_u];

_k = _k + ["Armored_Light"];
_u		= ["LAV25"];
_u = _u + ["Scorpion"];
_l = _l + [_u];

_k = _k + ["Armored_Heavy"];
_u		= ["LAV25"];
_u = _u + ["LAV25"];
_u = _u + ["Scorpion"];
_u = _u + ["Scorpion"];
_l = _l + [_u];

_k = _k + ["Armored_Heavy"];
_u		= ["Scorpion"];
_u = _u + ["Scorpion"];
_u = _u + ["Scorpion"];
_l = _l + [_u];

[_k,_l,_side,_faction] Call Compile preprocessFile "Common\Config\Config_Groups.sqf";