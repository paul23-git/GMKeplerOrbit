///_K_Obj_Destroy(P)
///Does destroy it's suborbits, not it's childs
var k = argument0;
if (is_array(k[K_OBJ_KOO])) {
    k[K_OBJ_KOO] = _K_M_Destroy(k[K_OBJ_KOO])
}

var l = k[| K_OBJ_SUBORBITS];
for (var i = ds_list_size(l) -1 ; i >=0; --i) {
    K_Orbit_Destroy(ds_list_find_value(l,i));
}
ds_list_destroy(l);
ds_list_destroy(k);
return 0;