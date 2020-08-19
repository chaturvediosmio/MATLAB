clear all;
close all;
clc;

f = 3000;
N_cycles = 5;
A = 1;
Ns = 1024;

Fs= 100000;
Fs1= 10000;
Fs2= 6000;
Fs3= 12000;
Fs4= 4000;
Fs5= 5000;

n=0: 1 :(Fs/f)*N_cycles;
n1=0: 1 :(Fs1/f)*N_cycles;
n2=0: 1 :(Fs2/f)*N_cycles;
n3=0: 1 :(Fs3/f)*N_cycles;
n4=0: 1 :(Fs4/f)*N_cycles;
n5=0: 1 :(Fs5/f)*N_cycles;

x= A*cos(2*pi*( f*n) / Fs );
x1= A*cos(2*pi*( f*n1) / Fs1 );
x2= A*cos(2*pi*( f*n2) / Fs2 );
x3= A*cos(2*pi*( f*n3) / Fs3 );
x4= A*cos(2*pi*( f*n4) / Fs4 );
x5= A*cos(2*pi*( f*n5) / Fs5 );


interval1= 0: 1 :max(n1);
interval2= 0: 1 :max(n2);
interval3= 0: 1 :max(n3);
interval4= 0: 1 :max(n4);
interval5= 0: 1 :max(n5);

interval_1= 0: max(n1)/max(n): max(n1);
interval_2= 0: max(n2)/max(n): max(n2);
interval_3= 0: max(n3)/max(n): max(n3);
interval_4= 0: max(n4)/max(n): max(n4);
interval_5= 0: max(n5)/max(n): max(n5);

% For Nearest interpolation technique
yin1= interp1(interval1,x1,interval_1, 'linear');
yin2= interp1(interval2,x2,interval_2, 'linear');
yin3= interp1(interval3,x3,interval_3, 'linear');
yin4= interp1(interval4,x4,interval_4, 'linear');
yin5= interp1(interval5,x5,interval_5, 'linear');

msen1 = mean((x-yin1).^2);
msen2 = mean((x-yin2).^2);
msen3 = mean((x-yin3).^2);
msen4 = mean((x-yin4).^2);
msen5 = mean((x-yin5).^2);

stem(Fs1, msen1);
title("MSE for  linear interpolation");
xlabel("Frequency");
ylabel("MSE");

hold on;
stem(Fs2, msen2);

hold on;
stem(Fs3, msen3);

hold on;
stem(Fs4, msen4);

hold on;
stem(Fs5, msen5);
