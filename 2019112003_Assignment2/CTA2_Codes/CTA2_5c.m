ufil = usc;
ufil = ufil.*cos(2*pi*100*t);
 
[d,o] = butter(6,0.01);
u_dmod = filter(d,o,ufil);

subplot(2,1,1);
plot(t,m);
title('Plot of message signal m(t) with time');
xlabel('t (ms)');
ylabel('m(t)')

subplot(2,1,2);
plot(t,u_dmod);
title('Plot of demodulated signal with time');
xlabel('t (ms)');
ylabel('u\_dmod(t)'); 



