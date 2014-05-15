%Exponential test
clc;clear;
stunum = [15 25 55 115 144];
year = [1:1:5];
figure
semilogy(stunum,'ms','MarkerSize',10,'LineWidth',4)
xlabel('years');
ylabel('Enrollenments');
title('Exponential test for course enrollment');
xlim ([0,6])
hold off


