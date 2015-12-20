///K_Obj_AddSatelliteOrbit(planet, eccentricity, semi_major_axis [km], argument_periapsis [RAD])
var planet = argument0;
var o = K_Orbit_Create(planet, argument1, argument2, argument3);
_K_Obj_AddSatelliteOrbit(planet, o);
return o;