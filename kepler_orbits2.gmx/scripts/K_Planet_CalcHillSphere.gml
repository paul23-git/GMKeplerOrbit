///K_Planet_CalcHillSphere(planet)

var p = argument0;
var o = K_Obj_GetOrbit(p);
var a = K_Orbit_GetSemiMajorAxis(o);
var e = K_Orbit_GetEccentricity(o);
var s = K_Orbit_GetCentralBody(o);
return a * (1 - e) * power(K_Obj_GetMass(p)/(3*K_Obj_GetMass(s)),1/3);