function [L]= changeL(L)
    R=getDrection(L);
    for i=1:length(L(:,1))
        for j=1:length(L(1,:))
            if(R(i,j)~=0)
               L(j,i)=L(i,j);
            end
        end
    end
end