function [ average,vga] = testVGA( st )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%st=sort(st,'descend');
graph=VG(st);
n=length(st);
global d;  %度
d=zeros(1,n);
graph=changeL(graph);
for i=1:n %求度
    for j=1:n
        if graph(i,j)==1
            d(i)=d(i)+1;
        end
    end
end
save graph d '-append'
edges=sum(d);  %边的总数
vga=d/edges;
disp(st);
stw=vga.*st;
average=sum(stw);