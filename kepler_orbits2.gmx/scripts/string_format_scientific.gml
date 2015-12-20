///string_format_scientific(number, accuracy);

var n = argument0, a = argument1;

if (n == 0) {
    return "0E0";
}
var nn;
if n < 0 {
    nn = -n
} else {
    nn = n;
}
var p = floor(log10(nn));
n *= power(10, -p);
return string_format(n, a, a-1) + "E" + string(p);