CCI=xlsread('CCI.CSV','CCI','B1:B275')';
for year=1:22
    if year==1
        A=[1:12;CCI(1:12)];
    else
        A=[1:12;CCI((year-1)*12+1:year*12)];
    end
    ww = root(0.1,12); %��ʱ��Ϊ׼������ɵ�IOWAȨ��
    [tri,result1(year)]=IOWAaggregation(A,ww);%result1ΪIOWA�ۺϽ��
    [ result2(year),vga] = testVGA( A(2,:) ); %result2Ϊvpa�ۺϽ��
    a=0.5;  %ϵ������
    load('graph.mat');
    w_total=a*ww+(1-a)*vga;
    result(year)=sum(w_total.*A(2,:));
end
for year=1:22
    xx=year*12;
    RR(xx-11:xx)=result(year);
    RR1(xx-11:xx)=result1(year);
    RR2(xx-11:xx)=result2(year);
end
x=CCI(1:264);
X=[ones(size(x')),x'];
[b,bint,r,rint,stats]=regress(RR',X,0.05);%����һԪ�ع��������
figure(1)
rcoplot(r,rint)
[b1,bint1,r1,rint1,stats1]=regress(RR1',X,0.05);
figure(2)
rcoplot(r1,rint1)
[b2,bint2,r2,rint2,stats2]=regress(RR2',X,0.05);
figure(3)
rcoplot(r2,rint2)