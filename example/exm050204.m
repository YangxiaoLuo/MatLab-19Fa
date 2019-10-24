%exm050204 
figure
t=(0:100)'*2*pi/100;	% 
x=sin(t)*[1,1,3];		% 
y=cos(t)*[2,1,1];		% 
S={'normal','equal','square','fill','image','tight'};
							% 
for k=1:6
	subplot(2,3,k);		% 					<7>
	plot(x(:,1),y(:,1),'r:',x(:,2),y(:,2),'g-',...
		x(:,3),y(:,3),'b-.','LineWidth',1.5);
	title(S{k})			% 
	axis(S{k})			% 							<11>
end
Lh=legend(' ˙Õ÷','’˝‘≤','∫·Õ÷','Orientation','horizontal');	%	<13>
							% 
Lh.FontSize=11;			% 
Lh.Position=[0.374,0.472,0.272, 0.06];	% 				<16>  






