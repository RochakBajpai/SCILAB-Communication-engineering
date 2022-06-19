//PULSE CODE MODULATION

clc ;
close ;
clear ;
f =2;
fs =20* f; // Sampling Frequency
t =0:1/ fs :2;
a =2;

msg =a*sin (2.* %pi *f*t);
subplot (3 ,1 ,1);
plot (t,msg)
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' )
title ( 'Message Signal' );


x1=msg+a; // Level shifting to one sides signal
disp (x1 , ' Discrete sampled value of message signal' )
// Display sampled values
quant = round (x1); // Quantization
disp (quant , ' Quantized Sampled Values ' ); // Display Quantized Values
enco = dec2bin ( quant ); // Encoding to binary 



deco = bin2dec ( enco ); // Recovering Analog Message Signal
recover =deco -a;
subplot (3 ,1 ,2);
plot (t, recover )
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' )
title ( ' Recovered Signal ' );
h= gca ();
h. data_bounds =[0 , -3;2 ,3];

subplot (3 ,1 ,3);
plot (t,msg ,t, recover , 'r' );
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' )
title ( ' Recovered Vs Original Signal' );
//h= gca ();
//h. data_bounds =[0 , -3;2 ,3]


