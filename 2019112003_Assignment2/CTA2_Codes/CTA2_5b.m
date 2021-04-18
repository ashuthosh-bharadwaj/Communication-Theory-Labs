
usc = m.*ca;
l = fft(usc);
USC = fftshift(l);
f = -150:0.0480:150;
e = abs(2*m);


subplot(2,1,1);
plot(t,usc);
hold on;
 
plot(t,e,'Linewidth',2);
hold on;
plot(t,-1*e,'Linewidth',2);
title('Plot of DSB-SC signal, Upper & Lower envelopes with time');
xlabel('t (ms)');
ylabel('u_{sc}(t),e(t),-e(t)');
legend({'u_{sc}(t)','e(t)','-e(t)'},'Location','east');


subplot(2,1,2);
plot( 4.1667*f,(USC(21875:28125)));
title('Plot of Frequency domain of DSB-SC signal with freq.');
xlabel('f (kHz)');
ylabel('U_{SC}(f)');



 




