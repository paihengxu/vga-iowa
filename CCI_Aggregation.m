CCI=xlsread('CCI.CSV','CCI','B1:B275')';
for year=1:22
    if year==1
        A=[1:12;CCI(1:12)];
    else
        A=[1:12;CCI((year-1)*12+1:year*12)];
    end
    ww = root(0.1,12); %以时间为准则层生成的IOWA权重
    [tri,result1(year)]=IOWAaggregation(A,ww);%result1为IOWA聚合结果
    [ result2(year),vga] = testVGA( A(2,:) ); %result2为vpa聚合结果
    a=0.5;  %系数设置
    load('graph.mat');
    w_total=a*ww+(1-a)*vga;
    result(year)=sum(w_total.*A(2,:));
end
disp(result1);
disp(result2);
%run picture
h1=plot(CCI(241:252))
set(h1,'LineWidth',2)
xlabel('Time')
ylabel('CCI')
hold off