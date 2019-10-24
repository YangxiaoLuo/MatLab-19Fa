syms f(x) g(x)
Df = diff(f, x);
Dg = diff(g, x);
eq1 = Df == 3*f+4*g;
eq2 = Dg == -4*f+3*g;
cond1 = f(0) == 0;
cond2 = g(0) == 1;
s = dsolve([eq1, eq2], [cond1, cond2]);
disp([s.f, s.g])