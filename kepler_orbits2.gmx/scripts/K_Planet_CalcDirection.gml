///K_Planet_CalcDirection(planet)
var planet = argument0;
var kepler_object = planet[| K_OBJ_KOO];
var nu = planet[| K_OBJ_NU];
return _K_M_CalcDirection(kepler_object, nu);