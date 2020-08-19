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
yin1= interp1(interval1,x1,interval_1, 'nearest');
yin2= interp1(interval2,x2,interval_2, 'nearest');
yin3= interp1(interval3,x3,interval_3, 'nearest');
yin4= interp1(interval4,x4,interval_4, 'nearest');
yin5= interp1(interval5,x5,interval_5, 'nearest');

msen1 = mean((x-yin1).^2);
msen2 = mean((x-yin2).^2);
msen3 = mean((x-yin3).^2);
msen4 = mean((x-yin4).^2);
msen5 = mean((x-yin5).^2);

subplot(3,1,1)
stem(Fs1, msen1);
title("MSE for  nearest interpolation");
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

% For Cubic interpolation technique
yic1= interp1(interval1,x1,interval_1,'cubic');
yic2= interp1(interval2,x2,interval_2,'cubic');
yic3= interp1(interval3,x3,interval_3,'cubic');
yic4= interp1(interval4,x4,interval_4,'cubic');
yic5= interp1(interval5,x5,interval_5,'cubic');

msec1 = mean((x-yic1).^2);
msec2 = mean((x-yic2).^2);
msec3 = mean((x-yic3).^2);
msec4 = mean((x-yic4).^2);
msec5 = mean((x-yic5).^2);

subplot(3,1,2)
stem(Fs1, msec1);
title("MSE for  cubic interpolation");
xlabel("Frequency");
ylabel("MSE");
hold on;
stem(Fs2, msec2);

hold on;
stem(Fs3, msec3);

hold on;
stem(Fs4, msec4);

hold on;
stem(Fs5, msec5);

% For Spline interpolation technique
yis1= interp1(interval1,x1,interval_1,'spline');
yis2= interp1(interval2,x2,interval_2,'spline');
yis3= interp1(interval3,x3,interval_3,'spline');
yis4= interp1(interval4,x4,interval_4,'spline');
yis5= interp1(interval5,x5,interval_5,'spline');

mses1 = mean((x-yis1).^2);
mses2 = mean((x-yis2).^2);
mses3 = mean((x-yis3).^2);
mses4 = mean((x-yis4).^2);
mses5 = mean((x-yis5).^2);

subplot(3,1,3)
stem(Fs1, mses1);
title("MSE for  spline interpolation");
xlabel("Frequency");
ylabel("MSE");

hold on;
stem(Fs2, mses2);

hold on;
stem(Fs3, mses3);

hold on;
stem(Fs4, mses4);

hold on;
stem(Fs5, mses5);