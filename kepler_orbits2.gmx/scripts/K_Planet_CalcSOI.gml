///K_Planet_CalcSOI(planet)

var p = argument0;
var o = K_Obj_GetOrbit(p);
var a = K_Orbit_GetRadius(o, K_Obj_GetTrueAnomaly(p));
var s = K_Orbit_GetCentralBody(o);
return a * power(K_Obj_GetMass(p)/K_Obj_GetMass(s),0.4);