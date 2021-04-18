
UNS1 = fftshift(fft(uns1));
UNS2 = fftshift(fft(uns2)); 

subplot(2,1,1);
plot( 4.1667*f,(UNS1(21875:28125)));
title('Plot of Frequency domain of DSB-FC signal (u_{ns1}(t)) with freq.');
xlabel('f (kHz)');
ylabel('U_{NS1}(f)');


subplot(2,1,2);
plot(4.1667*f,(UNS2(21875:28125))); 
title('Plot of Frequency domain of DSB-SC signal (u_{ns2}(t)) with freq.');
xlabel('f (kHz)');
ylabel('U_{NS2}(f)');
