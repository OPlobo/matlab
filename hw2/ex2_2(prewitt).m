clear;clc;close all;
%Prewitt
cimg = imread('201.jpg');
gimg = rgb2gray(cimg);
gimg = im2double(gimg);

prewitt = [1,0,-1;1,0,-1;1,0,-1];

th = 0.05;
p = convn(gimg,prewitt,'same');%卷積
p = p>th;
p = p==0;
imshow(p)
imwrite(p,'prewitt.jpg');
