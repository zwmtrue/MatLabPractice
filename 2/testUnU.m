clc;clear;
load optionaldata.mat
figure
plot(x(:,1),x(:,2),'b.');
hold on
%Fixed width for datasets
xrg = (max(x(:,1))-min(x(:,1)));
width = xrg/10;
smx = nonUniformFilt(x,width);
plot(smx(:,1),smx(:,2),'r');
