Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_side','_u'];

_side = _this;

//--- Overall Dump.
_return = ["West", "US", ["USMC_MQ9Squadron","USMC_FRTeam_Razor"]] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["Scorpion"];
_u = _u + ["LAV25"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - Armoured Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,true,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

_u		= ["nzdf_uh1h"];
_u = _u + ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_medic"];
_u = _u + ["nzdf_desert_soldier"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry UH1H Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

_u		= ["NZDF_HMMWV_SOV"];
_u = _u + ["NZDF_HMMWV_UA"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - HMMWV Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,true,false,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

_u		= ["Scorpion"];
_u = _u + ["Scorpion"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - Tank Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,true,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

_u		= ["nzdf_pinz"];
_u = _u + ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_medic"];
_u = _u + ["nzdf_desert_soldier"];
_u = _u + ["nzdf_desert_soldier"];
_u = _u + ["nzdf_desert_soldier"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - Mech Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,true,false,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

_u		= ["nzdf_nh90_mg"];
_u = _u + ["nzdf_desert_soldier_tl"];
_u = _u + ["nzdf_desert_soldier_ar"];
_u = _u + ["nzdf_desert_soldier_at"];
_u = _u + ["nzdf_desert_soldier_medic"];
_u = _u + ["nzdf_desert_soldier"];
_u = _u + ["nzdf_desert_soldier"];
_u = _u + ["nzdf_desert_soldier"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry NH90 Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

missionNamespace setVariable [Format["WFBE_%1AITEAMTEMPLATES", _side], _aiTeamTemplates];
missionNamespace setVariable [Format["WFBE_%1AITEAMTEMPLATEREQUIRES", _side], _aiTeamTemplateRequires];
missionNamespace setVariable [Format["WFBE_%1AITEAMTYPES", _side], _aiTeamTypes];
missionNamespace setVariable [Format["WFBE_%1AITEAMUPGRADES", _side], _aiTeamUpgrades];
missionNamespace setVariable [Format["WFBE_%1AITEAMTEMPLATEDESCRIPTIONS", _side], _aiTeamTemplateName];