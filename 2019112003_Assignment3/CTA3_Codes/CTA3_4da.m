t  = -0.04:0.00001:0.04;

m = zeros(1,length(t));

for k = 1:length(t)

    if t(k) >= -0.02 && t(k) <= -0.01
        m(k) =  100*t(k) + 2;

    elseif t(k) > -0.01 && t(k) <= 0
        m(k) = -100*t(k);
    
    elseif t(k) > 0 && t(k) <= 0.02
        m(k) = -1*m(length(t)- k);
    end 
end


ca = 10*sin(2*pi*1000*t);
kf = 1;
q = m*(0.001);

for k = 2:(length(t))
    q(k) = q(k) + q(k-1);
end

ufm = 10*sin(2*pi*1000*t + 2*pi*kf*q);
        

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
