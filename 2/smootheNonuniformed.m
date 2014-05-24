function smoothe=nonUniformFilt(x)
    %The function take data x(Nx2 or Nx1) and smooth it 
    width = 
    delta = ceil((width - 1)/2);
    len = length(x)
    for n = 1:len
        if n <= delta%1 2 3 ,,, delta-1
            smootheNonuniformed(n) = mean(x(1:n+delta));
        elseif n > (len - delta)
            smootheNonuniformed(n) = mean(x(n-delta:len));
        else
            smootheNonuniformed(n) = mean(x(n-delta:n+delta));
        end
    end
end