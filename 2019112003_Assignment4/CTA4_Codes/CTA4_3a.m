t = 0:0.001:5;
m = sin(2*pi*1*t);
ca = sin(2*pi*10*t);
kf = 0.06;
q = m*(0.001);

for k = 2:(length(t))
    q(k) = q(k) + q(k-1);
end

ufm = sin(2*pi*10*t + 2*pi*kf*q);
        

subplot(3,1,1);
plot(t,m);
title('Plot of message signal m(t) with time');
xlabel('t (10^{-2} s)');
ylabel('m(t)');


subplot(3,1,2);
plot(t,ca); 
title('Plot of carrier signal c_{a}(t) with time');
xlabel('t (10^{-2} s)');
ylabel('c_{a}(t)');


subplot(3,1,3);
plot(t,ufm);
title('Plot of FM signal u_{fm}(t) with time');
xlabel('t (10^{-2} s)');
ylabel('u_{fm}(t)');