Oi = zeros(1,length(t));
Oo = zeros(1,length(t));

Oo(1)=0;
Oi = 2*pi*kf*q;

PLLgain = zeros(1,length(t));
VCOout = zeros(1,length(t));


a1 = [1];
b1 = [1 -10 5];

a2 = [1];
b2 = [0 1];


for k = 1:length(t)
    PLLgain(k) = filter(b1,a1,(Oi(k)-Oo(k)));
    VCOout(1:k) = filter(b2,a2,PLLgain(1:k));
    Oo(k) = VCOout(k);
end

subplot(3,1,1);
plot(t,PLLgain); 
title('Plot of PLLGain filtered signal with time');
xlabel('t (10^{-2} s)');
ylabel('PLLGain(t)');


subplot(3,1,2);
plot(t,VCOout);
title('Plot of VCO filtered output with time');
xlabel('t (10^{-2} s)');
ylabel('VCOout(t)');

subplot(3,1,3);
plot(t,Oi);
title('Plot of Phase detector with time');
xlabel('t (10^{-2} s)');
ylabel(' \theta (t)');





