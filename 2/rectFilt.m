function smoothed=rectFilt(x,width)
    %The function take data x and smooth it by symmetried it
    if ~mod(width,2)%odd number have residual 1, yielding true(1)
        disp('Width should be odd! Adding 1 to width');
    %    width = width +1;
    end
    delta = ceil((width - 1)/2);
    len = length(x)
    for n = 1:len
        n
        if n <= delta%1 2 3 ,,, delta-1
            smoothed(n) = mean(x(1:n+delta));
        elseif n > (len - delta)
            smoothed(n) = mean(x(n-delta:len));
        else
            smoothed(n) = mean(x(n-delta:n+delta));
        end
    end
end