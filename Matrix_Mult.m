function [Mc,msg]=Matrix_Mult(Ma,Mb,flag)
%矩阵的乘法，flag==1对应三重for循环，==2对应两重循环，==3对应直接计算
%如果flag非法，则会输出相应的提示信息
[MaRow,MaCol]=size(Ma);
[MbRow,MbCol]=size(Mb);
if MaCol~=MbRow
    msg='Cannot Be Multiplied';
    Mc=-1;
else
    msg='OK';
    Mc=zeros(MaRow,MbCol);  %结果矩阵清零
    switch flag
        case 1
            for row=1:MaRow
                for col=1:MbCol
                    for turn=1:MaCol
                        Mc(row,col) = Mc(row,col) + Ma(row,turn)*Mb(turn,col);
                    end
                end
            end
        case 2
            for row=1:MaRow
                for col=1:MbCol
                    Mc(row,col) = Mc(row,col) + Ma(row,:)*Mb(:,col);
                end
            end
        case 3
            Mc=Ma*Mb;            
        otherwise
            Mc=-1;
            msg='use another value for flag';
            fprintf('flag can only be 1 or 2 or 3. Please enter another value for flag');
    end
end