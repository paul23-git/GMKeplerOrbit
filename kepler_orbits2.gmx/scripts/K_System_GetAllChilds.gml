///K_System_GetAllChilds(sys, planet, outlist);

var sys = argument0, current_planet = argument1;
var stack = argument2;
var satellite_orbits, satellites, satellite, orbit;

var stack_index = 0;

do {
    satellite_orbits = K_Obj_GetSatelliteOrbits(current_planet);
    for (var orbit_ind = ds_list_size(satellite_orbits) - 1; orbit_ind >= 0; --orbit_ind) {
        orbit = ds_list_find_value(satellite_orbits, orbit_ind);
        satellites = K_Orbit_GetOrbittingBodies(orbit);
        for (var satellite_ind = ds_list_size(satellites) - 1; satellite_ind >= 0; --satellite_ind) {
            satellite = ds_list_find_value(satellites, satellite_ind);
            ds_list_add(stack, satellite);
        }
    }
    current_planet = ds_list_find_value(stack, stack_index);
} until ++stack_index >= ds_list_size(stack);