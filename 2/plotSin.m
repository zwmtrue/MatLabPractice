%function plotSin(f1)
%This function plot a sin wave with frequency f1 on [0,2 pi]range
function plotSin(f1,f2)
 x = linspace(0,2*pi,f1*16+1);
 if nargin == 1
     figure
     plot(x,sin(f1*x),'rs--',...
'LineWidth',2,'MarkerFaceColor','k');
elseif nargin == 2
    y = linspace(0,2*pi,f1*16+1);
    [X,Y] = meshgrid(x,y);
    Z = sin(f1*X)+sin(f2*Y); 
        disp('Two inputs are given')
    subplot(2,1,1);
    imagesc(x,y,Z);
    axis xy;
    colormap hot;
    colorbar
    subplot(2,1,2);
    surf(X,Y,Z);
    
end