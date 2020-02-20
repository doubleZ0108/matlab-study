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
  colorbar(
  美赛文档 02170925);
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

- **设置figure大小**：

  ```matlab
  fig = figure;
  set(fig,'position',[100 100 1200 500]);
  ```

  



### 地图

```matlab
ax = worldmap('World');   %选择区域为‘世界’
land = shaperead('landareas', 'UseGeoCoords', true); %导入陆地框架
geoshow(ax, land);	%展示地图
```

- 绘制点：`plotm(lat,lon,'Marker','.');`
- 绘制面片：`surfm(lat:lat+1,lon:lon+1, 1);`

### geobubble

```matlab
map = geobubble(dataTable,'Lat','Lon','SizeVariable','data');
map.BubbleWidthRange = [5, 100]
```

- `dataTable`：table类型的数据
- `Lat`：这一列指定精度
- `Lon`: 这一列指定维度
- `data`: 为要显示圈圈的数据

<img src="https://pic3.zhimg.com/80/v2-e90b6b661abe87fe10dd135e20e7642a_hd.jpg" alt="img" style="zoom:33%;" />

用颜色表示另一维度的数据

```matlab
tempZone = discretize(dataTable.temp,[-inf,10.5,15,inf],'categorical',{'cold','normal','hot'});
% 更新table
gdpTable.zone = tempZone;

% 更新map
map.SourceTable = gdpTable;
map.ColorVariable = 'zone';
```

<img src="https://pic1.zhimg.com/80/v2-9830985f942fbff261eb14a9af2c755c_hd.jpg" alt="img" style="zoom:33%;" />

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


### writematrix


```matlab
writematrix(M, 'data.txt', 'Delimiter', 'tab')

writematrix(M, 'data.xls', 'Sheet', 2, 'Range', 'A3:E8')
```

- **文件格式**: `.txt`, `.csv`, '.xls', `.xlsx`
- **参数**：
  - `Delimiter`: ',', ' ', '\t', ';', '|'
  - `Encoding`: 'UTF-8', ...
  - `Sheet`: 工作表名称或正整数

