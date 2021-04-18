up2 = us.*(sin(40*pi*t1));
up = up1 - up2;
plot(t1(1:160),up(1:160));

title('Plot of QPSK up(t) over 4 bits');
xlabel('t');
ylabel('up(t)');
