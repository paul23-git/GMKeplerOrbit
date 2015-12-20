///K_Orbit_Destroy(orbit)
//use: k = DestroyKeplerOrbits(k) since GM has some hideous syntax

var l = argument0[K_ORBIT_PLANETS];
ds_list_destroy(l);
return 0;