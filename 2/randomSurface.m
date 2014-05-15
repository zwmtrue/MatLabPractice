%This module creat a random 3D surface and contour of its interploation
 clc;clear;
 Z0 = rand(5);
 [X0,Y0] = meshgrid(1:5);
 %Y0 = meshgrid(1:5);
 [X1,Y1] = meshgrid(1:.1:5);
 Z1 = interp2(X0,Y0,Z0,X1,Y1,'cubic');
 surf(X1,Y1,Z1);
 colormap('hsv');
 colorbar;
 shading interp;
 hold on;
 zmin = min(min(Z1));
 zmax = max(max(Z1));
 zinc = (zmax- zmin)/15 ;
 zlv = zmin:zinc:zmax;
 contour(X1, Y1, Z1,zlv);
 caxis([0,1]);
 hold off; 