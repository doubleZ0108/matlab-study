function DrawStar(x0,y0,size,color)
%�����ǣ�ǰ��������Ϊ���ǵ���������
x1=x0;
y1=y0+size;                         %����
x2=x0+size*cos(2/5*2*pi+pi/2);
y2=y0+size*sin(2/5*2*pi+pi/2);      %����
x3=x0+size*cos(-1/5*2*pi+pi/2);
y3=y0+size*sin(-1/5*2*pi+pi/2);     %��
x4=x0+size*cos(1/5*2*pi+pi/2);
y4=y0+size*sin(1/5*2*pi+pi/2);      %��
x5=x0+size*cos(-2/5*2*pi+pi/2);
y5=y0+size*sin(-2/5*2*pi+pi/2);     %����
plot([x1,x2,x3,x4,x5,x1],[y1,y2,y3,y4,y5,y1],color)
end

% %�ڼ������»������
% figure
% theta=[0.5*pi:0.8*pi:4.5*pi];   %�涨���������Ӧ�ĽǶȴ�С
% r=ones(1,6);            %ÿ������λ�õ�rou����1
% polar(theta,r,'r');     %�������µĻ�ͼ����