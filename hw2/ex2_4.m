clear;clc;close all;
%Laplacian
cimg = imread('201.jpg');
gimg = rgb2gray(cimg);
gimg = im2double(gimg);
mask=[0 1 0;1 -4 1;0 1 0];
img= convn(gimg,mask,'same');

figure()
th=0.03;
img = abs(img)>th;
img = img==0;
imshow(img)
imwrite(img,'laplacian.jpg');
