f = 100*t;
fl = 100*t(1:(length(t)-1));

subplot(2,2,1);
plot(f,fftshift(fft(m)));
title('Plot of M(f) with frequency');
xlabel('f(kHz)');
ylabel('M(f)');


subplot(2,2,2);
plot(f,fftshift(fft(ufm)));
title('Plot of U_{FM}(f) with frequency');
xlabel('f(kHz)');
ylabel('U_{FM}(f)');

subplot(2,2,3);
plot(fl,fftshift(fft(r)));
title('Plot of R(f) with frequency');
xlabel('f(kHz)');
ylabel('R(f)');

subplot(2,2,4);
plot(fl,fftshift(fft(rm)));
title('Plot of RM(f) with frequency');
xlabel('f(kHz)');
ylabel('RM(f)');