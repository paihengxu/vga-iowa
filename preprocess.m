function [data,count] = preprocess( input,day )
%PREPROCESS 此处显示有关此函数的摘要
%   聚合数据预处理
%   每年的同一天数据聚合，最后31个聚合结果，同师姐论文
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

