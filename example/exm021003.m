%exm021003 
clear
As=sym(hilb(15))			% 
An=hilb(15);				% 
b=ones(15,1);				% 

format long				% 
xn=(An\b)'				% 

(An*xn')'					% 

xs1=(As\b)'				% 

(As*xs1')'				% 

[xs20,r]=linsolve(As,b);% 
xs2=xs20',r

double(r)					% 