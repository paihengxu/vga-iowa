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
for i=1:n-2 %�ο���
    km=ts(i+1)-ts(i);%�ο������ұߵ�һ���ھӵ�б��
        if i<index(1) %����ο������ұ����ֵ�����
            for j=i+2:index(1)%�ο����ұߵڶ����㵽���ֵ֮��ĵ�ǰ��
                k=(ts(j)-ts(i))/(j-i);%�ο����뵱ǰ��֮���б��
                if k>km %�ɼ�
                    graph(i,j)=1;
                    km=k;
                end
            end
        end
        if i==index(1)%�ο���Ϊһ�����ֵ��
            if lindex>1 %������������һ�����ֵ��
                index=index(2:lindex);%��һ�����ֵ�޳�
                lindex=lindex-1;
                for j=i+2:index(1)%�ο����ұߵڶ����㵽���ֵ֮��ĵ�ǰ��
                    k=(ts(j)-ts(i))/(j-i);%�ο����뵱ǰ��֮���б��
                    if k>km %�ɼ�
                        graph(i,j)=1;
                        km=k;
                    end
                end
            else%��������һ�����ֵ
                for j=i+2:n
                    k=(ts(j)-ts(i))/(j-i);%�ο����뵱ǰ��֮���б��
                    if k>km %�ɼ�
                        graph(i,j)=1;
                        km=k;
                    end
                end    
            end
           
        end
        if i>index(1)
             for j=i+2:n
                k=(ts(j)-ts(i))/(j-i);%�ο����뵱ǰ��֮���б��
                if k>km %�ɼ�
                    graph(i,j)=1;
                    km=k;
                end
            end
        end      
end
AM=graph; %�ڽӾ���ΪAM
for i=1:n   %graph���ڶԽ��߶Գ������ڽӾ���
    for j=i:n
        AM(j,i)=AM(i,j);
    end
end
save graph.mat
end

