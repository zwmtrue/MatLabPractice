%{
 Julia  Set  Animation
%}
function juliaAnimation(zMax,c,N)
temp = linspace(-zMax,zMax,500);
[R,I] = meshgrid(temp);
Z = R + I*i;
M = ones(size(Z))*N;
for k = 1:N
    Z = Z.^2 +c;
    ind = find(abs(Z)>2);
    M(ind)  = k;
    Z(ind) = NaN;
    imagesc(temp,temp,atan(0.1*M));  axis  xy;  drawnow; 
end
