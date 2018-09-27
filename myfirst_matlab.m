tire1=imread('tire.tif');
[m,n]=size(tire1);  %获取图片像素矩阵的尺寸
imshow(tire1)
% tire2=uint8(zeros(m,n)); %uint8（）为无符号8位整形
% for row=1:m
%     for col=1:n
%         tire2(row,col)=sqrt(255)*sqrt(double(tire1(row,col))); %把直线对应成一个类似sqrt(x)的函数，让像素值更趋近于255
%         tire2(row,col)=round(tire2(row,col));%四舍五入函数
%     end
% end

%将图片直接作为矩阵处理
tire2=sqrt(255)*sqrt(double(tire1));
tire2=uint8(round(tire2));

figure
imshow(tire2)