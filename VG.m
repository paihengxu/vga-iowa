function [ graph ] = VG( ts )
global n
n=length(ts);
graph=zeros(n,n);
for i=1:n-1
    graph(i,i+1)=1;
end
m=max(ts);
index=find(ts(1,:)==m);
lindex=length(index);
for i=1:n-2 %参考点
    km=ts(i+1)-ts(i);%参考点与右边第一个邻居的斜率
        if i<index(1) %如果参考点在右边最大值的左侧
            for j=i+2:index(1)%参考点右边第二个点到最大值之间的当前点
                k=(ts(j)-ts(i))/(j-i);%参考点与当前点之间的斜率
                if k>km %可见
                    graph(i,j)=1;
                    km=k;
                end
            end
        end
        if i==index(1)%参考点为一个最大值点
            if lindex>1 %如果还不是最后一个最大值点
                index=index(2:lindex);%第一个最大值剔除
                lindex=lindex-1;
                for j=i+2:index(1)%参考点右边第二个点到最大值之间的当前点
                    k=(ts(j)-ts(i))/(j-i);%参考点与当前点之间的斜率
                    if k>km %可见
                        graph(i,j)=1;
                        km=k;
                    end
                end
            else%如果是最后一个最大值
                for j=i+2:n
                    k=(ts(j)-ts(i))/(j-i);%参考点与当前点之间的斜率
                    if k>km %可见
                        graph(i,j)=1;
                        km=k;
                    end
                end    
            end
           
        end
        if i>index(1)
             for j=i+2:n
                k=(ts(j)-ts(i))/(j-i);%参考点与当前点之间的斜率
                if k>km %可见
                    graph(i,j)=1;
                    km=k;
                end
            end
        end      
end
AM=graph; %邻接矩阵为AM
for i=1:n   %graph关于对角线对称生成邻接矩阵
    for j=i:n
        AM(j,i)=AM(i,j);
    end
end
save graph.mat
end

