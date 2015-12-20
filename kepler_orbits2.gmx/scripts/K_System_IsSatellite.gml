///K_System_IsSatellite(planet, satellite)
var planet = argument0;
var satellite = argument1;
var l = K_Obj_GetLevel(planet);
var o = K_Obj_GetOrbit(satellite);
while (is_array(o) && K_Obj_GetLevel(satellite) > l) {
    satellite = K_Orbit_GetCentralBody(o);
    if (satellite == planet) {
        return true;
    }
    o = K_Obj_GetOrbit(satellite);
}
return false;