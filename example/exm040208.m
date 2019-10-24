%exm040208 

syms t								%
ft=sin(t)^2*exp(-0.1*t)-0.5*abs(t);	% 		<2>
init_guess=[-10,10];			%
for k=1:10						%
S(k)=vpasolve(ft,t,init_guess,'random',true);					%	<5>
									%
end
ts=sort(S')						%	<8>

fts=all(subs(ft,t,ts)<1e-32)	%	<9> 

y_C=@(t) sin(t).^2.*exp(-0.1*t)-0.5*abs(t);	%	<10>
figure
fh=fplot(y_C,'r');					%						<12>
grid on
xlabel('t');ylabel('y(t)')
ss1=['\it f(t) = ',fh.DisplayName];	% 	<15>
TL1=['$',ss1,'$'];					% 			<16>
title(TL1,'Interpreter','latex')	% 		<17>

axis([-2.2,2,-0.2,0.5])%	<18>
[tt,yy]=ginput(5);		%		<19>
tt							%						<20>

format long								%
for k=1:5
	[tz(k),fz(k)]=fzero(y_C,tt(k));	%	<23>
end
disp([blanks(10),'tz',blanks(18),'fz'])
disp([tz',fz'])							%				<26>

[ts,fs]=fsolve(y_C,tt+0.1);			%	<27>
disp([blanks(10),'ts',blanks(18),'fs'])
disp([ts,fs])								%			<29>



