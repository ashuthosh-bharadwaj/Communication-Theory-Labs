
demod = diff(Oi);
demod =  2.6012e+03*demod;
subplot(2,1,1);
plot(t,m);
title('Plot of message signal m(t) with time');
xlabel('t (10^{-2} s)');
ylabel('m(t)');


subplot(2,1,2);
plot(t(1:5000),demod); 
title('Plot of demodulated signal with time');
xlabel('t (10^{-2} s)');
ylabel('M"(t)');