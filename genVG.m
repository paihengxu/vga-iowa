function [] = genVG( ts,graph )
%����ʱ������ת��Ϊ�����ͼ
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