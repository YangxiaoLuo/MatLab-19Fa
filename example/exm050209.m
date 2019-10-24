%exm050209 

clf
t=(pi*(0:1000)/1000)';
y1=sin(t);y2=sin(10*t);y12=sin(t).*sin(10*t);
subplot(2,2,1)								% 
plot(t,y1);axis([0,pi,-1,1])
subplot(2,2,2)								% 
plot(t,y2);axis([0,pi,-1,1])
subplot('position',[0.22,0.1,0.6,0.40])	% 
plot(t,y12,'b-',t,[y1,-y1],'r:','LineWidth',2)
axis([0,pi,-1,1])  







