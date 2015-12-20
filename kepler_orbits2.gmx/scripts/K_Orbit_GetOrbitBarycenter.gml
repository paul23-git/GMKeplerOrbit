///K_Orbit_GetOrbitBarycenter(orbit)
var o = argument0;
var obj = o[K_ORBIT_OBJ], ret;
ret[0] = obj[| K_OBJ_PX]
ret[1] = obj[| K_OBJ_PY]
return ret;