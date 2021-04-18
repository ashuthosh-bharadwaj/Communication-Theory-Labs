
b = [2 1.25 1 0.666666];

for k = 1:4
a = b(k);
e1 = m + a;
ufc = e1.*cos(2*pi*100*t);
l = fft(ufc);
UFC = fftshift(l);
f = -150:0.0480:150;


subplot(4,1,k);
plot(t,ufc);
hold on;
plot(t,e1,'Linewidth',2);
hold on;
plot(t,-1*e1,'Linewidth',2);

if k == 1
title('Plot of DSB-FC signal, Upper & Lower envelopes with time');
end

if k == 4
xlabel('t (ms)');
end 

ylabel(sprintf('A_{mod} = %0.2f', (1/a)));


% ylabel('u_{fc}(t),e1(t),-e1(t)');
% legend({'u_{fc}(t)','e1(t)','-e1(t)'},'Location','east');

end

%{
title('Plot of AM signal u_{am}(t) with time');
xlabel('t (ms)');
ylabel('u_{am}(t)');


plot(t,e);
hold on;
plot(t,-1*e);
title('Plot of Upper & Lower envelopes with time');

xlabel('t (ms)');
ylabel('e(t),-e(t)');

legend({'e(t)','-e(t)'},'Location','northeast');



2000*(t- 2.5*ones(1,length(t)))
(100/2.45)*(t- 2.5*ones(1,length(t)))
%}


%{
 
subplot(2,1,2);
plot( 4.1667*f,(UFC(21875:28125)));
title('Plot of Frequency domain of DSB-FC signal with freq.');
xlabel('f (kHz)');
ylabel('U_{FC}(f)');
 
%}



