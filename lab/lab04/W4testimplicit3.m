clear all, close all
syms x y z
fsurf(sqrt(1-x^2-y^2));
hold on
fsurf(-sqrt(1-x^2-y^2));
axis equal
xlabel('x'), ylabel('y'), zlabel('z')
figure;
h = fimplicit3(x^2+y^2+z^2-1);
% fimplicit3(x^2+y^2+z^2==1);
axis equal
xlabel('x'), ylabel('y'), zlabel('z')
% shading interp �޷�ȥ��fimplicit3�ĺ�ɫ������
set(h,'edgecolor','none')