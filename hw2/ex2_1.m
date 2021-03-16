clear;clc;close all;
%sobel
cimg = imread('201.jpg');
gimg = rgb2gray(cimg);
gimg1 = im2double(gimg);

mask=[1 2 1;0 0 0;-1 -2 -1];
img= convn(gimg,mask,'same');
a= convn(gimg,mask,'same');
b= convn(gimg,mask','same'); %轉置

th = 25.6;
img = abs(a)>th | abs(b)>th;
img = img==0; %反轉黑白顏色
imshow(img)
imwrite(img,'sobel.jpg');