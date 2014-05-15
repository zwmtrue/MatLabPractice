function loopTest(N)
% loopTest(N) 
%This fucntion loops through integers between 1 and N and test if they are
%divisible by 2 or 3
for i  = 1:N
    m2 = mod(i,2);%nonzero when not dspmsgvistrible
    m3 = mod(i,3);
    stri = num2str(i);
    if m2 && m3
        %not dspmsgvistrible by 2 or 3
        dspmsg = [stri,' is NOT dspmsgvistrible by 2 or 3'];
    elseif m2 && (~m3)
        %dspmsgvistrible by 3
        dspmsg = [stri,' is dspmsgvistrible by 3'];
    elseif m3 && (~m2)
        dspmsg = [stri,' is dspmsgvistrible by 2'];
    else
        dspmsg = [stri, ' is dspmsgvistrible by 2 AND 3'];
    end
    disp(dspmsg)
end
