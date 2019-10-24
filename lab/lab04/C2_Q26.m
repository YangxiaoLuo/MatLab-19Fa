syms t tao w
x(t) = heaviside(t+0.5) - heaviside(t-1);
h(t) = (t/2)*(heaviside(t)-heaviside(t-2));
y(t) = ilaplace(laplace(x, t, w)*laplace(h, t, w), w, t);
subplot(3,1,1)
fplot(x, [-1.5, 3])
subplot(3,1,2)
fplot(h, [-1.5, 3])
subplot(3,1,3)
fplot(y, [-1.5, 3])