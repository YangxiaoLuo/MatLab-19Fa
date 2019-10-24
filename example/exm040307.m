%exm040307 


mu=2;s=0.5;
rng(22,'v5normal')		%
x=randn(1000,1);													%	<3>
y=s*x+mu;					%						<4>
z=s*(x+mu);				%	<5>
figure
subplot(3,1,1),histfit(x),axis([-5,5,0,100]),ylabel('x')
subplot(3,1,2),histfit(y),axis([-5,5,0,100]),ylabel('y')
subplot(3,1,3),histfit(z),axis([-5,5,0,100]),ylabel('z')  







