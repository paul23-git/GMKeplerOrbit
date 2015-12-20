///K_Orbit_GetOrbitCenter(orbit)
var o = argument0, ret;
var r = K_Orbit_GetSemiMajorAxis(o) * o[K_ORBIT_E], obj = o[K_ORBIT_OBJ];

ret[0]= _K_Orbit_GetOrbitCenterDetailX(obj[| K_OBJ_PX], r, o[K_ORBIT_OMEGA]);
ret[1]= _K_Orbit_GetOrbitCenterDetailY(obj[| K_OBJ_PY], r, o[K_ORBIT_OMEGA]);
return ret;