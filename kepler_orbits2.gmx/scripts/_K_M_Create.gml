///_K_M_Create( Kepler_Orbit, MeanAnomalyAtEpoch [radians], spin [+1, -1])
var km, orbit = argument0;
var around = orbit[K_ORBIT_OBJ];
var mu = K_GRAVITATIONAL_CONSTANT * around[| K_OBJ_MASS];
km[K_M_MU] = mu
km[K_M_ORBIT] = orbit;
km[K_M_MEANANOMALYEPOCH] = argument1;
km[K_M_ORBITSPIN] = argument2;
var t = power(K_Orbit_GetSemiMajorAxis(orbit),3);
km[K_M_MEANMOTION] = sqrt(mu / t) //mean motion
km[K_M_PERIOD] = K_CONST_TAU*sqrt(t / mu);
return km;