function AM2 = MassDistribution( AM,w_total,ts )
%MASSDISTRIBUTION �˴���ʾ�йش˺�����ժҪ
%   ��������������ʽ�õ���Ȩ��
global n;
G=10;     %����
for i=1:n
    for j=1:n
        if AM(i,j)==1
            dis=distance(i,j,ts);
            AM2(i,j)=G*w_total(i)*w_total(j)/(dis^2);
        end
    end
end
end

