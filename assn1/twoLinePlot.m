clc
clear
%the first two ensure correct output!
t = linspace(0,2*pi)
figure
plot(t,sin(t))
hold on;
plot(t,cos(t),'r--')
xlabel('Time(t) s')
ylabel ('Function Value')
xlim([0,2*pi])
ylim([-1.4,1.4])
title('Sin(t) & Cos(t)')
hleg1 = legend('sin_x','cos_x');

