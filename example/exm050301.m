%exm050301 

figure
t=(0:0.02:2)*pi;
x=sin(t);y=cos(t);z=cos(2*t);		% 
plot3(x,y,z,'b-',x,y,z,'bd')
view([-82,58])						% 
grid on
box on									% 
xlabel('x'),ylabel('y'),zlabel('z')
legend('Á´','±¦Ê¯','Location','best')
title('±¦Ê¯ÏîÁ´')  



