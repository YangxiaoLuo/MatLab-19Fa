rng default   
A = rand(4);
[~,D1] = eig(A)  
B = A+A';
[~,D2] = eig(B)    
%默认显示了所有的特征值，与特征向量。特征值的顺序是乱的
[~,D3] = eigs(A,3,'lm') %绝对值最大的3个,顺序与版本有关
[~,D4] = eigs(A,3,'sm') %绝对值最小的三个
[~,D5] = eigs(A,3,'lr') %实部最大三个，旧版本可能会出错
[~,D6] = eigs(A,3,'sr') %实部最小的三个

[~,S,~] = svd(A) %奇异值分解
