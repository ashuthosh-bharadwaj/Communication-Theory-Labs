uc = zeros(1,10000);
us = zeros(1,10000);
t = 1:0.1:10.9;
for k = 1:10000
    uc(k) = bc(ceil(k/100));
    us(k) = bs(ceil(k/100));
end

 plot(t(1:80),uc(1:80));

hold on;
stem(t,us(1:100));
title('Plot of uc(t) and us(t) over 10 bits');
xlabel('t');
ylabel('uc,us');
legend({'y = uc(t)','y = us(t)'},'Location','northeast')
