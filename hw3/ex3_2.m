clc;clear;close all;
img = imread('006.jpg');
img = rgb2gray(img);
img = im2double(img);


img = imnoise(img,'gaussian');
figure
imshow(img);
F1 = fft2(img);
F1 = fftshift(F1);
figure
imshow(0.1*log(1+abs(F1)));

[h,w] = size(F1);
x1= floor(h/2);
x2 = floor(w/2);
d0 = 60;

for i = 1:h
    for j = 1:w
       d = sqrt((i-x1)^2 + (j-x2)^2);
       c = exp(-d^2/(2*d0^2));
       F1(i,j) = c*F1(i,j);
    end
end
figure
imshow(0.1*log(1+abs(F1)));

G = F1;
G = ifftshift(G);
G = ifft2(G);
figure
imshow(G)