syms n positive integer
f = sin(x)^n;
y = int(f, x, [0, pi/2]);
disp(y)