///_K_M_Update(km)
var km = argument0;
var orbit= km[K_M_ORBIT];
var around = orbit[K_ORBIT_OBJ];
var mu = K_GRAVITATIONAL_CONSTANT * around[K_OBJ_MASS];
km[@ K_M_MU] = mu
var t = power(K_Orbit_GetSemiMajorAxis(o),3);
km[@ K_M_MEANMOTION] = sqrt(mu / t) //mean motion
km[@ K_M_PERIOD] = K_CONST_TAU*sqrt(t / mu);