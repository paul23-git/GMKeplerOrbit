///create_solar_system(orbitlist, planetlist, mass, scale, deltastep)
var orbits = argument0, planets = argument1;
var mass = argument2, scale = argument3, delta_step = argument4;
var sys = K_System_Create(0, 0, mass, scale, delta_step);
var star = K_System_GetMainStar(sys);

var earth_r = 6378;
var P;



//moon_orbit = 





var earth_orbit = K_Obj_AddSatelliteOrbit(star, 0.016, 149.6*power(10,6), degtorad(114.2));
ds_list_add(orbits, earth_orbit);
var mercury_orbit = K_Obj_AddSatelliteOrbit(star, 0.206, 57.91*power(10,6), degtorad(29.124));
ds_list_add(orbits, mercury_orbit);
var venus_orbit = K_Obj_AddSatelliteOrbit(star, 0.0067, 108.21*power(10,6), degtorad(55.186));
ds_list_add(orbits, venus_orbit);
var mars_orbit = K_Obj_AddSatelliteOrbit(star, 0.094, 227.94*power(10,6), degtorad(286.5));
ds_list_add(orbits, mars_orbit);
var jupiter_orbit = K_Obj_AddSatelliteOrbit(star, 0.049, 778.57*power(10,6), degtorad(275.066));
ds_list_add(orbits, jupiter_orbit);
var saturn_orbit = K_Obj_AddSatelliteOrbit(star, 0.056, 9.048*AU, degtorad(336.013));
ds_list_add(orbits, saturn_orbit);
var uranus_orbit = K_Obj_AddSatelliteOrbit(star, 0.047, 19.19*AU, degtorad(275.066));
ds_list_add(orbits, uranus_orbit);
var neptune_orbit = K_Obj_AddSatelliteOrbit(star, 0.049, 30.07 *AU, degtorad(273.219));
ds_list_add(orbits, neptune_orbit);


var pluto_orbit = K_Obj_AddSatelliteOrbit(star, 0.249, 39.264*AU, degtorad(113.7));
ds_list_add(orbits, pluto_orbit);
var ceres_orbit = K_Obj_AddSatelliteOrbit(star, 0.0758, 2.7675*AU, degtorad(72.5));
ds_list_add(orbits, ceres_orbit);
var halley_orbit = K_Obj_AddSatelliteOrbit(star, 0.967, 17.94*AU, degtorad(89));
ds_list_add(orbits, halley_orbit);
var C67P_orbit= K_Obj_AddSatelliteOrbit(star, 0.64102, 3.463*AU, degtorad(12.78));
ds_list_add(orbits, C67P_orbit);
var hale_bopp_orbit= K_Obj_AddSatelliteOrbit(star, 0.9954, 186.4*AU, degtorad(130.59));
ds_list_add(orbits, hale_bopp_orbit);
var tempel1_orbit= K_Obj_AddSatelliteOrbit(star, 0.519, 3.124*AU, degtorad(178.84));
ds_list_add(orbits, tempel1_orbit);
var encke_orbit= K_Obj_AddSatelliteOrbit(star, 0.8471, 2.2178*AU, degtorad(126.35));
ds_list_add(orbits, encke_orbit);
var eris_orbit= K_Obj_AddSatelliteOrbit(star, 0.44068, 67.781*AU, degtorad(150.98));
ds_list_add(orbits, eris_orbit);
var haumea_orbit= K_Obj_AddSatelliteOrbit(star, 0.19126, 43.218*AU, degtorad(240.20));
ds_list_add(orbits, haumea_orbit);
var makemake_orbit= K_Obj_AddSatelliteOrbit(star, 0.15586, 45.715*AU, degtorad(297.24));
ds_list_add(orbits, makemake_orbit);
var sedna_orbit= K_Obj_AddSatelliteOrbit(star, 0.853, 524.4*AU, degtorad(331.29));
ds_list_add(orbits, sedna_orbit);
var quaoar_orbit= K_Obj_AddSatelliteOrbit(star, 0.0394, 43.405*AU, degtorad(155.624));
ds_list_add(orbits, quaoar_orbit);
var OR10_orbit= K_Obj_AddSatelliteOrbit(star, 0.5058, 66.5*AU, degtorad(206.65));
ds_list_add(orbits, OR10_orbit);
var MS4_orbit= K_Obj_AddSatelliteOrbit(star, 0.14135, 41.931*AU, degtorad(213.2));
ds_list_add(orbits, MS4_orbit);
var orcus_orbit= K_Obj_AddSatelliteOrbit(star, 0.22718, 39.173*AU, degtorad(73.031));
ds_list_add(orbits, orcus_orbit);
var salacia_orbit= K_Obj_AddSatelliteOrbit(star, 0.10733, 41.907*AU, degtorad(308.01));
ds_list_add(orbits, salacia_orbit);

