%创建矩阵
row=3;  col=4;  size=4;
matrix=zeros(row,col);
matrix=ones(row,col);
matrix=rand(row,col);
matrix=magic(size);  %幻方针

result=matrix';     %矩阵转置。符号为单引号
result=inv(matrix);     %逆阵(注意矩阵必须为方阵，且可以求逆)
result=fliplr(matrix);  %左右翻转矩阵

%矩阵的拼接 (可用来实现字符串的拼接)
result=[matrix,matrix];     %把两个矩阵横着串起来【】【】
result=[matrix;matrix];     %竖着拼【】
                                  %【】
                              
%矩阵的运算
matr1=rand(row,col);    matr2=rand(row,col);
result=matr1*matr2;     %正常的矩阵乘法，注意第一个矩阵的列要和第二个矩阵的行匹配
result=matr1.*matr2;    %两个矩阵对应位置相乘再放到原来的位置
result=matrix.^3;       %各元素的三次方

result=matr1/matr2;     %A乘以B的逆阵
result=matr1\matr2;     %A的逆阵乘以B，和matr2/matr1是不同的运算（矩阵乘法是有顺序的）

%访问数组
buf=matrix(2,4);    %访问二行四列的元素
buf=matrix(2,:);    %访问第二行所有元素（：的用法）
buf=matrix(:,[1,3,2,4]);     %按照第二个参数的样子改变矩阵的顺序，即交换矩阵的二三列

%MATLAB 会有限处理矩阵的列，想处理行可以先求转置矩阵，或sum(A')'
[MaxValue,location]=max(matrix);    %第一个数组储存每一列最大的值，第二个数组储存每一个最大元素的位置
AvgValue=mean(matrix);       %储存每一列的平均值
SumValue=sum(matrix);       %储存每一列的和
DiagValue=diag(matrix);     %储存主对角线元素，默认存为列向量
