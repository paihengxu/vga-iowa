%A=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20;
%  0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 ];
% A=[1 2 3 4 5 6 7 8;
%     0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83];
input = xlsread('Input.xlsx','sheet3','B2:N32');
%输入数据以上
for day=1:31
    [A,n]=preprocess(input,day);
    ww = root(0.1,n); %以时间为准则层生成的IOWA权重
    [tri,result1(day)]=IOWAaggregation(A,ww);%result1为IOWA聚合结果
    [ result2(day),vga] = testVGA( A(2,:) ); %result2为vpa聚合结果
    a=0.5;  %系数设置
    load('graph.mat');
    w_total=a*ww+(1-a)*vga;
    result(day)=sum(w_total.*ts);
    count=1;
    for j=1:13
        if ~isnan(input(day,j))
            WEIGHT(day,j)=w_total(count);
            count=count+1;
        end
    end
end
disp(result1);
disp(result2);
run picture1
% % xlswrite('C:\Users\1009\Desktop\result.xlsx',tri','SET1')
% % xlswrite('C:\Users\1009\Desktop\result.xlsx',vpa','SET2')
% a=0.5;  %系数设置
% w_total=a*tri(3,:)+(1-a)*vga;
% save graph w_total '-append'
% clear;
% 
% 
% genVG(ts,graph);
% %平均分求得加权网络的邻接矩阵
% aAM=WeightDistribution(AM,w_total);
% gAM=MassDistribution(AM,w_total,ts);