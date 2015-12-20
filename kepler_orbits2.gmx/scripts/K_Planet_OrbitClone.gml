///K_Planet_OrbitClone(planet)
var old_orbit = K_Obj_GetOrbit(argument0);
var new_orbit = _K_Orbit_CloneShallow(old_orbit);
_K_Obj_AddSatelliteOrbit(K_Orbit_GetCentralBody(new_orbit), a);