function [R]=getDrection(a)
%a是一个上三角矩阵，R是一个存储这个图方向的矩阵
%若i-->j有一条有向边，则R(i,j)=0;否则为0
    for i=1:length(a(:,1))
        for j=1:length(a(1,:))
            if(a(i,j)~=0)
                R(i,j)=1;
            else
                R(i,j)=0;
            end
        end
    end
    
            