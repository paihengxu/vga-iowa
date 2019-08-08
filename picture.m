h1=plot(result,'r*-');
set(h1,'LineWidth',2.5)
hold on
h2=plot(result1,'bo-');
set(h2,'LineWidth',2.5)
hold on
h3=plot(result2,'g<-');
set(h3,'LineWidth',2.5)
hold on
T2013=xlsread('Input.xlsx','sheet2','A1:A31');
h4=plot(T2013,'r-');
set(h4,'LineWidth',2.5)
% hold on
% plot(CCI(1:252),'b--')
hold off
legend('agregated','IOWA','VGA','2013')
xlabel('Time');
ylabel('TAIEX');