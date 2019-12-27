%% Q1
Trump_black = imread('QMQ1.png');
background = imopen(Trump_black, strel('disk', 15));
ind = (background(:,:,1)<=10)&(background(:,:,2)<=10)&(background(:,:,3)<=10);
ind_red = false(size(Trump_black));
ind_red(:,:,1) = ind;
ind_green = false(size(Trump_black));
ind_green(:,:,2) = ind;
ind_blue = false(size(Trump_black));
ind_blue(:,:,3) = ind;
Trump_red = Trump_black; Trump_red(ind_red) = 255;
Trump_blue = Trump_black; Trump_blue(ind_blue) = 255;
Trump_white = Trump_black; Trump_white(ind_red | ind_green | ind_blue) = 255;
subplot(2,2,1)
imshow(Trump_black); title('BLACK');
subplot(2,2,2)
imshow(Trump_red); title('RED');
subplot(2,2,3)
imshow(Trump_blue); title('BLUE');
subplot(2,2,4)
imshow(Trump_white); title('WHITE');
%% Q2
T=240;
for t=1:T
    mandelbrot(1024,100,-0.21503361460851339,0.67999116792639069,exp(-t/10))
    picname=[num2str(t) '.fig'];
    saveas(gcf,picname)
    close
end
for t=1:T
    picname=[num2str(t) '.fig'];
    open(picname)
    frame=getframe(gcf);  
    im=frame2im(frame);
    [I,map]=rgb2ind(im,20);          
    if t==1
        imwrite(I,map,'mandelbrot.gif','gif', 'Loopcount',inf,'DelayTime',1/24);
    elseif t==T
        imwrite(I,map,'mandelbrot.gif','gif','WriteMode','append','DelayTime',1/24);
    else
        imwrite(I,map,'mandelbrot.gif','gif','WriteMode','append','DelayTime',1/24);
    end
    close all
end
%% Q3(1)
scratched_pic_name = 'Peppers_thin_scratch.png';
original_pic_name = 'Peppers_clear.png';
fixed_pic_name = 'Peppers_fixed.png';

win_size = 5;
win_area = (2*win_size+1)^2;
pic = imread(scratched_pic_name);
fixed_pic = padarray(pic,[win_size, win_size],'replicate');
size_pic = size(fixed_pic);
done = fixed_pic ~= 0;
conf = double(~done);
interior = done;
distance = double(interior);

while(min(min(done))==0)
    
    for i=1:numel(done)%find(done == 0)
        [x,y] = ind2sub(size(done), i);
        if x<1+win_size || x>size_pic(1)-win_size || y<1+win_size || y>size_pic(2)-win_size
            interior(i) = 0;
            conf(i) = 0;
            done(i) = 1;
        else
            win = done(x-win_size:x+win_size,y-win_size:y+win_size);
            ratio = sum(win(:))/win_area;
            if done(i) == 1 && ratio < 1
                interior(i) = 0;
            end
            if done(i) == 0
                conf(i) = ratio;
            end
        end
    end
    
    disp(sum(sum(~done)))
    [x,y]=find(conf==max(max(conf)));
    x0 = x(1); y0 = y(1);
    win0 = double(fixed_pic(x0-win_size:x0+win_size,y0-win_size:y0+win_size));
    mask = done(x0-win_size:x0+win_size,y0-win_size:y0+win_size);

    for i=1:numel(interior)
        if interior(i) == 1
            [x,y] = ind2sub(size(done), i);
            win = double(fixed_pic(x-win_size:x+win_size,y-win_size:y+win_size));
            sub = win-win0;
            sub(mask==0) = 0;
            distance(i) = norm(abs(sub(:)));
        else
            distance(i) = nan;
        end
    end
    [x,y]=find(distance==min(min(distance)));
    x1 = x(1); y1 = y(1);
    patch = fixed_pic(x1-win_size:x1+win_size,y1-win_size:y1+win_size);
    patch(mask==1) = 0;
    fixed_pic(x0-win_size:x0+win_size,y0-win_size:y0+win_size) = fixed_pic(x0-win_size:x0+win_size,y0-win_size:y0+win_size)+patch;
    done(x0-win_size:x0+win_size,y0-win_size:y0+win_size) = 1;
    conf(x0-win_size:x0+win_size,y0-win_size:y0+win_size) = 0;
end
fixed_pic = fixed_pic(1+win_size:size_pic(1)-win_size,1+win_size:size_pic(2)-win_size);
original_pic = imread(original_pic_name);
PSNR = psnr(fixed_pic, original_pic);
imwrite(fixed_pic, fixed_pic_name);
%% Q3(2)
scratched_pic_name = 'Fingerprint256_thick_scratch.png';
original_pic_name = 'Fingerprint256.png';
fixed_pic_name = 'Fingerprint256_fixed.png';

win_size = 5;
win_area = (2*win_size+1)^2;
pic = imread(scratched_pic_name);
fixed_pic = padarray(pic,[win_size, win_size],'replicate');
size_pic = size(fixed_pic);
done = fixed_pic ~= 0;
conf = double(~done);
interior = done;
distance = double(interior);

while(min(min(done))==0)
    
    for i=1:numel(done)%find(done == 0)
        [x,y] = ind2sub(size(done), i);
        if x<1+win_size || x>size_pic(1)-win_size || y<1+win_size || y>size_pic(2)-win_size
            interior(i) = 0;
            conf(i) = 0;
            done(i) = 1;
        else
            win = done(x-win_size:x+win_size,y-win_size:y+win_size);
            ratio = sum(win(:))/win_area;
            if done(i) == 1 && ratio < 1
                interior(i) = 0;
            end
            if done(i) == 0
                conf(i) = ratio;
            end
        end
    end
    
    disp(sum(sum(~done)))
    [x,y]=find(conf==max(max(conf)));
    x0 = x(1); y0 = y(1);
    win0 = double(fixed_pic(x0-win_size:x0+win_size,y0-win_size:y0+win_size));
    mask = done(x0-win_size:x0+win_size,y0-win_size:y0+win_size);

    for i=1:numel(interior)
        if interior(i) == 1
            [x,y] = ind2sub(size(done), i);
            win = double(fixed_pic(x-win_size:x+win_size,y-win_size:y+win_size));
            sub = win-win0;
            sub(mask==0) = 0;
            distance(i) = norm(abs(sub(:)));
        else
            distance(i) = nan;
        end
    end
    [x,y]=find(distance==min(min(distance)));
    x1 = x(1); y1 = y(1);
    patch = fixed_pic(x1-win_size:x1+win_size,y1-win_size:y1+win_size);
    patch(mask==1) = 0;
    fixed_pic(x0-win_size:x0+win_size,y0-win_size:y0+win_size) = fixed_pic(x0-win_size:x0+win_size,y0-win_size:y0+win_size)+patch;
    done(x0-win_size:x0+win_size,y0-win_size:y0+win_size) = 1;
    conf(x0-win_size:x0+win_size,y0-win_size:y0+win_size) = 0;
end
fixed_pic = fixed_pic(1+win_size:size_pic(1)-win_size,1+win_size:size_pic(2)-win_size);
original_pic = imread(original_pic_name);
PSNR = psnr(fixed_pic, original_pic);
imwrite(fixed_pic, fixed_pic_name);
%% Q3(3)
load BlurKernel.mat
blur_pic = imread('man_disk_blurred.png');
fixed_pic = deconvreg(blur_pic,kernel);
imshow(fixed_pic)