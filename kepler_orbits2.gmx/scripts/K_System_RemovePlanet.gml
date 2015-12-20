///K_System_RemovePlanet(sys, planet);

var sys = argument0, planet = argument1;
var to_delete = ds_list_create();
var satellite_orbits, satellites, satellite, current_planet = planet, orbit;

K_System_GetAllChilds(sys, planet, to_delete);

var P, level, li, all_planets = sys[K_S_PLANETS];
for (var i = ds_list_size(to_delete) - 1; i >= 0; --i) {
    P = ds_list_find_value(to_delete,i);
    level = K_Obj_GetLevel(P);
    m = all_planets[| level];
    ds_map_delete(m, P);
    _K_Obj_Destroy(P);
}



ds_list_destroy(to_delete);