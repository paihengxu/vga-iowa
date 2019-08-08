function [] = genVG( ts,graph )
%画出时间序列转化为网络的图
bar(ts,0.2)
hold on
n=length(ts);
ts_text=num2str(ts);
for i=1:n
    for j=i+1:n
        if graph(i,j)~=0
            x=i:j;
            y=(ts(j)*(j-i)-j*(ts(j)-ts(i))+x*(ts(j)-ts(i)))/(j-i);
            plot(x,y,'m','LineWidth',2);
            hold on 
        end
    end
end
end