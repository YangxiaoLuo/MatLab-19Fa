% exm010501.m
t=0:pi/50:4*pi;			%�����Ա���t��ȡֵ���� 
y=exp(-t/3).*sin(3*t);	%������Ӧt��y���飻ע�⣺�˷���ǰ��С�ڵ�<2>
plot(t,y,'-r','LineWidth',2)				%��������
grid on
axis([0,4*pi,-1,1])
xlabel('t'),ylabel('y')