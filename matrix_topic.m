%��������
row=3;  col=4;  size=4;
matrix=zeros(row,col);
matrix=ones(row,col);
matrix=rand(row,col);
matrix=magic(size);  %�÷���

result=matrix';     %����ת�á�����Ϊ������
result=inv(matrix);     %����(ע��������Ϊ�����ҿ�������)
result=fliplr(matrix);  %���ҷ�ת����

%�����ƴ�� (������ʵ���ַ�����ƴ��)
result=[matrix,matrix];     %������������Ŵ�������������
result=[matrix;matrix];     %����ƴ����
                                  %����
                              
%���������
matr1=rand(row,col);    matr2=rand(row,col);
result=matr1*matr2;     %�����ľ���˷���ע���һ���������Ҫ�͵ڶ����������ƥ��
result=matr1.*matr2;    %���������Ӧλ������ٷŵ�ԭ����λ��
result=matrix.^3;       %��Ԫ�ص����η�

result=matr1/matr2;     %A����B������
result=matr1\matr2;     %A���������B����matr2/matr1�ǲ�ͬ�����㣨����˷�����˳��ģ�

%��������
buf=matrix(2,4);    %���ʶ������е�Ԫ��
buf=matrix(2,:);    %���ʵڶ�������Ԫ�أ������÷���
buf=matrix(:,[1,3,2,4]);     %���յڶ������������Ӹı�����˳�򣬼���������Ķ�����

%MATLAB �����޴��������У��봦���п�������ת�þ��󣬻�sum(A')'
[MaxValue,location]=max(matrix);    %��һ�����鴢��ÿһ������ֵ���ڶ������鴢��ÿһ�����Ԫ�ص�λ��
AvgValue=mean(matrix);       %����ÿһ�е�ƽ��ֵ
SumValue=sum(matrix);       %����ÿһ�еĺ�
DiagValue=diag(matrix);     %�������Խ���Ԫ�أ�Ĭ�ϴ�Ϊ������
