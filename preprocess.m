function [data,count] = preprocess( input,day )
%PREPROCESS �˴���ʾ�йش˺�����ժҪ
%   �ۺ�����Ԥ����
%   ÿ���ͬһ�����ݾۺϣ����31���ۺϽ����ͬʦ������
col=length(input(day,:));
count=0;
for i=1:col
    if(~isnan(input(day,i)))
        count=count+1;
        data(1,count)=i;
        data(2,count)=input(day,i);
    end
end

end

