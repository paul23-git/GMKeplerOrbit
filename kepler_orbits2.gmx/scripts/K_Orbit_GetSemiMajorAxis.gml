///K_Orbit_GetSemiMajorAxis(orbit)
var orbit = argument0;
return orbit[K_ORBIT_SEMILATUSRECTUM]/(1 - sqr(orbit[K_ORBIT_E]))