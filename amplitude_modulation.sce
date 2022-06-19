//BasebandFrequency = 10e3;
//CarrierFrequency = 100e3;
//SamplingFrequency = 1e6;
//BufferLength = 200;
//n = 0:(BufferLength - 1);
//BasebandSignal = sin(2*%pi*n / (SamplingFrequency/BasebandFrequency));
//CarrierSignal = sin(2*%pi*n / (SamplingFrequency/CarrierFrequency));
//plot(n, BasebandSignal,'r-.>')
//plot(n, CarrierSignal)

BufferLength = 200;
n = 0:(BufferLength - 1);

t =0:0.01:3;
m =1*cos(2*%pi*1*t);  // message signal
c =2*cos(2*%pi*10*t);// carrier signal
u =(2*(1+0.5*(cos(2*%pi*1*t)))).*cos(2*%pi*10*t);
subplot(3,1,1)
plot(t,m);
xlabel('TIME');
ylabel('AMPLITUDE')
title('Message Signal');
subplot(3,1,2)
plot(t,c);
xlabel('TIME');
ylabel('AMPLITUDE')
title('Carrier Signal');
subplot(3,1,3)
plot(t,u);
xlabel('TIME');
ylabel('AMPLITUDE')
title('Modulated Signal');
//plot(t,m,'g-.>')
