function myDrawing
%在一张画布上五颗五角星
figure
hold on;
axis equal;
DrawStar(10,10,5,'b');
DrawStar(23,10,5,'b');
DrawStar(40,10,10,'r');
DrawStar(58,10,5,'b');
DrawStar(70,10,5,'b');
end