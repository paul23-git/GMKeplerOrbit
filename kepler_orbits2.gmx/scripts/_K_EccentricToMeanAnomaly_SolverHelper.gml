///_K_EccentricToMeanAnomaly_SolverHelper(x, args)
var tx = argument0;
/*if (abs(tx) < 0.000025) {
    return tx - argument1[0] * tx-argument1[1];
} else if (abs(pi-tx) < 0.000025) {
    var M0 = argument1[1];
    var E = argument1[0];
    var tt = E*(pi-tx)
    var pt = tx - tt;
    var huh = pt-M0;
    return tx - argument1[0] * (pi-tx)-argument1[1];
}else {//*/
    return tx - argument1[0] * sin(tx)-argument1[1];
//}