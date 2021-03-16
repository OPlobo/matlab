clc;close all; clear;
% prewitt & roberts
cimg = imread('201.jpg');
gimg = rgb2gray(cimg);
gimg = im2double(gimg);

roberts = [1, 0 ; 0 ,-1];

th = 0.05;
r = convn(gimg,roberts,'same');
r = r>th;
r= r==0;
imshow(r)
imwrite(r,'roberts.jpg');
