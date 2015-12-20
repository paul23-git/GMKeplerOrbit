///K_Planet_CalcSpeed(planet)
var planet = argument0;
var kepler_object = planet[| K_OBJ_KOO]
var r = K_Orbit_GetRadius(planet[| K_OBJ_ORBIT], planet[| K_OBJ_NU])
return _K_M_CalcSpeed(kepler_object, r);