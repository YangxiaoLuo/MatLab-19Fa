%% Q1
syms x t
f = sin(t)/t;
y = int(f, t, [0, x]);
disp(y)
fplot(y, [0 2*pi])
a1 = vpa(subs(y, x, 4.5), 5);
disp(a1)

%% Q2
clear all
syms x y
f = 1/sqrt(1+x^2+y^2)^3;
%f = 1/sqrt((1+x^2+y^2)^3);
a2 = int(int(f, x, [0, 1]), y, [0, 1]);
disp(a2)
a2_ = vpa(a2, 5);
disp(a2_)

%% Q3
clear all
syms y(x)
Dy = diff(y, x);
eq = 0.1*y*Dy + 0.3*x == 0;
S = dsolve(eq);
disp(S)
y1 = subs(S, 'C4', 1);
fplot(y1)
grid on
axis equal
axis([-2, 2, -2, 2])

%% Q4
clear all
syms y(x)
Dy = diff(y, x);
D2y = diff(y, x, 2);
eq = x*D2y - 3*Dy == x^2;
cond = [y(1) == 0, y(5) == 0];
S = dsolve(eq, cond);
disp(S)
fplot(S, [-1, 6])

%% Q5
clear all
syms f(t) g(t) x w t0
F1 = fourier(f(t-t0), t, w);
disp(F1)
F2 = fourier(int(f(x-t)*g(t), t, [-inf, inf]), x, w);
disp(F2)
F3 = fourier(diff(f, t), t, w);
disp(F3)