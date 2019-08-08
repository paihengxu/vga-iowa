function [ ww ] = OWAweight( A )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
len = length(A(1,:));

syms w1 n a;
X='w1*(((n-1)*a+1-n*w1)^n)=(((n-1)*a)^(n-1))*(((n-1)*a-n)*w1+1)';
n=len;
a=0.1;
X=subs(X);
%solve('w1*(((n-1)*a+1-n*w1)^n)-(((n-1)*a)^(n-1))*(((n-1)*a-n)*w1+1)=0',w1);
A=solve(X,w1);
len=length(A);
for i=1:len
    if(A(i)<1&&A(i)~=1/n&&isreal(A(i)))
        ww(1)=A(i);
    end
end

ww(n)=(((n-1)*a-n)*ww(1)+1)/((n-1)*a+1-n*ww(1));

for j=2:n-1
    ww(j)=((ww(1)^(n-j))*(ww(n)^(j-1)))^(1/(n-1));
end
ww=double(ww);


end

