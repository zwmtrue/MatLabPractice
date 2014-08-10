%4.	 Fitting  polynomials.  
clc;
clear;
load randomData.mat
plot(x,y,'k.','MarkerSize',20);
hold on;
x0 = 100:.1:200;

[f1,s1,m1] = polyfit(x,y,1);
plot(x0,polyval(f1,x0,s1,m1),'r')

[f2,s2,m2] = polyfit(x,y,2);
plot(x0,polyval(f2,x0,s2,m2),'g')

[f3,s3,m3] = polyfit(x,y,3);
plot(x0,polyval(f3,x0,s3,m3),'y')

[f4,s4,m4] = polyfit(x,y,4);
plot(x0,polyval(f4,x0,s4,m4),'b')

[f5,s5,m5] = polyfit(x,y,5);
plot(x0,polyval(f5,x0,s5,m5),'m')

legend('Data','1st order','2nd order','3rd order','4th order','5tht order')
title('Polynomial fit to Noisy Data')
xlabel('X')
ylabel('Y')