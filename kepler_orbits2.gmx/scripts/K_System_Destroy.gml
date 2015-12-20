///K_System_Destroy(system)
var l = argument0[K_S_PLANETS];

for (var i = ds_list_size(l) - 1; i >= 0; --i) {
    var lvl = l[| i]
    var pk = ds_map_find_first(lvl);
    repeat (ds_map_size(lvl)) {
        _K_Obj_Destroy(pk);
        pk = ds_map_find_next(lvl, pk) 
    }
    ds_map_destroy(lvl);
}
var stars = argument0[K_S_STAR];
for (var i = ds_list_size(stars) - 1; i >= 0; --i) {
    _K_Obj_Destroy(l[| i]);
}

ds_list_destroy(stars);
ds_list_destroy(l);
ds_map_destroy(argument0[K_S_PLANETNAMES]);
argument0 = 0;
return 0;