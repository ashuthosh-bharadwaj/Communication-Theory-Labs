fo = [1 0 0.5];
po = [pi pi/2 pi/4];

for k = 1:3
unp = usc;
unp = unp.*cos(2*pi*(100 + fo(k))*t + (po(k)) );

u_dm = filter(d,o,unp);

subplot(3,1,k);
plot(t,u_dm);
title('Plot of demodulated signal with time');

if k == 3
xlabel('t (ms)');
end

ylabel({sprintf('f_{off} = %0.2f',fo(k)) ; sprintf('phase_{off} = %0.2f', po(k))});
end 


%{
 ylabel(sprintf('f_{offset} = %0.2f , \\theta_{offset} = %0.2f',fo(k),po(k)), 'FontSize', 6,'Interpreter','latex'); 
%}



