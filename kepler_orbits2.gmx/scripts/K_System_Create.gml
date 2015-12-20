///K_System_Create(x_star [km], y_star [km], mass_star [tonne], scale [px/km], delta_time_step [s])


var a;
var l = ds_list_create();
ds_list_add(l, K_Star_Create(argument0, argument1, argument2));
a[K_S_STAR] = l;
a[K_S_SCALE] = argument3
a[K_S_DT] = argument4
a[K_S_PLANETS] = ds_list_create();
a[K_S_PLANETNAMES] = ds_map_create();



return a;