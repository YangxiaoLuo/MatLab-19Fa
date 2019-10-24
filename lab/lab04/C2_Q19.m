syms k lambda k T z
f(k) = k*exp(-lambda*k*T);
F(z) = ztrans(f, k, z);
disp(F)