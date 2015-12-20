///K_SolveNumericalNewton(Func, Func_deriv, x_start, const_arguments, epsilon, num_iter)

var func = argument0, deriv = argument1, x_n = argument2, args = argument3, num_iter = argument5, epsilon = argument4;
var f = script_execute(func, x_n, args);
var df = script_execute(deriv, x_n, args);
var x_next = x_n - f / df;
while (abs(x_next - x_n) > epsilon && (--num_iter)) {
    x_n = x_next;
    f = script_execute(func, x_n, args);
    df = script_execute(deriv, x_n, args);
    x_next = x_n - f / df;
}
return x_n