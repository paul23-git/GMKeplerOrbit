///K_Planet_Create(planet_mass [tonne], Kepler_Orbit, MeanAnomalyAtEpoch [radians], spin [+1 -1], current_time [s], EpochNow)



var a = ds_list_create();
a[| K_OBJ_MASS] = argument0;
var orbit = argument1;
var M0 = argument2;
var km = _K_M_Create(orbit, M0, argument3);
var period = _K_M_GetOrbitalPeriod(km);


var time = 0;
if (!argument5) {
    time = argument4 mod period;
}
a[| K_OBJ_TIME] = time;
a[| K_OBJ_KOO] = km;
a[| K_OBJ_ORBIT] = orbit;
K_Orbit_AddPlanetToOrbit(orbit, a);

var M = _K_M_CalcMeanAnomalyFromTime(km, time);
var E = K_Orbit_MeanToEccentricAnomaly(orbit, M);
var nu = K_Orbit_EccentricToTrueAnomaly(orbit, E);
a[| K_OBJ_NU] = nu;
a[| K_OBJ_ACTIVE] = true;

var p = K_Orbit_GetPosEccentric(orbit, E);
var parent = K_Orbit_GetCentralBody(orbit);
var newlvl = parent[| K_OBJ_LEVEL] + 1;
a[| K_OBJ_PX] = p[0];
a[| K_OBJ_PY] = p[1];
a[| K_OBJ_LEVEL] =  newlvl;
a[| K_OBJ_SUBORBITS] = ds_list_create();


return a;