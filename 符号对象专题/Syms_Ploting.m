%�÷��ű�����ͼ,�ǳ�����,
%�������Ϊezplot�ȵ�, ����eazyplot������

clear
syms x
ezplot(x^3-6*x^2+11*x-6)
grid on     %��ʾ����

%ezplot ��������
clear
syms x y
ezplot((x^2+y^2)^4 == (x^2-y^2)^2,[-1,1])    %�ڶ�����������ָ��x�ķ�Χ
grid on
axis equal

%ezplot3 ��ά����
clear
syms t
fplot3(t^2*sin(10*t),t^2*cos(10*t),t)   %fplotҲ���Դ���ezplot

%ezpolar ����������
clear
syms t
ezpolar(1+cos(t))

%ezsurf ����
clear
syms x y
ezsurf(real(atan(x+i*y)))

%ezsurfc ���漰�� �ȸ���
clear
syms x y
ezsurfc(y/(1+x^2+y^2),[-5,5,-2*pi,2*pi],35)
    %�ڶ���������������x��y�ķ�Χ, ����������Ϊ��ͼ���õ��ߵ�����
    
%ezmesh ����
clear
syms x y
ezmesh(x*exp(-x^2-y^2))     %������ͼ��ʱ��Ҫ�� .^ ����������,����ez��ͼ��������
colormap([0,0,1])

%ezmeshc ͬ�����Ҳ�ǻ���ͼ������ʾ�ȸ���


