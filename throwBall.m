clc
clear
%release
h = 1.5; %m
g = 9.8; %m/s^2
v = 4; %m/s
theta = pi*45/180; %degree
timeVec = linspace(0,1,1000);
x = v*cos(theta*pi/180).*timeVec;
y = h + v*sin(theta*pi/180).*timeVec - g/2.*(timeVec.^2);
ind = find (y < 0,1);
value = ['The ball hits the ground at a distance of ', x(ind), 'meters']
disp(value)
figure
plot(x,y,'b')
xlabel('distance(m)');
ylabel('height(m)');
title('Projectile Motion');
hold on
ground = 0:max(x)/100:max(x)
plot(ground,0,'k-.')