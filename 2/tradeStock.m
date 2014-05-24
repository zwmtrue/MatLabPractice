function endValue=tradeStock(initialInvestment, price, buy, sell)
weeks = length(price);
cash = zeros(weeks,1);
numStocks = cash;
cost = 12.95;
cash(1) = initialInvestment;%Force buy in 
volume = floor((cash(1) - cost)/price(1));
cash(1) = cash(1) - volume*price(1) - cost;
numStocks(1) = volume;
tosell = 1;
tobuy = 1;
lenthsell = length(sell);
lenthbuy = length(buy);
for k = 2: weeks
    numStocks(k) = numStocks (k-1);
    cash(k) = cash(k-1);
    if (tosell <= lenthsell) &&(sell(tosell) == k) % border check
        volume = numStocks(k-1);
        numStocks(k) = 0;
        cash(k) = cash(k-1) + volume*price(k) - cost;
        tosell = tosell +1;
    elseif (tobuy <= lenthbuy) && (buy(tobuy) == k)
        volume =  floor( (cash(k-1)-cost)/price(k));
        numStocks(k) = numStocks(k-1) + volume;
        cash(k) = cash(k-1) - volume*price(k) - cost;
        tobuy = tobuy + 1;
    end
end
endValue = cash(end) + numStocks(end)*price(end);
end
