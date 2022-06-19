clear

// Am = Ac, fm =1; fc =10

t = 0: 0.01:3;
m = 1*cos(2 *%pi *1*t);
subplot(3,1,1)
plot(t,m)
xlabel('time');
ylabel('Amplitude');
title('Message Signal');
c = 1* cos(2 * %pi *10*t);
subplot(3,1,2)
plot(t,c)
xlabel('time');
ylabel('Amplitude');
title('carrier signal');
u = 1*(1+ 1*cos(2 *%pi *1*t)).* cos (2*%pi*10*t);//element wise multiclation
subplot(3,1,3);
plot(t,u)
xlabel('time');
ylabel('Amplitude');
title('Modulated signal with Am = Ac')

// Am > Ac    Am =10,  Ac= 1

u = 1*(1+ 10*cos(2 *%pi *1*t)).* cos (2*%pi*10*t);
subplot(5,1,4);
plot(t,u)
xlabel('time');
ylabel('Amplitude');
title('Modulated signal with Am > Ac')
