///_K_M_CalcMeanAnomalyFromTime(km, t)
var km = argument0, time = argument1;
var t = (km[K_M_MEANANOMALYEPOCH] + km[K_M_ORBITSPIN] * km[K_M_MEANMOTION] * time  ) mod K_CONST_TAU;
if (t >= 0) {
    return t ;
} else{
    return t + K_CONST_TAU;
}