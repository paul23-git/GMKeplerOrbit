///K_Orbit_GetPos(orbit, true_anomaly)
var k = argument0, nu = argument1;
var obj = k[K_ORBIT_OBJ]
var px = obj[| K_OBJ_PX], py = obj[| K_OBJ_PY], omega = k[K_ORBIT_OMEGA];
var r = K_Orbit_GetRadius(k, nu), ret;

ret[0] = px + r * cos(omega + nu)
ret[1] = py + r * sin(omega + nu)


return ret;