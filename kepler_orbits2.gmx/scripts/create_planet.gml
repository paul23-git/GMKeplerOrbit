///create_planet(system, name, mass [tonne], orbit, color, meananomalyepoch, spin, radius, sprite)
var i=0;
var sys = argument[i++], name = argument[i++], mass = argument[i++], orbit = argument[i++], color = argument[i++], omega = argument[i++], spin = argument[i++], radius = argument[i++];
var sprite = argument[i++];
var planet = K_Planet_Create(mass, orbit, omega, spin, 0, true);
K_System_AddObject(sys, planet, name);
var ret;
ret[0] = planet;
ret[1] = planet_info(name, color, radius, sprite);
return ret;