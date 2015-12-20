///tmp_debug(planet, sys)

var planet = argument0, sys = argument1;
var delta_step, kepler_object;
var current_t, current_M, current_E, current_pos, prev_time, prev_M, prev_E, prev_pos;
current_t = planet[| K_OBJ_TIME];

//previous point:
delta_step = K_System_GetDeltaTime(sys);
kepler_object = planet[| K_OBJ_KOO];
prev_time = ( (planet[| K_OBJ_TIME] - delta_step) mod kepler_object[K_M_PERIOD]) mod kepler_object[K_M_PERIOD];

prev_M = _K_M_CalcMeanAnomalyFromTime(kepler_object, prev_time);
prev_E = K_Orbit_MeanToEccentricAnomaly(kepler_object[K_M_ORBIT], prev_M);
prev_pos = K_Orbit_GetPosEccentric(kepler_object[K_M_ORBIT], prev_E);

//current_point                
current_M = _K_M_CalcMeanAnomalyFromTime(kepler_object, current_t);
current_E = K_Orbit_MeanToEccentricAnomaly(kepler_object[K_M_ORBIT], current_M);
current_pos = K_Orbit_GetPosEccentric(kepler_object[K_M_ORBIT], current_E);

var tmp = 2;