clc;
close all; 
clear all;

f = 3000;
N = 5;
A = 1;
fs = 100000;
ts = 1/fs;
t = 0:ts:N/f;
x = A*cos(2*pi*f*t);
figure;
plot(t,x);
title('continous signal');
xlabel('time index');
ylabel('x(t)')