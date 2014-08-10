%5.	 Hodgkin-Huxley model of the neuron.
clc;clear;
n  =  0.5;
m  =  0.5;
h  =  0.5;
V  =  -60 ;
initialValues =[ n m h V];
figure;
for k = 1:10
    [t,ySS] = ode45('odehh',[0 20],initialValues);
    t = linspace(0,20,size(ySS,1));
    initialValues = ySS(end,:);
    initialValues(4) = initialValues(4)+k;
    if max(ySS(:,4)) > 0
        plot(t,ySS(:,4),'r')
    else
         plot(t,ySS(:,4),'k')
    end
    hold on;
end
title('Threshold Behavior');
xlabel('Time(ms)');
ylabel('Transmembrane Voltage (mV) ');

        