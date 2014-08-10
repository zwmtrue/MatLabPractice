%{
Histogram
  Generate  1000  Poisson  distributed  random  numbers  with  parameter 
¦Ë=  5 (poissrnd). Get the histogram of the data and normalize the counts 
so that the histogram sums to 1 (hist ¨C the version that returns 2 outputs 
N and X, sum). Plot the normalized histogram (which is now a probability 
mass function) as a bar graph (bar). Hold on and also plot the actual 
Poisson probability mass function with ¦Ë =  5  as a line (poisspdf).
You can try doing this with more than 1000 samples from the Poisson 
distribution to get better agreement between the two. 
%} 
close all
clear;
clc;
R = poissrnd(5,[1,1000]);
[N,X] = hist(R);
bar( X,N./sum(N));
%I don't understand why there's one or two spikes at 4  or 6 
%Maybe just natural with the generator
hold on
p2 = poisspdf(0:1200,5);
xlim([-2,15])
plot(p2,'r')
xlabel('Value')
ylabel('Probablity')
title('Poisson distribution and observed histogram ')
legend('Exp','Actual Distribution')
hold off