close all;
input = xlsread('Input.xlsx','sheet3','B2:N32');
for i=1:13
    year=1999+i;
    figure(i)
    h=plot(input(1:31,i),'*-');
    set(h,'LineWidth',1.5)
    hold off
    xlabel('Time');
    ylabel('TAIEX');
    p=sprintf('Dec in %d',year);
    legend(p)
end
% figure(1)
% plot(input(1:31,1),'*-');
% hold off
% figure(2)
% plot(input(1:31,2),'*-');