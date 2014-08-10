%Julia Set
function n=escapeVelocity(z0,c,N)
% N is  the  maximum  allowed  escape  velocity 
n = 0; 
while abs(z0)<2 && n < N
    z0 = z0^2 + c;
    n = n + 1;
end