P = create_planet(sys,"Earth", 5.972*power(10, 21), earth_orbit, c_green, random(2*pi), 1, earth_r, sprEarth)
ds_map_add(planets,P[0], P[1] )
P = create_planet(sys,"Mercury", 3.3022*power(10, 20), mercury_orbit, c_ltgray, random(2*pi), 1, 0.3829*earth_r, sprMecrury);
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Venus", 4.8676*power(10, 21), venus_orbit, c_orange, random(2*pi), 1,0.9499*earth_r, sprVenus);
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Mars", 6.4185*power(10, 20), mars_orbit, c_red, random(2*pi), 1, 0.532*earth_r, sprMars); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Jupiter", 1.8986*power(10, 24), jupiter_orbit, c_orange, random(2*pi), 1, 10.97*earth_r, sprJupiter);
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Saturn", 5.6846*power(10, 23), saturn_orbit, c_blue, random(2*pi), 1, 9.14*earth_r, sprSaturn);
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Uranus", 8.6832*power(10, 22), uranus_orbit, c_aqua, random(2*pi), 1, 3.981*earth_r, sprUranus);
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Neptune", 1.0243*power(10, 23), neptune_orbit, c_blue, random(2*pi), 1, 3.865*earth_r, sprNeptune);
ds_map_add(planets, P[0], P[1]);



P = create_planet(sys,"Pluto", 13.05*power(10, 18), pluto_orbit, c_ltgray, random(2*pi), 1, 0.186*earth_r, sprPluto); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Ceres", 0.14*power(10, 18), ceres_orbit, c_ltgray, random(2*pi), 1, 0.0736*earth_r, sprCeres); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Eris", 16.7*power(10, 18), eris_orbit, c_ltgray, random(2*pi), 1, 0.1825*earth_r, sprEris); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Haumea", 4.006*power(10, 18), haumea_orbit, c_ltgray, random(2*pi), 1, 0.097, sprHaumea); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Makemake", 1.7*power(10, 18), makemake_orbit, c_ltgray, random(2*pi), 1, 0.112*earth_r, sprMakemake); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Sedna", 1*power(10, 18), sedna_orbit, c_ltgray, random(2*pi), 1, 0.0785*earth_r, sprSedna); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Quaoar", 1.4*power(10, 18), quaoar_orbit, c_ltgray, random(2*pi), 1, 0.0871, sprQuaoar); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"2007 OR10", 4*power(10, 18), OR10_orbit, c_ltgray, random(2*pi), 1, 0.1005*earth_r, spr2007OR10); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"2002 MS4", 1*power(10, 18), MS4_orbit, c_ltgray, random(2*pi), 1, 0.0733*earth_r, spr2002MS4); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Orcus", 1*power(10, 18), orcus_orbit, c_ltgray, random(2*pi), 1, 0.0719*earth_r, sprOrcus); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Salacia", 0.45*power(10, 18), salacia_orbit, c_ltgray, random(2*pi), 1, 0.0667*earth_r, sprSalacia); 
ds_map_add(planets, P[0], P[1]);


P = create_planet(sys,"1p/Halley's comet", 1.3*power(10, 19), halley_orbit, c_ltgray, random(2*pi), -1, 5, noone); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"67p/Churyumov–Gerasimenko", 1*power(10, 10), C67P_orbit, c_ltgray, random(2*pi), 1, 1.9, sprChuryumovGerasimenko); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"64p/Hale Bopp", 2.5*power(10, 24), hale_bopp_orbit, c_ltgray, random(2*pi), 1, 30, noone); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"9p/Tempel", 7.2*power(10, 10), tempel1_orbit, c_ltgray, random(2*pi), 1, 2.8, sprTempel); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"3p/Encke", 7.2*power(10, 10), encke_orbit, c_ltgray, random(2*pi), 1, 5, noone); 
ds_map_add(planets, P[0], P[1]);




