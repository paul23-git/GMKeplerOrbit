///K_System_Update(system)
var sys = argument0;
var step = sys[K_S_DT];
var levels = sys[K_S_PLANETS]
var max_level = ds_list_size(levels);
var l, planet;
for (var i = 0; i < max_level; ++i) {
    l = levels[| i];
    planet = ds_map_find_first(l);
    repeat (ds_map_size(l)) {
        _K_UpdatePlanet(planet, step);
        planet = ds_map_find_next(l, planet)
    }
}