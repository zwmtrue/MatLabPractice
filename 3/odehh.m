%ode file for HH problem
function dXdt = odehh(t,X)
n = X(1);
m = X(2);
h = X(3);
V = X(4);


C  =  1 ;
G_K	 =  36 ;
G_Na  =  120; 
G_L  =  0.3 ;
E_K	 = - 72 ;
E_Na  =  55 ;
E_L  = - 49.4 ;

dndt = (1-n)*alphan(V) - n*betan(V);
dmdt = (1-m)*alpham(V) - m*betam(V);
dhdt = (1-h)*alphah(V) - h*betah(V);
dVdt = -1/C *(G_K*n^4*(V-E_K)+G_Na*m^3*h*(V-E_Na)+G_L*(V-E_L));

dXdt = zeros(4,1);

dXdt(1) = dndt;
dXdt(2) = dmdt;
dXdt(3) = dhdt;
dXdt(4) = dVdt;