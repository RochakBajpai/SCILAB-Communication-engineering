// PULSE AMPLITUDE MODULATION AND DEMODULATION

clc ;
clear ;
close ;

fs =300
t =0:1/ fs :2;
p= length (t);
fm=3;
fc=25;
am=3;
ac=5;

// Message Signal Generation
msg =am+am* sin (2* %pi*fm*t);
figure (1);
subplot (3 ,1 ,1);
plot (t,msg);
xlabel ( ' time ' );
ylabel ( ' amplitude ' )
title ( 'Message Signal' );

// Carrier Signal generation
carrier =ac+ac* squarewave (2* %pi *fc*t);

subplot (3 ,1 ,2);
plot (t, carrier );
h= gca ();
h. data_bounds =[0 , -1;2 ,3* ac]
xlabel ( ' time ' );
ylabel ( ' amplitude' )
title ( 'Carrier Signal ' );

// Generation of PAM Signal
pam_mod =msg .* carrier ;

subplot (3 ,1 ,3);
plot (t, pam_mod );
xlabel ( ' t ime ' );
ylabel ( ' ampl i tude ' )
title ( ' Pul s e Ampl i tude Modulated S i g n a l ' );

//// Demodulat ion o f PAM S i g n a l
//demod = pam_mod.*carrier ;
//k= abs(fft(demod ));
//filt = [ones(1,601)];//[ones(1,(3* fm)), zeros (1,p - 3* fm) ];
//out =k.*filt ;
//figure (2)
//subplot (3 ,1 ,1);
//plot (t, ifft ( out ));
//xlabel ( 'TIME' );
//ylabel ( 'AMPLITUDE ' );
//title ( ' Demodulated Message ' )
