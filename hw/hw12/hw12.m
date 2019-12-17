%% Q1
load prob_data416.mat
Mx = max(max(R));
Me = mean(mean(R));
St = std(std(R));
St2 = std(R(:));
%% Q2
delta = 2;
A = rand(1000,1000)*delta;
% (1)
delta_est_moment = mean(A(:))*2;
% (2)
delta_est_likelihood = max(A(:));
%% Q3
load W13Q3.mat
