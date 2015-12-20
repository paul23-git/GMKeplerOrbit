///K_System_AddObject(system, planet, name)
var sys = argument0;
var planets  = sys[K_S_PLANETS]
var P = argument1;
var l, level = P[| K_OBJ_LEVEL];
if (level >= 0) {
    if (level >= ds_list_size(planets)) {
        l = ds_map_create()
        ds_list_add(planets, l);
    } else {
        l = planets[| level];
    }
    ds_map_add(l, P, 0);
}

ds_map_add(sys[K_S_PLANETNAMES], argument2, P);