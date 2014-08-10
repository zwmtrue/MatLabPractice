% 1 Linear system of equations.
clc;clear;
A = [3 6 4;1 5 0; 0 7 7];
b= [1; 2; 3];
x1 = A\b;
x = A*x1 -b;
plot(x)