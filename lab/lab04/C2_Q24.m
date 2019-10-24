syms x(t) a b
Dx = diff(x, t);
eq = Dx == a*t^2+b*t;
cond = x(0) == 2;
s = dsolve(eq, cond);
disp(s)