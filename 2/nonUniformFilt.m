function smoothed=nonUniformFilt(x,width)
    %The function take data x(Nx2 or Nx1) and smooth it 
    len = length(x);
    smoothed = x;
    if size(x,2) ==1
        %Nx1 type data, uniformed sampled
        if ~mod(width,2)%odd number have residual 1, yielding true(1)
            disp('Width should be odd! Adding 1 to width');
            %    width = width +1;
        end
        delta = ceil((width - 1)/2);
        for n = 1:len
            if n <= delta%1 2 3 ,,, delta-1
                smoothed(n) = mean(x(1:n+delta));
            elseif n > (len - delta)
                smoothed(n) = mean(x(n-delta:len));
            else
                smoothed(n) = mean(x(n-delta:n+delta));
            end
        end
    else
    %Nonuniformly sampled Nx2
        delta = width/2;
        xmin = x(1,1); xmax = x(len,1);        
        for n = 1:len
            tx = x(n,1); 
            if tx < xmin +delta
                xrange = find(x(:,1) < tx + delta);
            elseif tx > xmax    
                xrange = find(x(:,1) > tx - delta);
            else
                xrange = find((x(:,1) > tx - delta)&(x(:,1) < tx + delta)); 
            end
            sum = 0;
            for it =1: length( xrange)
                sum = sum + x(xrange(it),2);
            end    
            smoothed(n,2) = sum/(length(xrange));
        end    
    end        
end