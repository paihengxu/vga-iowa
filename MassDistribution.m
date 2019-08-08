function AM2 = MassDistribution( AM,w_total,ts )
%MASSDISTRIBUTION 此处显示有关此函数的摘要
%   利用万有引力公式得到边权重
global n;
G=10;     %常数
for i=1:n
    for j=1:n
        if AM(i,j)==1
            dis=distance(i,j,ts);
            AM2(i,j)=G*w_total(i)*w_total(j)/(dis^2);
        end
    end
end
end

