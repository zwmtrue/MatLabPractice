clc;clear;
figure
cm = jet(5);
%hold on;
rads =linspace(2,10,5);
for ir = 1:5 
    [x,y] = getCircle([0,0],rads(ir));
    plot(x,y,'LineWidth',5,'color',cm(ir,:));
    hold on;
end
colormap jet
axis equal
