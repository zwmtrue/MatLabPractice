function [x,y] = getCircle(center,r)
t = 0:pi/80:2*pi;
x = center(1) + r*cos(t);
y = center(2) + r*sin(t);
end