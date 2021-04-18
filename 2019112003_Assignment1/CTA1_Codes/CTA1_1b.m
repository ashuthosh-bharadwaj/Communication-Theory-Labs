t1 = 1:0.01:100.99;
up1 = uc.*(cos(40*pi*t1));
plot(t1(1:160),up1(1:160))


title('Plot of Upconverted uc(t) over 4 bits');
xlabel('t');
ylabel('up1');
