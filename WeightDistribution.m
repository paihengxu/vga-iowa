function [ AM1 ] = WeightDistribution( AM,ww )
%WEIGHTDISTRIBUTION �˴���ʾ�йش˺�����ժҪ
%   �ڵ�ǿ��ƽ������
global n
global d
for i=1:n
    for j=1:n
        if (AM(i,j)==1)
            AM(i,j)=ww(i)/d(i);
        end
    end
end
%ÿ���ߵõ�������Ȩ�����
AM1=[];
for i=1:n
    for j=1:n
        AM1(i,j)=AM(i,j)+AM(j,i);
    end
end

end

