%simplify���ڷ��ű��ʽ�Ļ���
phi=sym(sqrt(5)/2)
f=phi^3+2*phi^2-phi-1
simplify(f)     %��������Ӳ��Ǻܺ�orz

%expand���ڷ��ű��ʽ��չ��     and��Ҳ��֪��չ���ͻ��������
clear
syms x
f=(x^2-1)*(x^4+x^3+x^2+x+1)*(x^4-x^3+x^2-x+1)
expand(f)

%factor���ڷ��ű��ʽ����ʽ�ֽ�
clear
syms x
g=x^3+6*x^2+11*x+6;
factor(g)       %�������������ʾ�ֽ��Ϊ������ĳ˻