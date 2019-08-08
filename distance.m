function dis = distance( pos1,pos2,ts)
%DISTANCE 此处显示有关此函数的摘要
%   此处显示详细说明
dis=sqrt((pos2-pos1)^2+(ts(pos1)-ts(pos2))^2);

end

