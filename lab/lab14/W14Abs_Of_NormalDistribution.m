clear
rng default
A = randn(1000);
A = abs(A);
Expe = mean(A(:));
errE = abs(Expe - sqrt(2/pi))
Vari = var(A(:));
errV = abs(Vari - (1 - 2/pi))