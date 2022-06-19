// DOUBLE SIDE BAND FULL CARRIER MODULATION AND DEMODULATION...frequency spectrum of modulated signal
clc;
clear;
close;

// Am =1;Ac=2, fm =3; fc =20;Am > Ac

t = 0: 0.01:3;
p = length(t);
m = 1*cos(2 *%pi *3*t);
subplot(2,1,1)
plot(t,m)
xlabel('time');
ylabel('Amplitude');
title('Message Signal');

// Frqeuncy Spectrum
d=(-p/2:1: p/2-1) *1/3; // I n d e x i n g
subplot (2 ,1 ,2);
plot (d,abs( fftshift ( fft ( m )))); // FOURIER TRANSFORM OF MODULATED SIGNAL
xlabel ( 'FREQUENCY' );
ylabel ( 'AMPLITUDE ' )
title ( 'message signal Spectrum ' )


c = 2* cos(2 * %pi *20*t);
figure(2)
subplot(2,1,1)
plot(t,c)
xlabel('time');
ylabel('Amplitude');
title('carrier signal');
// Frqeuncy Spectrum
d=(-p/2:1: p/2-1) *1/3; // I n d e x i n g
subplot (2 ,1 ,2);
plot (d,abs( fftshift ( fft ( c )))); // FOURIER TRANSFORM OF MODULATED SIGNAL
xlabel ( 'FREQUENCY' );
ylabel ( 'AMPLITUDE ' )
title ( 'carrier signal Spectrum ' )

u = 2*(1+ 0.5*cos(2 *%pi *3*t)).* cos (2*%pi*20*t);//element wise multiclation
figure(3)
subplot(2,1,1);
plot(t,u)
xlabel('time');
ylabel('Amplitude');
title('Modulated signal with Am > Ac')



// Frqeuncy Spectrum
d=(-p/2:1: p/2-1) *1/3; // I n d e x i n g

subplot (2 ,1 ,2);
plot (d,abs( fftshift ( fft ( u )))); // FOURIER TRANSFORM OF MODULATED SIGNAL
xlabel ( 'FREQUENCY' );
ylabel ( 'AMPLITUDE ' )
title ( 'AM S i g n a l Spectrum ' )

fm =3;

// Demodulat ion o f AM S i g n a l
demod = u.*c ;
k= abs (fft ( demod ));
filt = [ones(1,4*fm),zeros(1,p - (4*fm))];
out =k.* filt ;
figure(4)
subplot (2 ,1 ,1);
plot (t, ifft ( out ));
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' );
title ( ' Demodulated Message ' )

//// Frqeuncy Spectrum
//d=(-p/2:1: p/2-1) *1/3; // I n d e x i n g
//l=abs( fftshift ( fft (out)));
//subplot (2 ,1 ,2);
//plot (d,abs( fftshift ( fft (out)))); // FOURIER TRANSFORM OF MODULATED SIGNAL
//xlabel ( 'FREQUENCY' );
//ylabel ( 'AMPLITUDE ' )
//title ( 'Spectrum of demodulated signal' )


