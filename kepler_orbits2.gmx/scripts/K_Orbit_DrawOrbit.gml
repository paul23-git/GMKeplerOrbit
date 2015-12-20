///K_Orbit_DrawOrbit(orbit, pixel_scale [px/km], xoffset [px], yoffset [px])
var k = argument0, pixel_scale = argument1, xoff = argument2, yoff =argument3;
var p = K_Orbit_GetOrbitBarycenter(k);
var px = p[0] * pixel_scale, py = p[1] * pixel_scale, e = k[K_ORBIT_E], a = K_Orbit_GetSemiMajorAxis(k) * pixel_scale, omega = radtodeg(k[K_ORBIT_OMEGA]);
var m = a*e, b = a * sqrt(1 - sqr(e));  

d3d_transform_stack_push()
d3d_transform_add_translation(-m,0,0)
d3d_transform_add_rotation_z(-omega)
d3d_transform_add_translation(px+xoff,py+yoff,0)
draw_ellipse(-a, -b,a,b, true)
d3d_transform_stack_pop()/*
d3d_transform_add_translation(-px,-py,0)
d3d_transform_add_rotation_z(omega)
d3d_transform_add_translation(m,0,0)