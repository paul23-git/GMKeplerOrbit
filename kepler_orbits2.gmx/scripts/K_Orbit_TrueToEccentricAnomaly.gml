///K_Orbit_TrueToEccentricAnomaly(orbit, nu)
var k = argument0, nu = argument1;
var e = k[K_ORBIT_E];
var E = arctan2(sqrt(1 - sqr(e))*sin(nu), e + cos(nu));
if (E>=0){
    return E;
} else {
    return E + 2*pi;
}