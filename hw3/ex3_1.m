clc;clear;close all;
img = imread('006.jpg');
img = rgb2gray(img);
img = im2double(img);

figure
imshow(img);
F1 = fft2(img);
%figure
%imshow(F1)
F1 = fftshift(F1); %頻譜中心化
figure
imshow(0.1*log(1+abs(F1))); %做log轉換

[h,w] = size(F1);
x1= floor(h/2);
x2 = floor(w/2);
d0 = 30; %半徑
for i = 1:h
    for j = 1:w
        d = sqrt((i-x1)^2 + (j-x2)^2);
        % d > d0 把中心低頻部分設為0
        % d < d0 把中心外面高頻部分設為0
        if d < d0 
            F1(i,j) = 0;
        else
            F1(i,j) = F1(i,j);
        end
    end
end
figure
imshow(0.1*log(1+abs(F1)));

G = F1;
G = ifftshift(G);
G = ifft2(G);

figure
imshow(G)
