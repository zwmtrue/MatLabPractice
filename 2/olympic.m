clc;clear;
rad = 1.;
cs = 'bkryg'%Not sure the first ring has blue or cyan
centers = [-2.*rad 0 ; 0 0 ; 2.*rad 0 ; -rad,-rad;rad,-rad];
figure
for c = 1: length(centers)
    [x,y] = getCircle(centers(c,:),rad);
    plot(x,y,'color',cs(c),'LineWidth',5);
    hold on;
end
axis equal
