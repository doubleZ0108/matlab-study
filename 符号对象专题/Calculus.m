%���ű��ʽ��΢����

%΢�� diff()
syms x
f=sin(x)^2;
diff(f)              %��һ�׵���

clear
syms x y
f=sin(x)^2 + cos(y)^2;
diff(f,y)            %һ��ƫ����

clear
syms x y
f(x,y)=x^3*y^3;
save = diff(f,y,2)   %����ƫ����
syms a
save(a+1,a)       %��x,y�þ����ֵ���뵽����ƫ������
diff(diff(f,y),x)   %���ƫ��


%���� int()
clear
syms x
f=sin(x)^2;
int(f)              %һԪ������������

clear
syms x y n
f=x^n+y^n;
int(f,y)            %��y�������ֱ���,���в�������
int(f,n)            %..n...........

clear
syms x
int(2*x, [0,1])     %��yf(x)=2x�Ķ�����,����������Ϊ�ڶ�������
