clc;
clear;
v = randi(100);%m/s
angles = 0:0.5:90;
len = length(angles);
dists = zeros(len,1);
for a = 1:len
    dists(a) = throwBall(v,angles(a));
end
plot(angles,dists)
xlabel 'Initial Angle (deg)'
ylabel 'Distance thrown(m), with initial hight of 1.5m'
%titletmsg = ['Distance of ball throw as a function of release angle' ];
title 'Distance of ball throw as a function of release angle';%(titlemsg); 
vstr = num2str(v);
legmsg = ['Test under velocity ' vstr 'm/s. No data means ball not hit ground in 10s'];
legend(legmsg);
hold on
