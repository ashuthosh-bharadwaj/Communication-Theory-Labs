t = 0:0.0001:5 ;
m = cos(2*pi*2*t);
ca = 2*cos(2*pi*100*t);


subplot(2,1,1);
plot(t,m);
title('Plot of message signal m(t) with time');
xlabel('t (ms)');
ylabel('m(t)');

hold on;

subplot(2,1,2);
plot(t,ca);
title('Plot of Carrier signal c_{a}(t) with time');
xlabel('t (ms)');
ylabel('c_{a}(t)');
