clc;
close all; 
clear all;

f = 3000;
N = 5;
A = 1;
fs = 100000;
ts = 1/fs;
n = 0:1:N*fs/f;
x = A*cos(2*pi*f/fs*n);

stem(x);
title('discrete time sampled signal');
xlabel('no. of samples');
ylabel('x(n)')