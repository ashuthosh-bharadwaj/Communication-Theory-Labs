g = 0;
f1 = up.*(2*cos(40*pi*t1+g));
f2 = up.*(-2*sin(40*pi*t1+g));

h1 = zeros(1,10000); 
for k =1:10000
    if(t1(k) < 1.25 && t1(k) >= 1)
        h1(k) = 1;
    end
end

vc = conv(f1,h1);
vs = conv(f2,h1);
 
plot(t1(1:1000),uc(1:1000));
hold on;
plot(t1(1:1000),vc(1:1000));

 title('Plot of vc(t),vs(t) over 10 bits (\theta = 0) ');
 xlabel('t');
 ylabel('uc,vc');
 legend({'y = uc(t)','y = vc(t)'},'Location','northeast');

