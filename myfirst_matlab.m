tire1=imread('tire.tif');
[m,n]=size(tire1);  %��ȡͼƬ���ؾ���ĳߴ�
imshow(tire1)
% tire2=uint8(zeros(m,n)); %uint8����Ϊ�޷���8λ����
% for row=1:m
%     for col=1:n
%         tire2(row,col)=sqrt(255)*sqrt(double(tire1(row,col))); %��ֱ�߶�Ӧ��һ������sqrt(x)�ĺ�����������ֵ��������255
%         tire2(row,col)=round(tire2(row,col));%�������뺯��
%     end
% end

%��ͼƬֱ����Ϊ������
tire2=sqrt(255)*sqrt(double(tire1));
tire2=uint8(round(tire2));

figure
imshow(tire2)