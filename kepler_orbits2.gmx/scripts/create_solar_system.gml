///create_solar_system(orbitlist, planetlist, mass, scale, deltastep)
var orbits = argument0, planets = argument1;
var mass = argument2, scale = argument3, delta_step = argument4;
var sys = K_System_Create(0, 0, mass, scale, delta_step);
var star = K_System_GetMainStar(sys);

var earth_r = 6378;
var P;
var AU = 1.4960 * power(10,8);

var hale_bopp_orbit= K_Obj_AddSatelliteOrbit(star, 0.9954, 186.4*AU, 0);
ds_list_add(orbits, hale_bopp_orbit);

P = create_planet(sys,"64p/Hale Bopp", 2.5*power(10, 24), hale_bopp_orbit, c_ltgray, 2*pi-0.0000001 , 1, 30, noone); 
ds_map_add(planets, P[0], P[1]);

return sys;