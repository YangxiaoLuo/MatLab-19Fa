close all;clear;
A = imread('man.png'); 
A = double(A); 
% %本实验中这一句不能省略，因为整数型的imfilter会有舍入，影响结果准确性
Af = fft2(A);

kernel = fspecial('disk',5);
B = imfilter(A,kernel,'symmetric');
B = [B,fliplr(B);flipud(B),flipud(fliplr(B))]; 
%采用对称延拓将模糊图像复制四份，从而变成了大四倍的周期延拓的图
Bf = fft2(B);

% Kf = fft2(kernel); 
%11X11的模糊核的二维离散傅里叶变换还是11X11的无法做除法。
[m,n,~] = size(A);
kernel_Extend = zeros(2*m,2*n);%延拓模糊核长宽各扩大了2倍
kernel_Extend(1:11,1:11)=kernel;%定义了延拓模糊核
kernel_Extend = kernel_Extend([6:end,1:5],[6:end,1:5]);
%将模糊核中心移动到左上角
KfE = fft2(kernel_Extend);
%做延拓模糊核的二维离散傅里叶变换

Cf = Bf./KfE;   %KfE的小元素到1e-7数量级，所以对误差非常敏感
C = ifft2(Cf);  %逆变换后，得到延拓后的大清晰图像
C = C(1:m,1:n); %截取左上角部分作为恢复结果
imshow(uint8(C));
PSNR = psnr(uint8(C),uint8(A)) %PSNR值和周期延拓完全一样
