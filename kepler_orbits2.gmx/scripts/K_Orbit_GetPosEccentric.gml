///K_Orbit_GetPosEccentric(orbit, eccentric_anomaly)
var o = argument0, E = argument1;
var obj = o[K_ORBIT_OBJ], omega = o[K_ORBIT_OMEGA], e = o[K_ORBIT_E];
var a = K_Orbit_GetSemiMajorAxis(o), b = K_Orbit_GetSemiMinorAxis(o);
var r = a * e;
var p = K_Orbit_GetOrbitCenter(o);
//var px = p[0];
//var py = p[1];
var pt_x, pt_y;
pt_x = a * ( cos(E) );
pt_y = b * sin(E);

var co = cos(omega), so = sin(omega);

var pt_transl_x = pt_x * co - pt_y * so;
var pt_transl_y = pt_x * so + pt_y * co;
var px = obj[| K_OBJ_PX] - r * co;
var py = obj[| K_OBJ_PY] - r * so;


var ret;

ret[0] = px + pt_transl_x;
ret[1] = py + pt_transl_y;


return ret;