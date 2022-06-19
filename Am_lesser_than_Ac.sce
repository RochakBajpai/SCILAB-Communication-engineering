clear

// Am < Ac;   Am =1,  Ac=2 fm =1; fc =20

t = 0: 0.01:3;
m = 1*cos(2 *%pi *1*t);
subplot(3,1,1)
plot(t,m)
xlabel('time');
ylabel('Amplitude');
title('Message Signal');
c = 2* cos(2 * %pi *20*t);
subplot(3,1,2)
plot(t,c)
xlabel('time');
ylabel('Amplitude');
title('carrier signal');




u = 2*(1+ 0.5*cos(2 *%pi *1*t)).* cos (2*%pi*20*t);
subplot(3,1,3);
plot(t,u)
xlabel('time');
ylabel('Amplitude');
title('Modulated signal with Am < Ac')
