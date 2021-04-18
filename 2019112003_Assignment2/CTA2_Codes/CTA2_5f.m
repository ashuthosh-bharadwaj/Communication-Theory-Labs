re =  t - floor(t);
e2 = re + 2;
uns1 = e2.*cos(2*pi*100*t);
uns2 = 2*re.*cos(2*pi*100*t);


subplot(2,1,1);
plot(t,re);
title('Plot of sawtooth message signal re(t) with time');
xlabel('t (ms)');
ylabel('re(t)');

subplot(2,1,2);
plot(t,uns1);
title('Plot of modulated signal u_{ns1}(t) with time');
xlabel('t (ms)');
ylabel('u_{ns1}(t)');