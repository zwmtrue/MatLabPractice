% 2 Numerical  integration.  
clc;
clear;
q1 = quad(@(x) x.*exp(-x/3),0,5)
x2 = 0:.01:5;
q2 = trapz(x2, x2.*exp(-x2/3))
q = -24*exp(-5/3)+9
