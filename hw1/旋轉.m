clear;clc;close all;
%rotation 
img = imread("C:\Users\陳冠綸\Desktop\影像處理\000.jfif");
[h,w,d]  = size(img);
%旋轉90度
a = uint8(zeros(w,h,d)); %轉成uint8
cos_t = 0;
sin_t = 1;
for i=1:h
    for j = 1:w
        x = cos_t*j + sin_t*i; %i
        y = -sin_t*j + cos_t*i; %-j
        y= y + w +1;
        a(y,x,:) = img(i,j,:);
    end
end
%figure
%imshow(img);
%figure
%imshow(a);
%旋轉180
b = uint8(zeros(h,w,d));
cos_t = -1;
sin_t = 0;
for i=1:h
    for j = 1:w
        x = cos_t*j + sin_t*i; %-j
        y = -sin_t*j + cos_t*i; %-i
        x = x + w + 1;
        y = y + h + 1;
        %實作 這裡要調整(x,y)
        b(y,x,:) = img(i,j,:);
    end
end
%figure
%imshow(b);
%旋轉270
c = uint8(zeros(w,h,d));
cos_t = 0;
sin_t = -1;
for i=1:h
    for j = 1:w
        x = cos_t*j + sin_t*i; %-i
        y = -sin_t*j + cos_t*i; %j
        x = x+h+1;
        c(y,x,:) = img(i,j,:);
    end
end
%figure
%imshow(c);
subplot(2,2,1),imshow(img);
subplot(2,2,2),imshow(a);
subplot(2,2,3),imshow(b);
subplot(2,2,4),imshow(c);