function [ tri, result ] = IOWAaggregation( bi ,ww)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   ����biӦ����2*n�ľ��󣬵�һ����׼��㣬�ڶ���Ϊ��ֵ.
%   ������tri��bi�������չ��������Ϊ��Ӧ��IOWAȨ��
%   wwΪȨ��
len=length(bi(1,:));
for i=1:len
    tri(1,i)=bi(1,i);
    tri(2,i)=bi(2,i);
    tri(3,i)=ww(i);
    result(i)=tri(2,i)*tri(3,i);
end
result=sum(result);
end

