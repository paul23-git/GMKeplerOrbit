///K_Orbit_Create(planet, eccentricity, semi_major_axis [km], argument_periapsis [RAD])

var a;
a[K_ORBIT_OBJ] = argument0;
a[K_ORBIT_E] = argument1;
a[K_ORBIT_A] = -1;
a[K_ORBIT_SEMILATUSRECTUM] = argument2*(1 - sqr(argument1));
a[K_ORBIT_OMEGA] = argument3;
a[K_ORBIT_PLANETS] = ds_list_create();

return a;