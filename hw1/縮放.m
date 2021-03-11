clc;close all; clear;
img = imread("C:\Users\陳冠綸\Desktop\影像處理\001.jpg");
[h,w,d]=size(img);
figure
imshow(img)
%放大
new_img = zeros(2*h,2*w,d);
for i=1:h
    for j=1:w
        new_img(2*i-1,2*j-1,:) = img(i,j,:);
    end
end
%figure
%imshow(new_img);
bilinear = [0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];
c = uint8(convn(new_img,bilinear,'full'));
figure
imshow(c);
%縮小
new_img1 = zeros(h/2,w/2,d);
[h1,w1,d1]=size(new_img1);
for i=1:h/2
    for j=1:w/2
        new_img1(i,j,:) = img(ceil(((2*i-1)+2*i)/2),ceil(((2*j-1)+2*j)/2),:);
    end
end
figure
imshow(new_img1);