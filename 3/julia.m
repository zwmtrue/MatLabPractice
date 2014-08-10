%Filled in julia set
function M=julia(zMax,c,N)
[X,Y] = meshgrid(linspace(-zMax,zMax,500));
Z = X + Y.*1i;
M = ones(500,500);
for p = 1:500
    for  q = 1:500
        M(p,q) = escapeVelocity(Z(p,q),c,N);
    end
end
imagesc(atan(0.1*M));
axis xy;
