///_K_M_CalcAngularMomentum(km)

var km = argument0;
var o = km[K_M_ORBIT];
return  sqrt(K_Orbit_GetSemiMajorAxis(o)*(1-sqr(o[K_ORBIT_E]))*km[K_M_MU]);