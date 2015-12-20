///K_Orbit_GetApoapsis(orbit)
var o = argument0, ret;
var r = (K_Orbit_GetSemiMajorAxis(o) *(1 + o[K_ORBIT_E])), obj = o[K_ORBIT_OBJ];
ret[0] = obj[| K_OBJ_PX] + r * cos(o[K_ORBIT_OMEGA])
ret[1] = obj[| K_OBJ_PY] + r * sin(o[K_ORBIT_OMEGA])

return ret;