g =0.25*pi;
f1 = up.*(2*cos(40*pi*t1+g));
f2 = up.*(-2*sin(40*pi*t1+g));

h1 = zeros(1,10000); 
for k =1:10000
    if(t1(k) < 1.25 && t1(k) >= 1)
        h1(k) = 1;
    end
end
n1 = cos(g*t1); 
n2 = sin(g*t1);
h11 = h1.*n1;
h12 = h1.*n2;

vc = 0.5*(conv(f1,h11) - conv(f2,h12));
vs = 0.5*(conv(f2,h11) + conv(f1,h12));

plot(t1(1:1000),us(1:1000));
hold on;
plot(t1(1:1000),vs(1:1000));

 title('Plot of us(t),vs(t) over 10 bits (\theta = \pi/4) ');
 xlabel('t');
 ylabel('us,vs');
 legend({'y = us(t)','y = vs(t)'},'Location','northeast');
