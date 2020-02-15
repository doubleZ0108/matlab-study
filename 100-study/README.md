# Matlab知识点🧀️

[toc]

------



- **全局变量**: 在全局处先定义、再赋值；在引用处再次声明

  ```matlab
  global M N	% 不要加逗号
  M = 10;
  N = 20
  
  function func()
  global M N
  % use M and N
  end
  ```

- **字符串拼接**：

  ```matlab
  a = 'str';
  ['hello' a 'world']		% hellostrworld
  (['hello' a 'world'])	% 作为xx时最好用函数运算符括起来
  ```

  

------

## 矩阵

- **旋转**：

  ```matlab
  B = rot90(A);	% 逆时针旋转90度
  C = rot90(A, 2);	% 逆时针旋转180度
  ```

- **翻转**：

  ```matlab
  B = fliplr(A);	% 左右翻转
  C = flipud(A);	% 上下翻转
  ```

- **寻找矩阵元素并替换**：

  ```matlab
  I = find(A>5);			% 返回一维索引
  [I J] = find(A>5);	% 返回行列索引
  
  %% 例. 将矩阵中所有值为-999的替换为NaN
  data(find(data==-999)) = NaN;
  ```



------

## 绘图

- **色标 colorbar**

  ```matlab
  colorbar('YTickLabel',{'Freezing','Cold','Cool','Neutral','Warm','Hot','Burning','Nuclear'});		% 设置色标的刻度名字
  
  % 设置位置
  colorbar('location', 'SouthOutside');
  colorbar('location', 'East');
  colorbar('position', [0.94 0.1 0.02 0.8]);
  ```

- **色彩搭配 colormap**：cool, jet，hsv，hot，spring，summer，autumn，winter，gray，bone，copper，pink，lines

  ```matlab
  colormap cool
  ```

- **将figure保存到本地**

  ```matlab
  fig = figure;
  %
  % TODO
  %
  frame = getframe(fig); % 获取frame
  im = frame2im(frame); % 将frame变换成imwrite函数可以识别的格式
  imwrite(im,figurename); % 保存到工作目录下
  
  ```

- **等高线图**：`contourf(x,y,z);`



### 地图

```matlab
ax = worldmap('World');   %选择区域为‘世界’
land = shaperead('landareas', 'UseGeoCoords', true); %导入陆地框架
geoshow(ax, land);	%展示地图
```

- 绘制点：`plotm(lat,lon,'Marker','.');`
- 绘制面片：`surfm(lat:lat+1,lon:lon+1, 1);`

------

## 文件处理

- `.nc`

  ```matlab
  data = ncinfo('xxx.nc');
  % 直接使用相应字段
  ```

- ``.mat`：matlab官方数据格式

  ```matlab
  load ([dirname 'xx.mat'])
  % 直接使用相应字段
  ```

- `.csv`：表格

  ```matlab
  % 1. 直接读取
  data = csvread(dataname);		% data为矩阵
  
  % 2. 当csv文件中有？编码问题？时可采取这种方法读取
  T = readtable(dataname);	% T为table对象
  data = table2array(T);		% data为矩阵
  
  % 写出文件
  xlswrite(filename, data);
  ```

  
