%exm050307 

clf
x=[-8:0.1:8];y=x;
[X,Y]=meshgrid(x,y);
ZZ=X.^2-Y.^2;
ii=find(abs(X)>6|abs(Y)>6);			% 
ZZ(ii)=zeros(size(ii));					% 
surf(X,Y,ZZ)
xlabel('x'),ylabel('y'),zlabel('z')
shading interp
colormap(copper)
view(-45,40)
light('position',[0,-15,1])
lighting gouraud
material([0.8,0.8,0.5,10,0.5])  

