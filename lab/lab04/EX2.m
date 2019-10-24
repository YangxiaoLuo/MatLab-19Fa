syms y(x)
Dy = diff(y, x);
eq1 = Dy == x+y;
eq2 = Dy ==x^2+y^2;
s1 = dsolve(eq1);
disp(s1)
s2 = dsolve(eq2);
disp(s2)