t = 0:.1:10;
y = sin(t);
plot(t,y,'r');
y = sin(t) + sin(2*t)/2;
plot(t,y,'g');
y = sin(t) + sin(2*t)/2+ sin(3*t)/3;
plot(t,y,'c');
y = sin(t) + sin(2*t)/2+ sin(3*t)/3 +sin(4*t)/4;
plot(t,y,'m');
