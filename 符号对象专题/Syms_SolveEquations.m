%����������
clear
syms x
solve(x^2-1)
solve(x^2+4*x+1==0)
solve(x^2==2*x-4)

%�����ŷ���
syms a b c
solve(a*x+b*x==c,x)     %������ű�����ʱ��Ҫָ��δ֪��
solve(a*x+b*x==c,a)

%����Ԫ��������
clear
syms x y
[a,b] = solve(x+y==1, x-11*y==5)


%���һԪ΢�ַ���
clear
syms a y(x)     %yΪx�ĺ���
dsolve(diff(y) == -a*y)     %����C��������,ÿ�����в�һ�����������
syms f(t)
dsolve(diff(f) == f+sin(t))

%����г�ʼ������΢�ַ���
clear
syms a b y(t)
dsolve(diff(y) == a*y, y(0)==b)

%������΢�ַ���, �г�ʼ�����ͱ߽�����
clear
syms a y(t)
Dy = diff(y);
dsolve(diff(y,2) == -a*y, y(0)==1, Dy(pi/a)==0)

%����Ԫ��΢�ַ���
clear
syms x(t) y(t)
[x,y] = dsolve(diff(x)==y, diff(y)==x)

%MATLABʹ��solve�����һЩע������
clear
syms x a
solve(x^4+2*x+a==0,x)   %����ֻ�ܼ��㵽����,��������ķ���Ϊ
                        % root(z^4 + 2*z + a, z, 1)
                        %  root(z^4 + 2*z + a, z, 2)
                        %  root(z^4 + 2*z + a, z, 3)
                        %  root(z^4 + 2*z + a, z, 4)
solve(x^4+2*x+a==0,x,'MaxDegree',4) %ӲҪ��Ҫ�ӵ����͵��Ĳ���

solve(cos(2*x)+sin(x)==1)   %����ֻ�᷵��           0 �⼸����,�����Ҫȫ����Ҫ��MuPudģ��
                                          %      pi/6
                                          %  (5*pi)/6