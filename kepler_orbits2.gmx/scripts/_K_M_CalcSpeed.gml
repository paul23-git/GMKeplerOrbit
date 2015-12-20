///_K_M_CalcSpeed(km, r [km])
var km = argument0, r = argument1;
var o = km[K_M_ORBIT];
return  sqrt(km[K_M_MU]  * ( max(0,2 / r - 1 / K_Orbit_GetSemiMajorAxis(o))));