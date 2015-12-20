///K_Orbit_EccentricToMeanAnomaly(orbit, EccentricAnomaly)
var k = argument0, E=argument1;
return E - k[K_ORBIT_E] * sin(E);