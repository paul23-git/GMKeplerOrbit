///K_Orbit_MeanToEccentricAnomaly(orbit, MeanAnomaly)
var o = argument0, M = argument1;
var e = o[K_ORBIT_E]
var args;
var isSecondHalf = false;
if (M > pi) {
    M = M - 2*pi
    M = -M
    isSecondHalf = true;
}

args[0] = e;
args[1] = M;
var initial = M;
if (e > 0.8 && M < pi/3  || e > 1) {
    initial = M / abs(1 - e);
    if (sqr(initial) > 6 * abs(1-e)) {
        if (M < pi) {
            initial = power(6*M, 1/3);
        } else {
            initial = ln(M + sqrt(1 + sqr(M)));
        }
    }
}


var E = _K_SolveNumericalNewton(_K_EccentricToMeanAnomaly_SolverHelper, _K_EccentricToMeanAnomalyDeriv_SolverHelper,initial, args, 0.0000001, 100)
if (isSecondHalf) {
    E = -E;
    E = E + 2*pi
}
return E;