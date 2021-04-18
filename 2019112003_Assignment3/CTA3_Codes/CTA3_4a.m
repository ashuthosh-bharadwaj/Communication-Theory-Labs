t = 0:0.001:5;
m = sin(2*pi*1*t);
ca = 10*sin(2*pi*10*t);
kf = 1;
q = m*(0.001);

for k = 2:(length(t))
    q(k) = q(k) + q(k-1);
end

ufm = 10*sin(2*pi*10*t + 2*pi*q);
        

subplot(3,1,1);
plot(t,ufm);
title('Plot of FM signal u_{fm}(t) with time');
xlabel('t (ms)');
ylabel('u_{fm}(t)');

subplot(3,1,2);
plot(t,m);
title('Plot of message signal m(t) with time');
xlabel('t (ms)');
ylabel('m(t)');


subplot(3,1,3);
plot(t,ca); 
title('Plot of carrier signal c_{a}(t) with time');
xlabel('t (ms)');
ylabel('c_{a}(t)');
