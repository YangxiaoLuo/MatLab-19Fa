%C2 Q9
syms x
f(x) = exp(-abs(x))*abs(sin(x));
a = vpa(int(f, x, [-5*pi, 1.7*pi]), 64);
disp(a)