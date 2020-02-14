# Matlab知识点🧀️

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



## 读取文件

- ``.nc`

  ```matlab
  data = ncinfo('xxx.nc');
  % 直接使用相应字段
  ```

- ``.mat`：matlab官方数据格式

  ```matlab
  load ([dirname 'xx.mat'])
  % 直接使用相应字段
  ```

  

