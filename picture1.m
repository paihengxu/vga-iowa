T2013=xlsread('Input.xlsx','sheet2','A1:A31');
h1=plotyy(result(1:10),'r*-',T2013(1:10),'bo-');
% hold on
% plot(result1(1:10),'g-')
% hold on
% plot(result2(1:10),'p-')
hold off
legend('agregated','2013')
xlabel('Time');
ylabel('TAIEX');