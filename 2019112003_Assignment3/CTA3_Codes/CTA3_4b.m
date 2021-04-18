r = diff(ufm);
[top,down] = envelope(r);
rm = (1/0.0627)*top-10;

subplot(2,1,1);
plot(t(1:(length(t)-1)),r);
title('Plot of rectified FM signal r(t) with time');
xlabel('t (ms)');
ylabel('r(t)');
hold on;
plot(t(1:(length(t)-1)),top);
hold on;
plot(t(1:(length(t)-1)),down);

subplot(2,1,2);
plot(t(1:(length(t)-1)),rm);
title('Plot of recovered signal rm(t) with time');
xlabel('t (ms)');
ylabel('rm(t)');
