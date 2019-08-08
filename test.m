A=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20;
  0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 0.87 0.49 0.36 0.83 ];
ww = root(0.1,16); %以时间为准则层生成的IOWA权重
[tri,result1]=IOWAaggregation(A(:,1:16),ww);%result1为IOWA聚合结果
[result2,vga] = testVGA( A(2,:) ); %result2为vpa聚合结果
a=0.5;
w_total=a*ww+(1-a)*vga(1:16);
result_array=w_total.*A(2,1:16);
result=sum(result_array);

plot(ww,'bo-');
hold on
plot(vga(1:16),'go-');
hold on
plot(w_total,'ro-')
hold off
legend('IOWA','VGA','aggregated')