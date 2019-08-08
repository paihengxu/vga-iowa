function [ AM1 ] = WeightDistribution( AM,ww )
%WEIGHTDISTRIBUTION 此处显示有关此函数的摘要
%   节点强度平均分配
global n
global d
for i=1:n
    for j=1:n
        if (AM(i,j)==1)
            AM(i,j)=ww(i)/d(i);
        end
    end
end
%每条边得到的两个权重相加
AM1=[];
for i=1:n
    for j=1:n
        AM1(i,j)=AM(i,j)+AM(j,i);
    end
end

end

