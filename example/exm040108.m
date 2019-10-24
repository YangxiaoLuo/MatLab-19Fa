%exm040108 

ff=@(x)(100*(x(2)-x(1)^2)^2+(1-x(1))^2);  

format short g
x0=[-5,-2,2,5;-5,-2,2,5];		%
[sx,sfval,sexit,soutput]=fminsearch(ff,x0)

format short e
disp([ff(sx(:,1)),ff(sx(:,2)),ff(sx(:,3)),ff(sx(:,4))])  


