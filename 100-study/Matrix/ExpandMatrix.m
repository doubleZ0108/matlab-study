function tmp_img = SpendImg(origin_img, origin_size, type)
% 将原始矩阵上下左右各包一层白边，并用相应的原始值填充

m = origin_size(1); n = origin_size(2);
tmp_img = zeros(m+2,n+2,type);              % 上下左右各添一个白边
tmp_img(2:m+1,2:n+1,:) = origin_img;        % 把原始图片放到正中间，上下左右为空
tmp_img(1,2:n+1,:) = origin_img(1,:,:);     % 原矩阵的第一行填充上边的空
tmp_img(m+2,2:n+1,:) = origin_img(m,:,:);   % 原矩阵的最后一行填充下边的空
tmp_img(2:m+1,1,:) = origin_img(:,1,:);     % 原矩阵的第一列填充左边的空
tmp_img(2:m+1,n+2,:) = origin_img(:,n,:);   % 原矩阵的最后一列填充右边的空
tmp_img(1,1,:) = origin_img(1,1,:);         % 左上角
tmp_img(1,n+2,:) = origin_img(1,n,:);       % 右上角
tmp_img(m+2,1,:) = origin_img(m,1,:);       % 左下角
tmp_img(m+2,n+2,:) = origin_img(m,n,:);     % 右下角

% 另一种扩充矩阵的方法
% a = origin_img(1,:,:); b = origin_img(m,:,:);
% temp_img = [a;a;origin_img;b;b];
% c = temp_img(:,1,:); d = temp_img(:,n,:);
% FI = [c,c,temp_img,d,d];

end
