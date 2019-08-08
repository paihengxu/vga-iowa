function [ ww ] = Normalize( w )
%NORMALIZE 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:length(w)
    ww(i)=w(i)/sum(w);
end

end

