clc
clear

close

am= input ( ' Ent e r the me s sage s i g n a l ampl i tude =' );
fm= input ( ' Ent e r the me s sage s i g n a l f r e q u e n c y =' );
// Highe r Sampl ig Fr equency g i v e s b e t t e r r e c o v e r y o f
// me s sage S i g n a l
fs= input ( ' Ent e r the s ampl ing f r e q u e n c y (50􀀀300) =' );
t =0:1/ fs :1;

msg =am*sin (2.* %pi *fm*t);
p= length ( msg );

subplot (3 ,1 ,1)
plot (t,msg);
title ( 'Mes sage S i g n a l ' );
xlabel ( 'TIME ' );
ylabel ( ' Ampl i tude ' );

delta =(2.* %pi*am*fm)/fs; //To pr e v ent s l o p e o v e r l o a d
//d i s t o r t i o n and Granualar No i s e
disp (delta , 'The St ep S i z e i s ' )


// Gene r a t i on o f De l t a Modulat ion
delta_mod =0
for i=1:p
if msg (i)>delta_mod (i)
d(i)=1;
delta_mod (i +1) = delta_mod (i)+ delta ;
else
d(i)=0;
delta_mod (i +1) = delta_mod (i)-delta ;
end
end

subplot (3 ,1 ,2)
plot2d2 ( delta_mod )

title ( ' De l t a Modulated Output ' );
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' );


// Re cove ry o f Mes sage s i g n a l ( Demodulat ion )
demod =0
for i=1: p
if d(i) ==1;

demod (i +1) = delta_mod (i)+ delta ;
else

demod (i +1) = delta_mod (i)-delta ;
end
end

subplot (3 ,1 ,3)
plot ( demod );
title ( 'RECOVERED MESSAGE SIGNAL ' );
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' );

// Sample I nput s f o r program
// Ent e r the me s sage s i g n a l ampl i tude =2

// Ent e r the me s sage s i g n a l f r e q u e n c y =4

// Ent e r the s ampl ing f r e q u e n c y (50􀀀300) =150


//The St ep S i z e
