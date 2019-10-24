%exmA104
figure
clear				%
a=2;				%
w=3;				%
t=0:0.01:10;		%
y=exp(-a*t).*sin(w*t);				%
[y_max,i_max]=max(y);				%
t_text=['t=',num2str(t(i_max))];	%		<7>
y_text=['y=',num2str(y_max)];		%		<8>
max_text=char('maximum',t_text,y_text);%<9>
tit=['y=exp(-',num2str(a),'t)*sin(',num2str(w),'t)'];
											%			<11>
hold on											%
plot(t,y,'b','LineWidth',2)					%
plot(t(i_max),y_max,'r.','MarkerSize',20)	%
text(t(i_max)+0.3,y_max+0.05,max_text)	%	<15>
axis([0,10,-0.1,0.6])
grid on,grid minor,box on
title(tit),xlabel('t'),ylabel('y')			%
hold off 

