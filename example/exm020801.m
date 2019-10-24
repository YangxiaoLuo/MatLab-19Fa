%exm020801
clear all
syms A t w tao
yt=A*(heaviside(t+tao/2)-heaviside(t-tao/2));					%	<2>
										% 
Yw0=fourier(yt,t,w)					% 
Yw=simplify(Yw0)

Yt=ifourier(Yw,w,t)
Yts=simplify(Yt)

yt12=subs(yt,{A,tao},{1,2});		% 
fplot(yt12,'r','LineWidth',2)		% 
hold on
plot([-1,1;-1,1],[0,0;1,1],'w','LineWidth',1.5)% 
plot([-1,1;-1,1],[0,0;1,1],'ro','LineWidth',2)	% 
h0=heaviside(0);
plot([-1,1],[h0,h0],'r.','MarkerSize',25)	% 
hold off
grid on
axis equal
axis([-3,3,-0.5,1.5])
xlabel('t')
title(char(yt12)) 					% 

Yw12=subs(Yw,{A,tao},{1,2});				% 
figure
fplot(Yw12,'b','LineWidth',2)				% 
grid on,axis equal,axis([-9,9,-1,3])
xlabel('w')
title(char(Yw12))							%   








