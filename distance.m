function dis = distance( pos1,pos2,ts)
%DISTANCE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
dis=sqrt((pos2-pos1)^2+(ts(pos1)-ts(pos2))^2);

end

