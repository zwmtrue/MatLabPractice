 x=-pi:0.1:pi;
 y=-pi:0.1:pi;
 [X,Y]=meshgrid(x,y);
 Z =sin(X).*cos(Y);
 %surf(X,Y,Z)
 surf(x,y,Z);
% shading flat
 shading interp
 colormap(gray)