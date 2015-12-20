///_K_UpdatePlanet(planet, timestep)
var planet = argument0, delta_step = argument1;
var kepler_object = planet[| K_OBJ_KOO];
var time = ( planet[| K_OBJ_TIME] + delta_step ) mod kepler_object[K_M_PERIOD];
planet[| K_OBJ_TIME] = time;
if (planet[| K_OBJ_ACTIVE]) {
    var M = _K_M_CalcMeanAnomalyFromTime(kepler_object, time);
    var E = K_Orbit_MeanToEccentricAnomaly(kepler_object[K_M_ORBIT], M);
    var nu = K_Orbit_EccentricToTrueAnomaly(kepler_object[K_M_ORBIT], E);
    var pos = K_Orbit_GetPosEccentric(kepler_object[K_M_ORBIT], E);
    
    if (!(E == E) || !(nu == nu)) {
        show_message("hey");
        var M = _K_M_CalcMeanAnomalyFromTime(kepler_object, time);
        var E = K_Orbit_MeanToEccentricAnomaly(kepler_object[K_M_ORBIT], M);
        var nu = K_Orbit_EccentricToTrueAnomaly(kepler_object[K_M_ORBIT], E);
        var pos = K_Orbit_GetPosEccentric(kepler_object[K_M_ORBIT], E);
    }
    planet[| K_OBJ_NU] = nu;
    planet[| K_OBJ_PX] = pos[0]
    planet[| K_OBJ_PY] = pos[1];
}