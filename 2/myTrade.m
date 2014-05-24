clc;
clear;
% 13 times of return rate
load googlePrices.mat
initialInvestment = randi(100000);
weeks = length(price);
cash = zeros(weeks,1);
numStocks = zeros(weeks,1);
cost = 12.95;
cash(1) = initialInvestment;
volume = floor((cash(1)-cost)/price(1));
inlows = 1; inpeaks = 1;
lowslen  = length(lows);
peakslen = length(peaks);
boughtPrice = price(1);
soldPrice = 0;
scale = floor(log(double(initialInvestment)/1000.));
buy = lows;%zeros(lowslen,1);
sell = zeros(peakslen,1);
for k = 2:weeks
    numStocks(k) = numStocks(k-1);
    cash(k) = cash(k-1);
    knowledge = price(1:k);
    maxpect =  max(knowledge)-min(knowledge);
    stockValue = mean(knowledge);
    %{
    Stragety is to buy whenever possible
    if inlows < lowslen
        if lows(inlows) == k
            margin = stockValue - price(k);
            %Assume stock can sell as our last deal
            % if margin > 0%.618*maxpect
            %buy in at all lows
            buy(inlows) = k;
            
            boughtPrice = price(k);
            % end
            inlows = inlows + 1;
        end
    end
    %}
    if inpeaks < peakslen
        if peaks(inpeaks) ==k;            
            margin = price(k) - stockValue;
            if margin > 0.5*maxpect
                sell(inpeaks) = k;
                
                soldPrice = price(k);
            end
            inpeaks = inpeaks + 1;
        end
    end
end
    sell(sell == 0 ) =[];
    buy(buy == 1) = [];   
   % for j = 1:length(invest)
    endValue = tradeStock(initialInvestment, price, buy, sell);
    %{
    cs  = [cs c];
    ns = [ns n];
    endValue = [endValue e];
    end




profit = endValue - invest;

figure
loglog(1:length(invest),invest,'g',1:length(invest),endValue,'b',1:length(invest),profit,'r')
legend('Investment','End Value','profit');
figure
returnRate = endValue./invest;
profitRate = profit./invest;
semilogx(invest,returnRate,'b',invest,profitRate,'r')
legend('Return Rate','Profit Rate')
ylim([0,2]);
figure
returnTrend = diff(returnRate)./diff(invest);
semilogy(invest(2:end),returnTrend)
    %}