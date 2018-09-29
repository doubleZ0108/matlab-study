function DrawStar(x0,y0,size,color)
%画星星，前两个参数为星星的中心坐标
x1=x0;
y1=y0+size;                         %正上
x2=x0+size*cos(2/5*2*pi+pi/2);
y2=y0+size*sin(2/5*2*pi+pi/2);      %左下
x3=x0+size*cos(-1/5*2*pi+pi/2);
y3=y0+size*sin(-1/5*2*pi+pi/2);     %右
x4=x0+size*cos(1/5*2*pi+pi/2);
y4=y0+size*sin(1/5*2*pi+pi/2);      %左
x5=x0+size*cos(-2/5*2*pi+pi/2);
y5=y0+size*sin(-2/5*2*pi+pi/2);     %右下
plot([x1,x2,x3,x4,x5,x1],[y1,y2,y3,y4,y5,y1],color)
end

% %在极坐标下画五角星
% figure
% theta=[0.5*pi:0.8*pi:4.5*pi];   %规定各个顶点对应的角度大小
% r=ones(1,6);            %每个顶点位置的rou都是1
% polar(theta,r,'r');     %极坐标下的绘图函数