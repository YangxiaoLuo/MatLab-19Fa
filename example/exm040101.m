%exm040101 
x=realmin;
L1=(1-cos(2*x))/(x*sin(x)),	%
L2=sin(x)/x,						%  

syms t
f1=(1-cos(2*t))/(t*sin(t));
f2=sin(t)/t;
Ls1=limit(f1,t,0)
Ls2=limit(f2,t,0)  






