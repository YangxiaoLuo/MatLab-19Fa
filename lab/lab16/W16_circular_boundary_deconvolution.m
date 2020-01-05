close all;clear;
A = imread('man.png'); 
A = double(A); 
% %本实验中这一句不能省略，因为整数型的imfilter会有舍入，影响结果准确性
Af = fft2(A);

kernel = fspecial('disk',5);
B = imfilter(A,kernel,'circular');
Bf = fft2(B);

% Kf = fft2(kernel); 
%11X11的模糊核的二维离散傅里叶变换还是11X11的无法做除法。
[m,n,~] = size(A);
kernel_Extend = zeros(m,n);
kernel_Extend(1:11,1:11)=kernel;%定义了延拓模糊核
kernel_Extend = kernel_Extend([6:end,1:5],[6:end,1:5]);
%将模糊核中心移动到左上角
KfE = fft2(kernel_Extend);
%做延拓模糊核的二维离散傅里叶变换

Err = norm(Bf - Af.*KfE)  %误差表明卷积运算可以通过傅里叶变换准确获得。
Cf = Bf./KfE;   %KfE的小元素到1e-7数量级，所以对误差非常敏感
C = ifft2(Cf);  %逆变换后，得到清晰图像
imshow(uint8(C));
PSNR = psnr(uint8(C),uint8(A)) %几乎没有误差
