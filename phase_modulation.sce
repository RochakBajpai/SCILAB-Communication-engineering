// Phase modulation and it's spectrum
clc ;
clear ;
close ;

fs=300;
t=0:1/fs:2;
p=length(t);
am=4;
fm=2;
// message signal
msg=am*squarewave(2*%pi*fm*t);
figure(1);
subplot(3,1,1);
plot(t,msg);
xlabel('TIME' );
ylabel('AMPLITUDE' )
title('Message Signal');

//carrier signal
ac=3;
fc=23;
carrier=ac*cos(2*%pi*fc*t);
subplot(3,1,2);
plot(t, carrier );
xlabel('TIME' );
ylabel('AMPLITUDE' )
title('Carrier Signal' );

// Phase Modulation Generation
//kf =4;
//mod_index =( kf*am)/fm;
kp=2;
mod_index=kp;
phase_mod = ac* cos((2* %pi*fc*t)+( mod_index .* squarewave(2* %pi *fm*t)));
subplot (3 ,1 ,3);
plot(t, phase_mod );
xlabel( 'Time ' );
ylabel( ' Amplitude ' )
title( ' Phase Modulated Signal' );

// Frqeuncy Spectrum
d=(-p/2:1: p/2 -1) *1/3;
figure (2)

plot (d,abs( fftshift ( fft ( phase_mod )))); 
// FOURIER TRANSFORM OF MODULATED SIGNAL
xlabel ( ' Fr equency ' );
ylabel ( ' Ampl i tude ' );
title ( 'PM Signal Spectrum ' )

















