function [ ww ] = Normalize( w )
%NORMALIZE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
for i=1:length(w)
    ww(i)=w(i)/sum(w);
end

end

