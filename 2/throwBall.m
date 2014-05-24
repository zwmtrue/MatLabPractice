function distance=throwBall(v,theta)
    h = 1.5; %m
    g = 9.8; %m/s^2
    timeVec = linspace(0,11,11000);%Max time 10s
    x = v*cos(theta*pi/180).*timeVec;
    y = h + v*sin(theta*pi/180).*timeVec - g/2.*(timeVec.^2);
    ind = find (y < 0,1);
    distance = x(ind);
    if y(10000) > 0
        disp('The ball does not hit the ground in 10 seconds');
        distance = NaN;
    end
    
end