function [R]=getDrection(a)
%a��һ�������Ǿ���R��һ���洢���ͼ����ľ���
%��i-->j��һ������ߣ���R(i,j)=0;����Ϊ0
    for i=1:length(a(:,1))
        for j=1:length(a(1,:))
            if(a(i,j)~=0)
                R(i,j)=1;
            else
                R(i,j)=0;
            end
        end
    end
    
            