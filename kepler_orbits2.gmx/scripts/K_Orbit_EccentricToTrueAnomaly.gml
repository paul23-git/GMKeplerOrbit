///K_Orbit_EccentricToTrueAnomaly(orbit, E)
var k = argument0, E = argument1;
var e = k[K_ORBIT_E], t = cos(E);
var t1 = sqrt(1+e)*sin(E/2), t2 = sqrt(1-e)*cos(E/2);
if (t1 == 0) {
    var TE = E/2;
    var TSE = sin(TE);
    var tmp = sin(3.141583);
    return 0;
}


return 2*arctan2(t1,t2);