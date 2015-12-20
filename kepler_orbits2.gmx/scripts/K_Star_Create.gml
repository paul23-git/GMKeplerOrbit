///K_Star_Create(x [km], y [km], mass [tonne])

var a = ds_list_create();
a[| K_OBJ_PX] = argument0;
a[| K_OBJ_PY] = argument1;
a[| K_OBJ_MASS] = argument2;
a[| K_OBJ_TIME] = 0;
a[| K_OBJ_KOO] = -1;
a[| K_OBJ_ACTIVE] = true;
a[| K_OBJ_NU] = 0;
a[| K_OBJ_ORBIT] = -1;
a[| K_OBJ_LEVEL] = -1;
a[| K_OBJ_SUBORBITS] = ds_list_create();
return a;