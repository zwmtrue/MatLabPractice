clc;clear;
load('noisyData.mat')
smoothed = rectFilt(x,11);
figure
plot(x,'b:')
hold on
plot(smoothed,'r')