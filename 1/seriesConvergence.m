clc
clear
p = 0.99;
k = 0:1000;
geomSeries = p.^k;
G = 1/(1-p) *ones(1001,1);

figure
plot(k,G,'-r')
hold on;
 
plot(k,cumsum(geomSeries),'--b')
xlabel('number of elements');
ylabel('Sum');
ylim([0,110]);
title('Sum of Geometry Series');

hleg = legend('Infinite Sum','Finite Sum');
hold off

p = 2;
n = 1:500;
pSeries = 1./n.^p;
P = pi^2/6 *ones(500,1);

figure
plot(n,P,'r')
hold on
plot(n,cumsum(pSeries),'b--')
ylim([0,2])
xlabel('number of elements');
ylabel('Sum');
hleg = legend('Infinite Sum','Finite Sum');
hold off


