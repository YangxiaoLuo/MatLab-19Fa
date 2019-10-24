syms x
%% 
f = atan(x);
s = taylor(f, x, 0, 'Order', 10);
disp(s)