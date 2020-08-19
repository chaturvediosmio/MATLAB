clc;
close all; 
clear all;

f = 3000;
N = 5;
A = 0.5;

fs = 100000;
ts = 1/fs;
t = 0:ts:N/f;
x = A*cos(2*pi*f*t);
subplot(3,2,1)
stem(t,x);
title("for fs=100Khz(Ideal)")
xlabel('time');
ylabel('x(t)')

fs2=10000;
ts2=1/fs2;
t2=0:ts2:N/f;
x2=A*cos(2*pi*f*t2);
subplot(3,2,3)
stem(t2,x2)
title("for fs=10Khz")
xlabel('time');
ylabel('x(t)')

fs3=6000;
ts3=1/fs3;
t3=0:ts3:N/f;
x3=A*cos(2*pi*f*t3);
subplot(3,2,4)
stem(t3,x3)
title("for fs=6Khz")
xlabel('time');
ylabel('x(t)')


fs4=4000;
ts4=1/fs4;
t4=0:ts4:N/f;
x4=A*cos(2*pi*f*t4);
subplot(3,2,6)
stem(t4,x4)
title("for fs=4Khz")
xlabel('time');
ylabel('x(t)')


fs5=12000;
ts5=1/fs5;
t5=0:ts5:N/f;
x5=A*cos(2*pi*f*t5);
subplot(3,2,2)
stem(t5,x5)
title("for fs=12Khz")
xlabel('time');
ylabel('x(t)')


fs6=5000;
ts6=1/fs6;
t6=0:ts6:N/f;
x6=A*cos(2*pi*f*t6);
subplot(3,2,5)
stem(t6,x6)
title("for fs=5Khz")
xlabel('time');