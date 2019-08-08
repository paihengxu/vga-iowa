function [ w ] = root( a,n )
%function [ result ] = root( a,n )
syms x;
w=zeros(1,n);
result=solve(x*((n-1)*a+1-n*x)^n==((n-1)*a)^(n-1)*(((n-1)*a-n)*x+1),x);
result=double(result); 
solu=length(result);
count=0;
for i=1:solu
    if (isreal(result(i)))
        if (result(i)>=0&&result(i)<=1)
            count=count+1;
            con(count)=real(result(i));
        end
    end
end
if (a>0.5)
    w(1)=max(con);
else
    w(1)=min(con);
end
w(n)=(((n-1)*a-n)*w(1)+1)/((n-1)*a+1-n*w(1));
for j=2:(n-1)
    w(j)=(w(1)^(n-j)*w( n)^(j-1))^(1/(n-1));
end
end