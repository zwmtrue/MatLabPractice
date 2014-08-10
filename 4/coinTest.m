%{
Simulate sequentially flipping a coin 5000 times.Keep track of every time you get ¡®heads¡¯ and plot the running estimate of the probability 
of getting ¡®heads¡¯ with this coin.
Plot this running estimate along with a horizontal line at the expected value of 0.5, as below.
%}
clc;
clear;
res = rand(5000,1);
%Heads are those greater than .5 or round to 1
heads = round(res);
tails = abs(res - 1);
cres = cumsum(res)./(cumsum(heads)+cumsum(tails));
plot(cres,'k');
hold on
stan = ones(5000,1)*.5;
plot(stan,'r')
xlabel('Coin flipped times');
ylabel('Probability of heads');
legend('Random Experiment','Expecatation');
title('Flipping coin simulation');
hold off;