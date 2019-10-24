syms s t
F(s) = (s+2)/(s^3+3*s^2+6*s+4);
f(t) = ilaplace(F, s, t);
disp(f)