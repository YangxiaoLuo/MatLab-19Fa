%% C3Q1
a=0;b=pi;
t1=a:pi/9:pi;
t2=linspace(a,b,10);
T=t1*t2';
F=find(T<0);
size(a),size(t1),size(T),size(F)
ndims(a),ndims(t1),ndims(T),ndims(F)
length(a),length(t1),length(T),length(F)
logical(t1==t2)
%% C3Q2
clear
A=reshape(1:18,3,6);
A((A==2)|(A==4)|(A==8)|(A==16))=NaN;
A(:,[4,5])=inf;
%% C3Q5
clear
A=magic(3);
rng default
B=rand(3);
logical(A.*B==B.*A)
logical(A*B==A.*B)
logical(A*B==B*A)
logical(A.\B==B.\A)
logical(A\B==B/A)
logical(A*A\B-B==A*(A\B)-B)
logical(A\eye(3)==eye(3)/A)
%% Ex1
clear
A=[5 2 3
    8 9 6
    1 4 7];
A=sort(A);
A=sort(A,'descend');
A=sort(A,2);
A=reshape(sort(A(:)),3,3);
%% Ex2
clear
rng default
A=rand(4);
[~,E]=eigs(A);
%% Ex3
% Same as C3Q1
%% Ex4
clear
rng default
A=rand(5);
tic,A1=find(A>=0.5);toc %% One colume
tic,A2=A>=0.5;toc %% Keeping the shape of the original matrix
tic,A(A1)=1./A(A1);toc
tic,A(A2)=1./A(A2);toc
