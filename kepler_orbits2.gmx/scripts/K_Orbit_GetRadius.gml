///K_Orbit_GetRadius(orbit, true_anomaly)
var o = argument0, nu = argument1;

var e = o[K_ORBIT_E], a = K_Orbit_GetSemiMajorAxis(o);


return a* (1 - sqr(e))/(1 + e * cos(nu))