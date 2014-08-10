%brownian motion
b = zeros(10000,1);
for  p =2:10000
    key = rand;
    if key>.5
        b(p) = b(p-1) +1;
    else
        b(p) = b(p-1) - 1;
    end
end
bar(0:50:10000,b,'b')