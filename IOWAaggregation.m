function [ tri, result ] = IOWAaggregation( bi ,ww)
%UNTITLED 此处显示有关此函数的摘要
%   输入bi应该是2*n的矩阵，第一行是准则层，第二行为数值.
%   输出结果tri是bi矩阵的扩展，第三行为对应的IOWA权重
%   ww为权重
len=length(bi(1,:));
for i=1:len
    tri(1,i)=bi(1,i);
    tri(2,i)=bi(2,i);
    tri(3,i)=ww(i);
    result(i)=tri(2,i)*tri(3,i);
end
result=sum(result);
end