var moon_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Earth"), 0.00594006, 384748, degtorad(318.15));
ds_list_add(orbits, moon_orbit)
var ganymede_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Jupiter"), 0.0013, 1070400, random(K_CONST_TAU));
ds_list_add(orbits, ganymede_orbit)
var titan_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Saturn"), 0.00288, 1221870, random(K_CONST_TAU));
ds_list_add(orbits, titan_orbit)
var callisto_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Jupiter"), 0.0074, 1882700, random(K_CONST_TAU));
ds_list_add(orbits, callisto_orbit)
var io_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Jupiter"), 0.0042, 421700, random(K_CONST_TAU));
ds_list_add(orbits, io_orbit)
var europa_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Jupiter"), 0.009, 670900, random(K_CONST_TAU));
ds_list_add(orbits, europa_orbit)
var triton_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Neptune"), 0.000016, 354759, random(K_CONST_TAU));
ds_list_add(orbits, triton_orbit)
var titania_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Uranus"), 0.0011, 435910, random(K_CONST_TAU));
ds_list_add(orbits, titania_orbit)
var oberon_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Uranus"), 0.0014, 583520, random(K_CONST_TAU));
ds_list_add(orbits, oberon_orbit)
var umbriel_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Uranus"), 0.0039, 266000, random(K_CONST_TAU));
ds_list_add(orbits, umbriel_orbit)
var ariel_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Uranus"), 0.0012, 190900, random(K_CONST_TAU));
ds_list_add(orbits, ariel_orbit)
var charon_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Pluto"), 0.0, 17536, random(K_CONST_TAU));
ds_list_add(orbits, charon_orbit)
var rhea_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Saturn"), 0.0012583, 527108, random(K_CONST_TAU));
ds_list_add(orbits, rhea_orbit)
var iapetus_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Saturn"), 0.0286125, 3560820, random(K_CONST_TAU));
ds_list_add(orbits, iapetus_orbit)
var dione_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Saturn"), 0.0022, 377396, random(K_CONST_TAU));
ds_list_add(orbits, dione_orbit)
var Tethys_orbit = K_Obj_AddSatelliteOrbit(K_System_FindObject(sys, "Saturn"), 0.0001, 294619, random(K_CONST_TAU));
ds_list_add(orbits, Tethys_orbit)


P = create_planet(sys,"Moon", 73.5*power(10, 18), moon_orbit, c_ltgray, random(2*pi), 1, 0.2727*earth_r, sprMoon); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Ganymede", 148.2*power(10, 18), ganymede_orbit, c_ltgray, random(2*pi), 1, 0.4043*earth_r, sprGanymede); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Titan", 135.5*power(10, 18), titan_orbit, c_ltgray, random(2*pi), 1, 0.4043*earth_r, sprTitan); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Callisto", 107.6*power(10, 18), callisto_orbit, c_ltgray, random(2*pi), 1, 0.3783*earth_r, sprCallisto); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Io", 89.3*power(10, 18), io_orbit, c_ltgray, random(2*pi), 1, 0.2859*earth_r, sprIo); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Europa", 48*power(10, 18), europa_orbit, c_ltgray, random(2*pi), 1, 0.2450*earth_r, sprEurope); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Triton", 21.5*power(10, 18), triton_orbit, c_ltgray, random(2*pi), -1, 0.2124*earth_r, sprTriton); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Titania", 3.527*power(10, 18), titania_orbit, c_ltgray, random(2*pi), -1, 0.1238*earth_r, sprTitania); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Oberon", 3.014*power(10, 18), oberon_orbit, c_ltgray, random(2*pi), -1, 0.1195*earth_r, sprOberon); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Umbriel", 1.172*power(10, 18), umbriel_orbit, c_ltgray, random(2*pi), -1, 0.0918*earth_r, sprUmbriel); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Ariel", 1.353*power(10, 18), ariel_orbit, c_ltgray, random(2*pi), -1, 0.0909*earth_r, sprAriel); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Charon", 1.52*power(10, 18), charon_orbit, c_ltgray, random(2*pi), -1, 0.0947*earth_r, sprCharon); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Rhea", 2.306518*power(10, 18), rhea_orbit, c_ltgray, random(2*pi), -1, 0.1199*earth_r, sprRhea); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Iapetus", 1.805635*power(10, 18), iapetus_orbit, c_ltgray, random(2*pi), -1, 0.1152*earth_r, sprIapetus); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Dione", 1.095452*power(10, 18), dione_orbit, c_ltgray, random(2*pi), -1, 0.0881*earth_r, sprDione); 
ds_map_add(planets, P[0], P[1]);
P = create_planet(sys,"Tethys", 0.617449*power(10, 18), Tethys_orbit, c_ltgray, random(2*pi), -1, 0.0834*earth_r, sprTethys); 
ds_map_add(planets, P[0], P[1]);//*/

return sys;