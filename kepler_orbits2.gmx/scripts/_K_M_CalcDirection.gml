///_K_M_CalcDirection(km, nu)
var km = argument0, nu = argument1;
var k = km[K_M_ORBIT]
var r = K_Orbit_GetRadius(k, nu), d =  K_Orbit_GetSemiMajorAxis(k)* 2;
var omega = k[K_ORBIT_OMEGA], e = k[K_ORBIT_E];
var r2 =  d - r;
var num = sqr(r) + sqr(r2) - sqr(d*e);
var divider = 2*r*r2;
var v = num/divider;
if (v >= 1) {
    var factor = 0.5*pi;
} else if (v <= -1) {
    var factor = 0;
} else {
    var factor = 0.5*pi - arccos(v)/2;
}
if (nu < pi) {
    return (nu+omega+factor + 0.5*pi * (1-km[K_M_ORBITSPIN] ) ) mod (K_CONST_TAU); 
} else {
    return (nu + omega - pi - factor+ 0.5*pi * (1-km[K_M_ORBITSPIN] ) + K_CONST_TAU ) mod (K_CONST_TAU);
}