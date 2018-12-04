clc
clear

syms x      %������ű���x

%�����
Yuan1=1/(1-x);
Yuan1=series(Yuan1,x,'Order',1001);     %һ�� -> ĸ����
Yuan2=1/(1-x^2);
Yuan2=series(Yuan2,x,'Order',1001);     %���� -> ĸ����
Yuan3=1/(1-x^5);
Yuan3=series(Yuan3,x,'Order',1001);     %��� -> ĸ����
Yuan4=1/(1-x^10);
Yuan4=series(Yuan4,x,'Order',1001);     %һ�� -> ĸ����
Yuan5=1/(1-x^50);
Yuan5=series(Yuan5,x,'Order',1001);     %���� -> ĸ����
Yuan6=1/(1-x^100);
Yuan6=series(Yuan6,x,'Order',1001);     %һԪ -> ĸ����

Yuan=Yuan1*Yuan2*Yuan3*Yuan4*Yuan5*Yuan6;   %�ܽ���ĸ����
Yuan=expand(Yuan);                          %չ������ʽ
Yuan=coeffs(Yuan);                          %չ�ɱ�׼��ʽ
Yuan=Yuan(2:1001)       %ȡǰ1000λ
                        %��һλ���ܽ�����0��ʱ��, û�����۵ļ�ֵ,
                       

%��Ԫ
Dollar1=1/(1-x);
Dollar1=series(Dollar1,x,'Order',1001);     %һ���� -> ĸ����
Dollar2=1/(1-x^5);
Dollar2=series(Dollar2,x,'Order',1001);     %5���� -> ĸ����
Dollar3=1/(1-x^10);
Dollar3=series(Dollar3,x,'Order',1001);     %10���� -> ĸ����
Dollar4=1/(1-x^25);
Dollar4=series(Dollar4,x,'Order',1001);     %25���� -> ĸ����
Dollar5=1/(1-x^50);
Dollar5=series(Dollar5,x,'Order',1001);     %50���� -> ĸ����
Dollar6=1/(1-x^100);
Dollar6=series(Dollar6,x,'Order',1001);     %һ��Ԫ -> ĸ����

Dollar=Dollar1*Dollar2*Dollar3*Dollar4*Dollar5*Dollar6;
expand(Dollar);
Dollar=coeffs(Dollar);
Dollar=Dollar(2:1001)


%ŷԪ
Euro1=1/(1-x);
Euro1=series(Euro1,x,'Order',1001);     %1ŷ�� -> ĸ����
Euro2=1/(1-x^2);
Euro2=series(Euro2,x,'Order',1001);     %2ŷ�� -> ĸ����
Euro3=1/(1-x^5);
Euro3=series(Euro3,x,'Order',1001);     %5ŷ�� -> ĸ����
Euro4=1/(1-x^10);
Euro4=series(Euro4,x,'Order',1001);     %10ŷ�� -> ĸ����
Euro5=1/(1-x^20);
Euro5=series(Euro5,x,'Order',1001);     %20ŷ�� -> ĸ����
Euro6=1/(1-x^50);
Euro6=series(Euro6,x,'Order',1001);     %50ŷ�� -> ĸ����
Euro7=1/(1-x^100);
Euro7=series(Euro7,x,'Order',1001);     %һŷԪ -> ĸ����
Euro8=1/(1-x^200);
Euro8=series(Euro8,x,'Order',1001);     %��ŷԪ -> ĸ����

Euro=Euro1*Euro2*Euro3*Euro4*Euro5*Euro6*Euro7*Euro8;
expand(Euro);
Euro=coeffs(Euro);
Euro=Euro(2:1001)

%���ƺ���ͼ��
Yuanx=1:1:1000;
plot(Yuanx,Yuan)
hold on;
Dollarx=1:1000;
plot(Dollarx,Dollar)
Eurox=1:1000;
plot(Eurox,Euro)

legend('�����','��Ԫ','ŷԪ');
xlabel('��');
ylabel('�����');

figure 

%������״ͼ
Combine=zeros(3,10);
for row=100:100:1000
    Combine(1,row/100)=Yuan(row);
    Combine(2,row/100)=Dollar(row);
    Combine(3,row/100)=Euro(row);
end
Combine=Combine';

bar(Combine)
set(gca,'ygrid','on');      %ֻ��ʾ����ĺ��� 
set(gca,'xticklabel',{'100','200','300','400','500','600','700','800','900','1000'});
legend('�����','��Ԫ','ŷԪ');
xlabel('��');
ylabel('�����');
